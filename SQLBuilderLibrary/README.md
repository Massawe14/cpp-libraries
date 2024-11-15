# C++ SQL Library
## Overview

This C++ SQL Library is a lightweight library designed to streamline SQL query building and provide a simple Object-Relational Mapping (ORM) solution. It enables developers to interact with SQL databases efficiently using chainable methods and intuitive mappings between objects and database records.

## Features
### SQL Builder Module
- Build SQL queries from scratch using a clean, chainable API.
- Supported operations:
    - SELECT
    - FROM
    - WHERE
    - ORDER BY
- Example:
```cpp
SQLBuilder builder;
std::string query = builder.select({"id", "name", "email"})
    .from("users")
    .where("id = 1")
    .orderBy("name", "ASC")
    .build();
std::cout << "Query: " << query << std::endl;
// Output: SELECT id, name, email FROM users WHERE id = 1 ORDER BY name ASC
```

### Lightweight ORM
- Map C++ objects to database records and vice versa.
- Perform database operations:
    - INSERT
    - UPDATE
    - DELETE
- Example:
```cpp
ORM userOrm("users");

User user{"1", "John Doe", "john@example.com"};

std::string insertQuery = userOrm.insert(user);
std::cout << "Insert Query: " << insertQuery << std::endl;
// Output: INSERT INTO users (id, name, email) VALUES ('1', 'John Doe', 'john@example.com');

std::string updateQuery = userOrm.update(user, "id = 1");
std::cout << "Update Query: " << updateQuery << std::endl;
// Output: UPDATE users SET id='1', name='John Doe', email='john@example.com' WHERE id = 1;
```

## Getting Started
### Installation
1. Clone or download the repository.
2. Include sql_library.h and sql_library.cpp in your project.
```bash
cd cpp-libraries/SQLBuilderLibrary
```

### Dependencies
- No external dependencies required.

### Building the Library
Compile your project with the following command:
```bash
g++ -o your_executable your_main.cpp sql_library.cpp -std=c++11
```

## Usage
### SQL Builder Example
```cpp
#include "sql_library.h"
#include <iostream>

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

### ORM Example
```cpp
#include "sql_library.h"
#include <iostream>

class User {
public:
    std::string id;
    std::string name;
    std::string email;

    std::map<std::string, std::string> toMap() const {
        return {{"id", id}, {"name", name}, {"email", email}};
    }

    void setField(const std::string& field, const std::string& value) {
        if (field == "id") id = value;
        else if (field == "name") name = value;
        else if (field == "email") email = value;
    }
};

int main() {
    ORM userOrm("users");

    User user{"1", "Jane Doe", "jane@example.com"};

    std::string insertQuery = userOrm.insert(user);
    std::cout << "Insert Query: " << insertQuery << std::endl;

    return 0;
}
```

## Testing
### Prerequisites
- GCC compiler or any other C++11-compliant compiler.

### Run Tests
1. Save the test file (test_sql_library.cpp) in the same directory.
2. Compile:
```bash
g++ -o test_sql_library test_sql_library.cpp sql_library.cpp -std=c++11
```
3. Run the tests:
```bash
./test_sql_library
```

## Contributing
1. Fork the repository.
2. Create a feature branch: git checkout -b feature/your-feature.
3. Commit your changes: git commit -m 'Add new feature'.
4. Push to the branch: git push origin feature/your-feature.
5. Open a Pull Request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

