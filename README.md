# CPP Libraries
## Overview

CPP Libraries is a collection of modular and high-performance C++ libraries designed to simplify common programming challenges. The project consists of three distinct libraries:

1. TCP Proxy Server
A robust multithreaded TCP proxy server for handling large-scale connections with efficient logging.
2. Message Fragmenter
A utility for fragmenting and reassembling messages, ensuring data integrity and reliability.
3. SQL Library
A lightweight SQL query builder and ORM for seamless database interaction.

## Libraries Overview
### 1. TCP Proxy Server
A multithreaded TCP proxy server designed to handle 1000 simultaneous connections using a 5-thread pool.

### Key Features:
- Handles up to 1000 concurrent connections.
- Distributes workload across a thread pool for efficient processing.
- Logs connection and activity data to a file.
- Testable with Postman, Perf, or custom tools.

Usage Example:
```cpp
#include "tcp_proxy_server.h"

int main() {
    TCPProxyServer server(8080, 1000); // Port 8080, max 1000 connections
    server.start();
    return 0;
}
```

### 2. Message Fragmenter
A library for managing fragmented messages, ensuring they are reassembled correctly while handling missing or corrupted data.

### Key Features:
- Fragment long messages into smaller chunks.
- Reassemble fragmented chunks into whole messages.
- Callbacks for missing or corrupted chunks.
- Timeout mechanism to handle delays in chunk delivery.

Usage Example:
```cpp
#include "message_fragmenter.h"

int main() {
    MessageFragmenter fragmenter;

    std::vector<std::string> chunks = fragmenter.fragmentMessage("This is a long message.", 10);

    std::string reassembled = fragmenter.reassembleChunks(chunks);
    std::cout << "Reassembled Message: " << reassembled << std::endl;

    return 0;
}
```

### 3. SQL Library
A SQL builder and lightweight ORM to simplify database interactions in C++.

### Key Features:
- Chainable methods for building SQL queries.
- ORM for mapping objects to database tables.
- Supports CRUD operations with minimal code.

Usage Example:
```cpp
#include "sql_library.h"

int main() {
    SQLBuilder builder;
    std::string query = builder.select({"id", "name"})
        .from("users")
        .where("age > 18")
        .orderBy("name", "ASC")
        .build();
    std::cout << "Generated Query: " << query << std::endl;
    return 0;
}
```

## Installation
### Prerequisites:
- A C++11-compliant compiler (e.g., GCC, Clang).
- CMake (optional for build system).

### Installation Steps:
1. Clone the repository:
```bash
git clone https://github.com/your-username/cpp-libraries.git
cd cpp-libraries
```

2. Include the required library's .h and .cpp files in your project.

3. Build the library (if using CMake):
```bash
mkdir build && cd build
cmake ..
make
```

## Folder Structure
```plaintext
cpp-libraries/
│
├── TCPProxyServer/
│   ├── include/
│   │   └── tcp_proxy_server.h
│   ├── src/
│   │   └── tcp_proxy_server.cpp
│   └── tests/
│       └── main.cpp
│
├── MessageFragmenter/
│   ├── include/
│   │   └── message_fragmenter.h
│   ├── src/
│   │   └── message_fragmenter.cpp
│   └── tests/
│       └── main.cpp
│
├── SQLLibrary/
│   ├── include/
│   │   └── sql_builder.h
│   ├── src/
│   │   └── sql_builder.cpp
│   └── tests/
│       └── main.cpp
│
├── README.md
└── LICENSE
```

## Testing
### Running Tests for Each Library:
1. Navigate to the library's folder (e.g., TCPProxyServer/tests).
2. Compile the test file:
```bash
g++ -o test_tcp_proxy_server ../src/tcp_proxy_server.cpp test_tcp_proxy_server.cpp -pthread -std=c++11
```
2. Execute the tests:
```bash
./test_tcp_proxy_server
```

## Contributing
1. Fork the repository.
2. Create a branch for your feature or bugfix:
```bash
git checkout -b feature/your-feature
```
3. Commit your changes:
```bash
git commit -m "Add your message here"
```
4. Push to your branch:
```bash
git push origin feature/your-feature
```
5. git push origin feature/your-feature

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Authors
- Ramadhani J Massawe
