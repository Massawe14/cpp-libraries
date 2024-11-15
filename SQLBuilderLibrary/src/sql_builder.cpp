#include "sql_builder.h"

SQLBuilder& SQLBuilder::select(const std::string &fields) {
    queryStream_ << "SELECT " << fields << " ";
    return *this;
}

SQLBuilder& SQLBuilder::from(const std::string &table) {
    queryStream_ << "FROM " << table << " ";
    return *this;
}

SQLBuilder& SQLBuilder::where(const std::string &condition) {
    queryStream_ << "WHERE " << condition << " ";
    return *this;
}

std::string SQLBuilder::build() const {
    return queryStream_.str();
}
