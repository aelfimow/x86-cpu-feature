#include <utility>
#include <functional>
#include <string>
#include <list>

#include "Features.h"

std::list<std::pair<std::function<bool ()>, std::string>> CreateFeatures()
{
    return
    {
        {
            []() -> bool { return __builtin_cpu_supports("cmov") ? true : false; },
                
            "CMOV instruction"
        },
        {
            []() -> bool { return __builtin_cpu_supports("mmx") ? true : false; },
            
            "MMX instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("popcnt") ? true : false; },
            
            "POPCNT instruction"
        },
        {
            []() -> bool { return __builtin_cpu_supports("sse") ? true : false; },
            
            "SSE instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("sse2") ? true : false; },
            
            "SSE2 instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("sse3") ? true : false; },
            
            "SSE3 instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("ssse3") ? true : false; },
            
            "SSSE3 instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("sse4.1") ? true : false; },
            
            "SSE4.1 instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("sse4.2") ? true : false; },
            
            "SSE4.2 instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx") ? true : false; },
            
            "AVX instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx2") ? true : false; },
            
            "AVX2 instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("sse4a") ? true : false; },
            
            "SSE4A instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("fma4") ? true : false; },
            
            "FMA4 instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("xop") ? true : false; },
            
            "XOP instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("fma") ? true : false; },
            
            "FMA instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512f") ? true : false; },
            
            "AVX512F instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("bmi") ? true : false; },
            
            "BMI instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("bmi2") ? true : false; },
            
            "BMI2 instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("aes") ? true : false; },
            
            "AES instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("pclmul") ? true : false; },
            
            "PCLMUL instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512vl") ? true : false; },
            
            "AVX512VL instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512bw") ? true : false; },
            
            "AVX512BW instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512dq") ? true : false; },
            
            "AVX512DQ instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512cd") ? true : false; },
            
            "AVX512CD instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512er") ? true : false; },
            
            "AVX512ER instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512pf") ? true : false; },
            
            "AVX512PF instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512vbmi") ? true : false; },
            
            "AVX512VBMI instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512ifma") ? true : false; },
            
            "AVX512IFMA instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx5124vnniw") ? true : false; },
            
            "AVX5124VNNIW instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx5124fmaps") ? true : false; },
            
            "AVX5124FMAPS instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512vpopcntdq") ? true : false; },
            
            "AVX512VPOPCNTDQ instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512vbmi2") ? true : false; },
            
            "AVX512VBMI2 instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("gfni") ? true : false; },
            
            "GFNI instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("vpclmulqdq") ? true : false; },
            
            "VPCLMULQDQ instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512vnni") ? true : false; },
            
            "AVX512VNNI instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("avx512bitalg") ? true : false; },
            
            "AVX512BITALG instructions"
        },
        {
            []() -> bool { return __builtin_cpu_supports("x86-64") ? true : false; },

            "Baseline x86-64 microarchitecture level (as defined in x86-64 psABI)"
        },
        {
            []() -> bool { return __builtin_cpu_supports("x86-64-v2") ? true : false; },

            "x86-64-v2 microarchitecture level"
        },
        {
            []() -> bool { return __builtin_cpu_supports("x86-64-v3") ? true : false; },

            "x86-64-v3 microarchitecture level"
        },
        {
            []() -> bool { return __builtin_cpu_supports("x86-64-v4") ? true : false; },

            "x86-64-v4 microarchitecture level"
        }
    };
}
