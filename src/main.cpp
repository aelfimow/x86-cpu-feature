#include <iostream>
#include <map>
#include <string>

int main(int, char **)
try
{
    __builtin_cpu_init();

    if (__builtin_cpu_is("amd"))            std::cout << "AMD CPU" << std::endl;
    if (__builtin_cpu_is("intel"))          std::cout << "Intel CPU" << std::endl;
    if (__builtin_cpu_is("atom"))           std::cout << "Intel Atom CPU" << std::endl;
    if (__builtin_cpu_is("slm"))            std::cout << "Intel Silvermont CPU" << std::endl;
    if (__builtin_cpu_is("core2"))          std::cout << "Intel Core 2 CPU" << std::endl;
    if (__builtin_cpu_is("corei7"))         std::cout << "Intel Core i7 CPU" << std::endl;
    if (__builtin_cpu_is("nehalem"))        std::cout << "Intel Core i7 Nehalem CPU" << std::endl;
    if (__builtin_cpu_is("westmere"))       std::cout << "Intel Core i7 Westmere CPU" << std::endl;
    if (__builtin_cpu_is("sandybridge"))    std::cout << "Intel Core i7 Sandy Bridge CPU" << std::endl;
    if (__builtin_cpu_is("ivybridge"))      std::cout << "Intel Core i7 Ivy Bridge CPU" << std::endl;
    if (__builtin_cpu_is("haswell"))        std::cout << "Intel Core i7 Haswell CPU" << std::endl;
    if (__builtin_cpu_is("broadwell"))      std::cout << "Intel Core i7 Broadwell CPU" << std::endl;
    if (__builtin_cpu_is("skylake"))        std::cout << "Intel Core i7 Skylake CPU" << std::endl;
    if (__builtin_cpu_is("skylake-avx512")) std::cout << "Intel Core i7 Skylake AVX512 CPU" << std::endl;
    if (__builtin_cpu_is("cannonlake"))     std::cout << "Intel Core i7 Cannon Lake CPU" << std::endl;
    if (__builtin_cpu_is("icelake-client")) std::cout << "Intel Core i7 Ice Lake Client CPU" << std::endl;
    if (__builtin_cpu_is("icelake-server")) std::cout << "Intel Core i7 Ice Lake Server CPU" << std::endl;
    if (__builtin_cpu_is("cascadelake"))    std::cout << "Intel Core i7 Cascadelake CPU" << std::endl;
    if (__builtin_cpu_is("tigerlake"))      std::cout << "Intel Core i7 Tigerlake CPU" << std::endl;
    if (__builtin_cpu_is("cooperlake"))     std::cout << "Intel Core i7 Cooperlake CPU" << std::endl;
    if (__builtin_cpu_is("bonnell"))        std::cout << "Intel Atom Bonnell CPU" << std::endl;
    if (__builtin_cpu_is("silvermont"))     std::cout << "Intel Atom Silvermont CPU" << std::endl;
    if (__builtin_cpu_is("goldmont"))       std::cout << "Intel Atom Goldmont CPU" << std::endl;
    if (__builtin_cpu_is("goldmont-plus"))  std::cout << "Intel Atom Goldmont Plus CPU" << std::endl;
    if (__builtin_cpu_is("tremont"))        std::cout << "Intel Atom Tremont CPU" << std::endl;
    if (__builtin_cpu_is("knl"))            std::cout << "Intel Knights Landing CPU" << std::endl;
    if (__builtin_cpu_is("knm"))            std::cout << "Intel Knights Mill CPU" << std::endl;
    if (__builtin_cpu_is("amdfam10h"))      std::cout << "AMD Family 10h CPU" << std::endl;
    if (__builtin_cpu_is("barcelona"))      std::cout << "AMD Family 10h Barcelona CPU" << std::endl;
    if (__builtin_cpu_is("shanghai"))       std::cout << "AMD Family 10h Shanghai CPU" << std::endl;
    if (__builtin_cpu_is("istanbul"))       std::cout << "AMD Family 10h Istanbul CPU" << std::endl;
    if (__builtin_cpu_is("btver1"))         std::cout << "AMD Family 14h CPU" << std::endl;
    if (__builtin_cpu_is("amdfam15h"))      std::cout << "AMD Family 15h CPU" << std::endl;
    if (__builtin_cpu_is("bdver1"))         std::cout << "AMD Family 15h Bulldozer version 1" << std::endl;
    if (__builtin_cpu_is("bdver2"))         std::cout << "AMD Family 15h Bulldozer version 2" << std::endl;
    if (__builtin_cpu_is("bdver3"))         std::cout << "AMD Family 15h Bulldozer version 3" << std::endl;
    if (__builtin_cpu_is("bdver4"))         std::cout << "AMD Family 15h Bulldozer version 4" << std::endl;
    if (__builtin_cpu_is("btver2"))         std::cout << "AMD Family 16h CPU" << std::endl;
    if (__builtin_cpu_is("amdfam17h"))      std::cout << "AMD Family 17h CPU" << std::endl;
    if (__builtin_cpu_is("znver1"))         std::cout << "AMD Family 17h Zen version 1" << std::endl;
    if (__builtin_cpu_is("znver2"))         std::cout << "AMD Family 17h Zen version 2" << std::endl;
#if 0
    if (__builtin_cpu_is("amdfam19h"))      std::cout << "AMD Family 19h CPU" << std::endl;
    if (__builtin_cpu_is("znver3"))         std::cout << "AMD Family 19h Zen version 3" << std::endl;
#endif

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
