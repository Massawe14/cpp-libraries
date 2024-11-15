# TCPProxyServer/CMakeLists.txt
add_library(TCPProxyServer
    src/tcp_proxy_server.cpp
)

target_include_directories(TCPProxyServer PUBLIC include)

# Add test executable
add_executable(test_TCPProxyServer tests/main.cpp)
target_link_libraries(test_TCPProxyServer TCPProxyServer)
target_link_libraries(test_TCPProxyServer ws2_32)