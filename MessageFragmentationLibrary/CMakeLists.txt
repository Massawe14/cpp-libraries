# MessageFragmentationLibrary/CMakeLists.txt
add_library(MessageFragmentationLibrary
    src/message_fragmenter.cpp
)

target_include_directories(MessageFragmentationLibrary PUBLIC include)

# Add test executable
add_executable(test_MessageFragmentationLibrary tests/main.cpp)
target_link_libraries(test_MessageFragmentationLibrary MessageFragmentationLibrary)
