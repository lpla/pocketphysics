#ifndef PP_LENGTH_VALIDATION_H
#define PP_LENGTH_VALIDATION_H
#include "b2Math.h"
#include <string.h>

struct PPLengthValidation { unsigned cases, failures, actual_checksum, reference_checksum; };

// Reference is the original fixed-point implementation with a floating estimate.
inline float32 ppReferenceLength(float32 x, float32 y)
{
    float estimate=b2Abs(x)+b2Abs(y);
    if(estimate==0.0f) return 0.0;
    else if(estimate<0.1) return (1.0/256.0)*ppReferenceLength(x<<8,y<<8);
    else if(estimate<180.0f) return b2Sqrt(x*x+y*y);
    else return 256.0*ppReferenceLength(x>>8,y>>8);
}
inline unsigned ppLengthBits(float32 value)
{
    unsigned bits;
    typedef char ScalarMustBeFourBytes[sizeof(value)==4 ? 1 : -1];
    memcpy(&bits,&value,4); return bits;
}
inline unsigned ppLengthHash(unsigned hash, unsigned value) { return (hash^value)*16777619u; }
inline PPLengthValidation ppValidateLengthBoundaries()
{
    PPLengthValidation result={0,0,2166136261u,2166136261u};
    for(int sum=6552;sum<=6554;++sum) for(int raw_x=0;raw_x<=sum;++raw_x)
    {
        float32 x(float(raw_x)/65536.0f), y(float(sum-raw_x)/65536.0f);
        b2Vec2 actual(x,y), reference(x,y);
        float32 expected_length=ppReferenceLength(x,y);
        unsigned actual_length=ppLengthBits(actual.Length());
        unsigned reference_length=ppLengthBits(expected_length);
        actual.Normalize();
        if(expected_length>=B2_FLT_EPSILON)
        {
#ifdef NORMALIZE_BY_INVERT_MULTIPLY
            float32 inverse=1.0f/expected_length;
            reference.x*=inverse; reference.y*=inverse;
#else
            reference.x/=expected_length; reference.y/=expected_length;
#endif
        }
        unsigned actual_x=ppLengthBits(actual.x), actual_y=ppLengthBits(actual.y);
        unsigned reference_x=ppLengthBits(reference.x), reference_y=ppLengthBits(reference.y);
        ++result.cases;
        if(actual_length!=reference_length || actual_x!=reference_x || actual_y!=reference_y) ++result.failures;
        result.actual_checksum=ppLengthHash(ppLengthHash(ppLengthHash(result.actual_checksum,actual_length),actual_x),actual_y);
        result.reference_checksum=ppLengthHash(ppLengthHash(ppLengthHash(result.reference_checksum,reference_length),reference_x),reference_y);
    }
    return result;
}
#endif
