#ifndef TCP_PROXY_SERVER_H
#define TCP_PROXY_SERVER_H

#include <string>
#include <fstream>
#include <vector>
#include <thread>
#include <mutex>

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#else
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#endif

class TCPProxyServer {
public:
    TCPProxyServer(int port, int maxConnections, const std::string& logFile);
    void start();
    void stop();
    bool isRunning() const;

private:
    void log(const std::string& message);
    void distributeConnections(int serverSocket);
    void connectionHandler(int clientSocket);
    void closeSocket(int socket);  // Declare closeSocket method

    int port_;
    int maxConnections_;
    bool running_;
    std::string logFileName_;
    std::ofstream logFile_;
    std::vector<std::thread> threadPool_;
    std::mutex logMutex_;
};

#endif // TCP_PROXY_SERVER_H
