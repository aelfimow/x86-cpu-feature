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
#if 0
        { []() -> bool { return __builtin_cpu_is("lujiazui") ? true : false; },        "ZHAOXIN lujiazui CPU" }
        { []() -> bool { return __builtin_cpu_is("yongfeng") ? true : false; },        "ZHAOXIN yongfeng CPU" }
        { []() -> bool { return __builtin_cpu_is("znver4") ? true : false; },          "AMD Family 19h Zen version 4" }
#endif
    };

    std::list<predicate_string> const Features
    {
        { []() -> bool { return __builtin_cpu_supports("cmov") ? true : false; },            "CMOV instruction" },
        { []() -> bool { return __builtin_cpu_supports("mmx") ? true : false; },             "MMX instructions" },
        { []() -> bool { return __builtin_cpu_supports("popcnt") ? true : false; },          "POPCNT instruction" },
        { []() -> bool { return __builtin_cpu_supports("sse") ? true : false; },             "SSE instructions" },
        { []() -> bool { return __builtin_cpu_supports("sse2") ? true : false; },            "SSE2 instructions" },
        { []() -> bool { return __builtin_cpu_supports("sse3") ? true : false; },            "SSE3 instructions" },
        { []() -> bool { return __builtin_cpu_supports("ssse3") ? true : false; },           "SSSE3 instructions" },
        { []() -> bool { return __builtin_cpu_supports("sse4.1") ? true : false; },          "SSE4.1 instructions" },
        { []() -> bool { return __builtin_cpu_supports("sse4.2") ? true : false; },          "SSE4.2 instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx") ? true : false; },             "AVX instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx2") ? true : false; },            "AVX2 instructions" },
        { []() -> bool { return __builtin_cpu_supports("sse4a") ? true : false; },           "SSE4A instructions" },
        { []() -> bool { return __builtin_cpu_supports("fma4") ? true : false; },            "FMA4 instructions" },
        { []() -> bool { return __builtin_cpu_supports("xop") ? true : false; },             "XOP instructions" },
        { []() -> bool { return __builtin_cpu_supports("fma") ? true : false; },             "FMA instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512f") ? true : false; },         "AVX512F instructions" },
        { []() -> bool { return __builtin_cpu_supports("bmi") ? true : false; },             "BMI instructions" },
        { []() -> bool { return __builtin_cpu_supports("bmi2") ? true : false; },            "BMI2 instructions" },
        { []() -> bool { return __builtin_cpu_supports("aes") ? true : false; },             "AES instructions" },
        { []() -> bool { return __builtin_cpu_supports("pclmul") ? true : false; },          "PCLMUL instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512vl") ? true : false; },        "AVX512VL instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512bw") ? true : false; },        "AVX512BW instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512dq") ? true : false; },        "AVX512DQ instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512cd") ? true : false; },        "AVX512CD instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512er") ? true : false; },        "AVX512ER instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512pf") ? true : false; },        "AVX512PF instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512vbmi") ? true : false; },      "AVX512VBMI instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512ifma") ? true : false; },      "AVX512IFMA instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx5124vnniw") ? true : false; },    "AVX5124VNNIW instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx5124fmaps") ? true : false; },    "AVX5124FMAPS instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512vpopcntdq") ? true : false; }, "AVX512VPOPCNTDQ instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512vbmi2") ? true : false; },     "AVX512VBMI2 instructions" },
        { []() -> bool { return __builtin_cpu_supports("gfni") ? true : false; },            "GFNI instructions" },
        { []() -> bool { return __builtin_cpu_supports("vpclmulqdq") ? true : false; },      "VPCLMULQDQ instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512vnni") ? true : false; },      "AVX512VNNI instructions" },
        { []() -> bool { return __builtin_cpu_supports("avx512bitalg") ? true : false; },    "AVX512BITALG instructions" },
        {
            []() -> bool { return __builtin_cpu_supports("x86-64") ? true : false; },

            "Baseline x86-64 microarchitecture level (as defined in x86-64 psABI)"
        }
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
