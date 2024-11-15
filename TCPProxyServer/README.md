# TCP Proxy Server

A high-performance TCP Proxy Server written in C++ designed to handle multiple simultaneous connections. The server distributes incoming connections over a 5-thread pool, logs server activity to a file, and forwards data between clients. This server can be tested using tools like Postman, Perf, or a custom utility.

## Features
- Handles 1000 simultaneous connections.
- Distributes connections over a 5-thread pool for efficient concurrency.
- Logs server activity to a log file for debugging and monitoring.
- Supports TCP socket communication (IPv4).
- Cross-platform support for Windows and Linux.

## Requirements
- C++11 or later for compiling.
- Windows: The ws2_32.lib library is required for Winsock support.
- Linux: Standard socket libraries available by default.

## Compilation
### Windows (MinGW/MSYS2)
- Ensure that ws2_32.lib is available in your linker path.
- Compile the source code with the following command:
```bash
g++ -o tcp_proxy_server main.cpp tcp_proxy_server.cpp -lws2_32 -std=c++11
```

### Linux
- Compile the source code with:
```bash
g++ -o tcp_proxy_server main.cpp tcp_proxy_server.cpp -std=c++11
```

## Usage
- Run the server: After compiling, run the server with the following command:
```bash
cd build/TCPProxyServer/./tcp_proxy_server
```
By default, the server listens on port 8080 and can handle up to 1000 simultaneous connections.
- Log File: The server logs its activity to a file called server_log.txt. This file includes details about the server's operations, including connection events.
- Stop the server: The server will keep running until manually stopped. You can stop the server using Ctrl + C.

## Example Server Output:
```text
Server started, waiting for connections...
Handling new connection...
Connection handled.
```

## Testing the Server
You can test the server using various tools:

### 1. Postman (for HTTP requests)
- Open Postman.
- Create a TCP request.
- Connect to localhost:8080 and send data.
- The server will receive and forward the data.

### 2. Perf (Linux performance testing)
Use Perf to benchmark the performance of the server. Example command:

```bash
perf stat -e cycles,instructions,cache-references,cache-misses ./tcp_proxy_server
```

### 3. Custom Client:
You can create a simple custom TCP client to test the server. For example:

```cpp
#include <iostream>
#include <cstring>
#include <sys/socket.h>
#include <arpa/inet.h>

int main() {
    int sock = socket(AF_INET, SOCK_STREAM, 0);
    sockaddr_in serverAddr;
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(8080);
    serverAddr.sin_addr.s_addr = inet_addr("127.0.0.1");

    if (connect(sock, (sockaddr*)&serverAddr, sizeof(serverAddr)) < 0) {
        std::cerr << "Connection failed!" << std::endl;
        return 1;
    }

    char message[] = "Hello, Proxy Server!";
    send(sock, message, strlen(message), 0);

    char buffer[1024];
    recv(sock, buffer, sizeof(buffer), 0);
    std::cout << "Received: " << buffer << std::endl;

    close(sock);
    return 0;
}
```

## Customization
You can modify the server to suit your needs:

1. Change Listening Port: Modify the port_ variable in the TCPProxyServer constructor in tcp_proxy_server.cpp.
2. ncrease Thread Pool Size: Modify the thread pool size in the distributeConnections function to change the number of threads handling connections.

## Installation
1. Clone the repository.
2. Navigate to the TCP Proxy Server directory:
```bash
cd cpp-libraries/TCPProxyServer
```

## License
This project is licensed under the MIT License - see the LICENSE file for details.
