cmake_minimum_required(VERSION 3.31.0)
project(CPPLibraries VERSION 1.0.0 LANGUAGES CXX)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add each subdirectory
add_subdirectory(MessageFragmentationLibrary)
add_subdirectory(SQLBuilderLibrary)
add_subdirectory(TCPProxyServer)
