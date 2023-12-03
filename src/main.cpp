#include <iostream>
#include <utility>
#include <functional>
#include <string>
#include <list>

using predicate_string = std::pair<std::function<bool ()>, std::string>;

int main(int, char **)
try
{
    __builtin_cpu_init();

    std::list<predicate_string> const CPUs
    {
        { []() -> bool { return __builtin_cpu_is("amd") ? true : false; },             "AMD CPU" },
        { []() -> bool { return __builtin_cpu_is("intel") ? true : false; },           "Intel CPU" },
        { []() -> bool { return __builtin_cpu_is("atom") ? true : false; },            "Intel Atom CPU" },
        { []() -> bool { return __builtin_cpu_is("slm") ? true : false; },             "Intel Silvermont CPU" },
        { []() -> bool { return __builtin_cpu_is("core2") ? true : false; },           "Intel Core 2 CPU" },
        { []() -> bool { return __builtin_cpu_is("corei7") ? true : false; },          "Intel Core i7 CPU" },
        { []() -> bool { return __builtin_cpu_is("nehalem") ? true : false; },         "Intel Core i7 Nehalem CPU" },
        { []() -> bool { return __builtin_cpu_is("westmere") ? true : false; },        "Intel Core i7 Westmere CPU" },
        { []() -> bool { return __builtin_cpu_is("sandybridge") ? true : false; },     "Intel Core i7 Sandy Bridge CPU" },
        { []() -> bool { return __builtin_cpu_is("ivybridge") ? true : false; },       "Intel Core i7 Ivy Bridge CPU" },
        { []() -> bool { return __builtin_cpu_is("haswell") ? true : false; },         "Intel Core i7 Haswell CPU" },
        { []() -> bool { return __builtin_cpu_is("broadwell") ? true : false; },       "Intel Core i7 Broadwell CPU" },
        { []() -> bool { return __builtin_cpu_is("skylake") ? true : false; },         "Intel Core i7 Skylake CPU" },
        { []() -> bool { return __builtin_cpu_is("skylake-avx512") ? true : false; },  "Intel Core i7 Skylake AVX512 CPU" },
        { []() -> bool { return __builtin_cpu_is("cannonlake") ? true : false; },      "Intel Core i7 Cannon Lake CPU" },
        { []() -> bool { return __builtin_cpu_is("icelake-client") ? true : false; },  "Intel Core i7 Ice Lake Client CPU" },
        { []() -> bool { return __builtin_cpu_is("icelake-server") ? true : false; },  "Intel Core i7 Ice Lake Server CPU" },
        { []() -> bool { return __builtin_cpu_is("cascadelake") ? true : false; },     "Intel Core i7 Cascadelake CPU" },
        { []() -> bool { return __builtin_cpu_is("tigerlake") ? true : false; },       "Intel Core i7 Tigerlake CPU" },
        { []() -> bool { return __builtin_cpu_is("cooperlake") ? true : false; },      "Intel Core i7 Cooperlake CPU" },
        { []() -> bool { return __builtin_cpu_is("bonnell") ? true : false; },         "Intel Atom Bonnell CPU" },
        { []() -> bool { return __builtin_cpu_is("silvermont") ? true : false; },      "Intel Atom Silvermont CPU" },
        { []() -> bool { return __builtin_cpu_is("goldmont") ? true : false; },        "Intel Atom Goldmont CPU" },
        { []() -> bool { return __builtin_cpu_is("goldmont-plus") ? true : false; },   "Intel Atom Goldmont Plus CPU" },
        { []() -> bool { return __builtin_cpu_is("tremont") ? true : false; },         "Intel Atom Tremont CPU" },
        { []() -> bool { return __builtin_cpu_is("knl") ? true : false; },             "Intel Knights Landing CPU" },
        { []() -> bool { return __builtin_cpu_is("knm") ? true : false; },             "Intel Knights Mill CPU" },
        { []() -> bool { return __builtin_cpu_is("amdfam10h") ? true : false; },       "AMD Family 10h CPU" },
        { []() -> bool { return __builtin_cpu_is("barcelona") ? true : false; },       "AMD Family 10h Barcelona CPU" },
        { []() -> bool { return __builtin_cpu_is("shanghai") ? true : false; },        "AMD Family 10h Shanghai CPU" },
        { []() -> bool { return __builtin_cpu_is("istanbul") ? true : false; },        "AMD Family 10h Istanbul CPU" },
        { []() -> bool { return __builtin_cpu_is("btver1") ? true : false; },          "AMD Family 14h CPU" },
        { []() -> bool { return __builtin_cpu_is("amdfam15h") ? true : false; },       "AMD Family 15h CPU" },
        { []() -> bool { return __builtin_cpu_is("bdver1") ? true : false; },          "AMD Family 15h Bulldozer version 1" },
        { []() -> bool { return __builtin_cpu_is("bdver2") ? true : false; },          "AMD Family 15h Bulldozer version 2" },
        { []() -> bool { return __builtin_cpu_is("bdver3") ? true : false; },          "AMD Family 15h Bulldozer version 3" },
        { []() -> bool { return __builtin_cpu_is("bdver4") ? true : false; },          "AMD Family 15h Bulldozer version 4" },
        { []() -> bool { return __builtin_cpu_is("btver2") ? true : false; },          "AMD Family 16h CPU" },
        { []() -> bool { return __builtin_cpu_is("amdfam17h") ? true : false; },       "AMD Family 17h CPU" },
        { []() -> bool { return __builtin_cpu_is("znver1") ? true : false; },          "AMD Family 17h Zen version 1" },
        { []() -> bool { return __builtin_cpu_is("znver2") ? true : false; },          "AMD Family 17h Zen version 2" },
        { []() -> bool { return __builtin_cpu_is("amdfam19h") ? true : false; },       "AMD Family 19h CPU" },
        { []() -> bool { return __builtin_cpu_is("znver3") ? true : false; },          "AMD Family 19h Zen version 3" }
    };

    for (auto const &cpu: CPUs)
    {
        auto const &predicate = cpu.first;
        auto const &str = cpu.second;

        if (predicate())
        {
            std::cout << str << std::endl;
        }
    }

    if (__builtin_cpu_supports("cmov"))             std::cout << "CMOV instruction" << std::endl;
    if (__builtin_cpu_supports("mmx"))              std::cout << "MMX instructions" << std::endl;
    if (__builtin_cpu_supports("popcnt"))           std::cout << "POPCNT instruction" << std::endl;
    if (__builtin_cpu_supports("sse"))              std::cout << "SSE instructions" << std::endl;
    if (__builtin_cpu_supports("sse2"))             std::cout << "SSE2 instructions" << std::endl;
    if (__builtin_cpu_supports("sse3"))             std::cout << "SSE3 instructions" << std::endl;
    if (__builtin_cpu_supports("ssse3"))            std::cout << "SSSE3 instructions" << std::endl;
    if (__builtin_cpu_supports("sse4.1"))           std::cout << "SSE4.1 instructions" << std::endl;
    if (__builtin_cpu_supports("sse4.2"))           std::cout << "SSE4.2 instructions" << std::endl;
    if (__builtin_cpu_supports("avx"))              std::cout << "AVX instructions" << std::endl;
    if (__builtin_cpu_supports("avx2"))             std::cout << "AVX2 instructions" << std::endl;
    if (__builtin_cpu_supports("sse4a"))            std::cout << "SSE4A instructions" << std::endl;
    if (__builtin_cpu_supports("fma4"))             std::cout << "FMA4 instructions" << std::endl;
    if (__builtin_cpu_supports("xop"))              std::cout << "XOP instructions" << std::endl;
    if (__builtin_cpu_supports("fma"))              std::cout << "FMA instructions" << std::endl;
    if (__builtin_cpu_supports("avx512f"))          std::cout << "AVX512F instructions" << std::endl;
    if (__builtin_cpu_supports("bmi"))              std::cout << "BMI instructions" << std::endl;
    if (__builtin_cpu_supports("bmi2"))             std::cout << "BMI2 instructions" << std::endl;
    if (__builtin_cpu_supports("aes"))              std::cout << "AES instructions" << std::endl;
    if (__builtin_cpu_supports("pclmul"))           std::cout << "PCLMUL instructions" << std::endl;
    if (__builtin_cpu_supports("avx512vl"))         std::cout << "AVX512VL instructions" << std::endl;
    if (__builtin_cpu_supports("avx512bw"))         std::cout << "AVX512BW instructions" << std::endl;
    if (__builtin_cpu_supports("avx512dq"))         std::cout << "AVX512DQ instructions" << std::endl;
    if (__builtin_cpu_supports("avx512cd"))         std::cout << "AVX512CD instructions" << std::endl;
    if (__builtin_cpu_supports("avx512er"))         std::cout << "AVX512ER instructions" << std::endl;
    if (__builtin_cpu_supports("avx512pf"))         std::cout << "AVX512PF instructions" << std::endl;
    if (__builtin_cpu_supports("avx512vbmi"))       std::cout << "AVX512VBMI instructions" << std::endl;
    if (__builtin_cpu_supports("avx512ifma"))       std::cout << "AVX512IFMA instructions" << std::endl;
    if (__builtin_cpu_supports("avx5124vnniw"))     std::cout << "AVX5124VNNIW instructions" << std::endl;
    if (__builtin_cpu_supports("avx5124fmaps"))     std::cout << "AVX5124FMAPS instructions" << std::endl;
    if (__builtin_cpu_supports("avx512vpopcntdq"))  std::cout << "AVX512VPOPCNTDQ instructions" << std::endl;
    if (__builtin_cpu_supports("avx512vbmi2"))      std::cout << "AVX512VBMI2 instructions" << std::endl;
    if (__builtin_cpu_supports("gfni"))             std::cout << "GFNI instructions" << std::endl;
    if (__builtin_cpu_supports("vpclmulqdq"))       std::cout << "VPCLMULQDQ instructions" << std::endl;
    if (__builtin_cpu_supports("avx512vnni"))       std::cout << "AVX512VNNI instructions" << std::endl;
    if (__builtin_cpu_supports("avx512bitalg"))     std::cout << "AVX512BITALG instructions" << std::endl;

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
