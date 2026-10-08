#include "toml/toml.hpp"

#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>

static void require(bool condition, const char* message)
{
    if (!condition) throw std::runtime_error(message);
}

static void serialize(const toml::value& root)
{
    std::ostringstream stream;
    stream << root;
    require(!stream.str().empty(), "empty serialized configuration");
}

int main(int argc, char** argv)
{
    try
    {
        require(argc == 2, "expected a configuration seed path");
        auto seeded = toml::parse(argv[1]);
        auto& existing = seeded["3D"]["Soft"]["Threaded"];
        require(existing.is_boolean() && existing.as_boolean(), "missing threaded default");
        serialize(seeded);
        std::cout << "seeded lookup: typed and serializable\n";

        auto sparse = toml::parse_str("[3D]\nRenderer = 0\n");
        // Stop between ResolvePath's missing-key insertion and GetBool's assignment.
        auto& pending = sparse["3D"]["Soft"]["Threaded"];
        require(pending.is_empty(), "missing-key lookup did not produce an empty value");
        bool rejected = false;
        try
        {
            serialize(sparse);
        }
        catch (const toml::serialization_error& error)
        {
            rejected = std::string(error.what()).find("does not have any valid type") != std::string::npos;
            std::cout << "untyped lookup rejection: " << error.what() << '\n';
        }
        require(rejected, "serializer did not reject the staged untyped lookup");
        pending = true;
        serialize(sparse);
        std::cout << "materialized default: serializable\n";
        return 0;
    }
    catch (const std::exception& error)
    {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
