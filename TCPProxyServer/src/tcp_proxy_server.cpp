#include "tcp_proxy_server.h"
#include <iostream>
#include <cstring>
#include <vector>
#include <thread>
#include <mutex>

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#pragma comment(lib, "ws2_32.lib")
#else
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#endif

TCPProxyServer::TCPProxyServer(int port, int maxConnections, const std::string& logFile)
    : port_(port), maxConnections_(maxConnections), running_(false), logFileName_(logFile) {
    logFile_.open(logFileName_, std::ios::out | std::ios::app);
    if (!logFile_.is_open()) {
        std::cerr << "Error opening log file: " << logFileName_ << std::endl;
    }
}

void TCPProxyServer::start() {
#ifdef _WIN32
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        log("WSAStartup failed.");
        return;
    }
#endif

    // Create server socket
    int serverSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (serverSocket == -1) {
        log("Socket creation failed.");
#ifdef _WIN32
        WSACleanup();
#endif
        return;
    }

    sockaddr_in serverAddr{};
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_addr.s_addr = INADDR_ANY;
    serverAddr.sin_port = htons(port_);

    if (bind(serverSocket, (struct sockaddr*)&serverAddr, sizeof(serverAddr)) < 0) {
        log("Binding failed.");
        closeSocket(serverSocket);
        return;
    }

    if (listen(serverSocket, maxConnections_) < 0) {
        log("Listening failed.");
        closeSocket(serverSocket);
        return;
    }

    log("Server started, waiting for connections...");

    running_ = true;
    distributeConnections(serverSocket);

    // Cleanup
    closeSocket(serverSocket);
#ifdef _WIN32
    WSACleanup();
#endif
}

void TCPProxyServer::stop() {
    running_ = false;
    for (auto& thread : threadPool_) {
        if (thread.joinable()) {
            thread.join();
        }
    }
    log("Server stopped.");
}

bool TCPProxyServer::isRunning() const {
    return running_;
}

void TCPProxyServer::log(const std::string& message) {
    std::lock_guard<std::mutex> lock(logMutex_);
    std::cout << message << std::endl;
    logFile_ << message << std::endl;
}

void TCPProxyServer::distributeConnections(int serverSocket) {
    for (int i = 0; i < 5; ++i) {
        threadPool_.emplace_back([this, serverSocket]() {
            while (running_) {
                sockaddr_in clientAddr{};
                socklen_t clientLen = sizeof(clientAddr);

                int clientSocket = accept(serverSocket, (struct sockaddr*)&clientAddr, &clientLen);
                if (clientSocket >= 0) {
                    log("New connection from " + std::string(inet_ntoa(clientAddr.sin_addr)) +
                        ":" + std::to_string(ntohs(clientAddr.sin_port)));
                    connectionHandler(clientSocket);
                }
            }
        });
    }
}

void TCPProxyServer::connectionHandler(int clientSocket) {
    log("Handling new connection...");

    char buffer[1024];
    int bytesReceived = recv(clientSocket, buffer, sizeof(buffer), 0);
    if (bytesReceived > 0) {
        log("Received data: " + std::string(buffer, bytesReceived));

        // Forward data back to the client (echo for now, modify as needed)
        send(clientSocket, buffer, bytesReceived, 0);
    } else {
        log("Error receiving data or client disconnected.");
    }

    log("Connection handled.");
    closeSocket(clientSocket);
}

void TCPProxyServer::closeSocket(int socket) {
#ifdef _WIN32
    closesocket(socket);
#else
    close(socket);
#endif
}
