#ifndef PP_RUNTIME_MATH_CASES_H
#define PP_RUNTIME_MATH_CASES_H
struct PPRuntimeMathCase { long long numerator, denominator; int quotient; unsigned long long radicand; unsigned root; };
static const PPRuntimeMathCase ppRuntimeMathCases[] = {
    {0, 1, 0, 0, 0},
    {65536, 3, 21845, 1, 1},
    {-65536, 3, -21845, 2, 1},
    {65536, -3, -21845, 65535, 255},
    {1099511640121LL, 65537, 16776960, 65536, 256},
    {-1099511640121LL, 65537, -16776960, 4294967296ULL, 65536},
    {140737488355327LL, 4294967297LL, 32767, 140737488289792ULL, 11863283},
    {140737488355327LL, -4294967297LL, -32767, 18446744073709551615ULL, 4294967295u}
};
#endif
