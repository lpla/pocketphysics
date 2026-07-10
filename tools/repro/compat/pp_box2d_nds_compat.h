#ifndef PP_BOX2D_NDS_COMPAT_H
#define PP_BOX2D_NDS_COMPAT_H

// Box2D 2.0.1 names its selected scalar type float32. Keep libnds' unrelated
// typedef out of these translation units while importing the hardware API.
#define float32 LibndsFloat32
#include <nds.h>
#undef float32

#include <nds/arm9/math.h>
#include "pp_trig_compat.h"

#define DIV_CR REG_DIVCNT
#define DIV_NUMERATOR64 REG_DIV_NUMER
#define DIV_DENOMINATOR64 REG_DIV_DENOM
#define DIV_RESULT32 REG_DIV_RESULT_L
#define SQRT_CR REG_SQRTCNT
#define SQRT_PARAM64 REG_SQRT_PARAM
#define SQRT_RESULT32 REG_SQRT_RESULT

#endif
