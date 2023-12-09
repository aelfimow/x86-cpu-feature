#include <utility>
#include <functional>
#include <string>
#include <list>

#include "CPUs.h"

std::list<std::pair<std::function<bool ()>, std::string>> CreateCPUs()
{
    return
    {
        {
            []() -> bool { return __builtin_cpu_is("amd") ? true : false; },
                
            "AMD CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("intel") ? true : false; },
            
            "Intel CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("atom") ? true : false; },
            
            "Intel Atom CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("slm") ? true : false; },
            
            "Intel Silvermont CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("core2") ? true : false; },
            
            "Intel Core 2 CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("corei7") ? true : false; },
            
            "Intel Core i7 CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("nehalem") ? true : false; },
            
            "Intel Core i7 Nehalem CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("westmere") ? true : false; },
            
            "Intel Core i7 Westmere CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("sandybridge") ? true : false; },
            
            "Intel Core i7 Sandy Bridge CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("ivybridge") ? true : false; },
            
            "Intel Core i7 Ivy Bridge CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("haswell") ? true : false; },
            
            "Intel Core i7 Haswell CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("broadwell") ? true : false; },
            
            "Intel Core i7 Broadwell CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("skylake") ? true : false; },
            
            "Intel Core i7 Skylake CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("skylake-avx512") ? true : false; },
            
            "Intel Core i7 Skylake AVX512 CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("cannonlake") ? true : false; },
            
            "Intel Core i7 Cannon Lake CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("icelake-client") ? true : false; },
            
            "Intel Core i7 Ice Lake Client CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("icelake-server") ? true : false; },
            
            "Intel Core i7 Ice Lake Server CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("cascadelake") ? true : false; },
            
            "Intel Core i7 Cascadelake CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("tigerlake") ? true : false; },
            
            "Intel Core i7 Tigerlake CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("cooperlake") ? true : false; },
            
            "Intel Core i7 Cooperlake CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("bonnell") ? true : false; },
            
            "Intel Atom Bonnell CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("silvermont") ? true : false; },
            
            "Intel Atom Silvermont CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("goldmont") ? true : false; },
            
            "Intel Atom Goldmont CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("goldmont-plus") ? true : false; },
            
            "Intel Atom Goldmont Plus CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("tremont") ? true : false; },
            
            "Intel Atom Tremont CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("knl") ? true : false; },
            
            "Intel Knights Landing CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("knm") ? true : false; },
            
            "Intel Knights Mill CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("amdfam10h") ? true : false; },
            
            "AMD Family 10h CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("barcelona") ? true : false; },
            
            "AMD Family 10h Barcelona CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("shanghai") ? true : false; },
            
            "AMD Family 10h Shanghai CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("istanbul") ? true : false; },
            
            "AMD Family 10h Istanbul CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("btver1") ? true : false; },
            
            "AMD Family 14h CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("amdfam15h") ? true : false; },
            
            "AMD Family 15h CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("bdver1") ? true : false; },
            
            "AMD Family 15h Bulldozer version 1"
        },
        {
            []() -> bool { return __builtin_cpu_is("bdver2") ? true : false; },
            
            "AMD Family 15h Bulldozer version 2"
        },
        {
            []() -> bool { return __builtin_cpu_is("bdver3") ? true : false; },
            
            "AMD Family 15h Bulldozer version 3"
        },
        {
            []() -> bool { return __builtin_cpu_is("bdver4") ? true : false; },
            
            "AMD Family 15h Bulldozer version 4"
        },
        {
            []() -> bool { return __builtin_cpu_is("btver2") ? true : false; },
            
            "AMD Family 16h CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("amdfam17h") ? true : false; },
            
            "AMD Family 17h CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("znver1") ? true : false; },
            
            "AMD Family 17h Zen version 1"
        },
        {
            []() -> bool { return __builtin_cpu_is("znver2") ? true : false; },
            
            "AMD Family 17h Zen version 2"
        },
        {
            []() -> bool { return __builtin_cpu_is("amdfam19h") ? true : false; },
            
            "AMD Family 19h CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("znver3") ? true : false; },
            
            "AMD Family 19h Zen version 3"
        }
#if 0
        {
            []() -> bool { return __builtin_cpu_is("lujiazui") ? true : false; }, 
            
            "ZHAOXIN lujiazui CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("yongfeng") ? true : false; },
            
            "ZHAOXIN yongfeng CPU"
        },
        {
            []() -> bool { return __builtin_cpu_is("znver4") ? true : false; },
            
            "AMD Family 19h Zen version 4"
        }
#endif
    };
}
