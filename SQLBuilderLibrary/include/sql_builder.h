#include <string>
#include <sstream>

class SQLBuilder {
public:
    SQLBuilder& select(const std::string &fields);
    SQLBuilder& from(const std::string &table);
    SQLBuilder& where(const std::string &condition);
    std::string build() const;

private:
    std::ostringstream queryStream_;
};
