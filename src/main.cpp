#include <iostream>
#include <utility>
#include <functional>
#include <string>
#include <list>

#include "CPUs.h"
#include "Features.h"

using predicate_string = std::pair<std::function<bool ()>, std::string>;

int main(int, char **)
try
{
    __builtin_cpu_init();

    std::list<predicate_string> const CPUs = CreateCPUs();

    for (auto const &cpu: CPUs)
    {
        auto const &predicate = cpu.first;
        auto const &str = cpu.second;

        if (predicate())
        {
            std::cout << str << std::endl;
        }
    }

    std::list<predicate_string> const Features = CreateFeatures();

    for (auto const &feature: Features)
    {
        auto const &predicate = feature.first;
        auto const &str = feature.second;

        if (predicate())
        {
            std::cout << str << std::endl;
        }
    }

    return EXIT_SUCCESS;
}
catch (std::exception &exc)
{
    std::cerr << "Exception: " << exc.what() << std::endl;
    return EXIT_FAILURE;
}
catch (...)
{
    std::cerr << "Error: exception" << std::endl;
    return EXIT_FAILURE;
}
