#ifndef PP_TRIG_COMPAT_H
#define PP_TRIG_COMPAT_H

#include <nds/arm9/trig_lut.h>

#ifdef PP_PERF_PROFILE
static const s16 pp_sin_quarter[129] = {
    0, 50, 100, 150, 200, 251, 301, 351, 401, 451, 501, 551,
    601, 650, 700, 749, 799, 848, 897, 946, 995, 1043, 1092, 1140,
    1189, 1237, 1284, 1332, 1379, 1427, 1474, 1520, 1567, 1613, 1659, 1705,
    1751, 1796, 1841, 1886, 1930, 1975, 2018, 2062, 2105, 2148, 2191, 2233,
    2275, 2317, 2358, 2399, 2439, 2480, 2519, 2559, 2598, 2637, 2675, 2713,
    2750, 2787, 2824, 2860, 2896, 2931, 2966, 3000, 3034, 3068, 3101, 3134,
    3166, 3197, 3229, 3259, 3289, 3319, 3348, 3377, 3405, 3433, 3460, 3487,
    3513, 3538, 3563, 3588, 3612, 3635, 3658, 3680, 3702, 3723, 3744, 3764,
    3784, 3803, 3821, 3839, 3856, 3873, 3889, 3904, 3919, 3933, 3947, 3960,
    3973, 3985, 3996, 4007, 4017, 4026, 4035, 4043, 4051, 4058, 4065, 4071,
    4076, 4080, 4084, 4088, 4091, 4093, 4094, 4095, 4096
};

static inline int pp_sin_bin(int idx)
{
    idx &= 511;
    int offset = idx & 127;
    if(idx < 128)
        return pp_sin_quarter[offset];
    if(idx < 256)
        return pp_sin_quarter[128 - offset];
    if(idx < 384)
        return -pp_sin_quarter[offset];
    return -pp_sin_quarter[128 - offset];
}

static inline int pp_cos_bin(int idx)
{
    return pp_sin_bin(idx + 128);
}
#else
static inline int pp_cos_bin(int idx)
{
    return cosLerp((s16)((idx & 511) << 6));
}

static inline int pp_sin_bin(int idx)
{
    return sinLerp((s16)((idx & 511) << 6));
}
#endif

static inline int pp_tan_bin(int idx)
{
    return tanLerp((s16)((idx & 511) << 6));
}

#endif
