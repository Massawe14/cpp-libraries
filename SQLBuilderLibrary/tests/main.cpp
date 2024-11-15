#include "sql_builder.h"
#include <iostream>

int main() {
    SQLBuilder builder;
    std::string query = builder.select("*").from("users").where("id = 1").build();
    std::cout << "Generated Query: " << query << std::endl;
    return 0;
}
