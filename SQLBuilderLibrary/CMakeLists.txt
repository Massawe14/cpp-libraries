# SQLBuilderLibrary/CMakeLists.txt
add_library(SQLBuilderLibrary
    src/sql_builder.cpp
)

target_include_directories(SQLBuilderLibrary PUBLIC include)

# Add test executable
add_executable(test_SQLBuilderLibrary tests/main.cpp)
target_link_libraries(test_SQLBuilderLibrary SQLBuilderLibrary)
