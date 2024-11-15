#include "tcp_proxy_server.h"

int main() {
    TCPProxyServer server(8080, 1000, "server_log.txt");  // Port 8080, max 1000 connections, log to server_log.txt
    server.start();
    return 0;
}
