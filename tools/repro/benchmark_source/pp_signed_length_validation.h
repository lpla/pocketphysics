#ifndef PP_SIGNED_LENGTH_VALIDATION_H
#define PP_SIGNED_LENGTH_VALIDATION_H
#include "pp_length_validation.h"

// Four sign combinations per nonnegative pair; axis cases intentionally repeat.
inline PPLengthValidation ppValidateSignedLengthBoundaries()
{
    PPLengthValidation result={0,0,2166136261u,2166136261u};
    for(int sum=6552;sum<=6554;++sum) for(int raw_x=0;raw_x<=sum;++raw_x)
    for(int sx=-1;sx<=1;sx+=2) for(int sy=-1;sy<=1;sy+=2)
    {
        float32 x(float(sx*raw_x)/65536.0f), y(float(sy*(sum-raw_x))/65536.0f);
        b2Vec2 actual(x,y), reference(x,y);
        float32 length=ppReferenceLength(x,y);
        unsigned actual_length=ppLengthBits(actual.Length());
        unsigned reference_length=ppLengthBits(length);
        actual.Normalize();
        if(length>=B2_FLT_EPSILON)
        {
#ifdef NORMALIZE_BY_INVERT_MULTIPLY
            float32 inverse=1.0f/length;
            reference.x*=inverse; reference.y*=inverse;
#else
            reference.x/=length; reference.y/=length;
#endif
        }
        unsigned actual_x=ppLengthBits(actual.x), actual_y=ppLengthBits(actual.y);
        unsigned reference_x=ppLengthBits(reference.x), reference_y=ppLengthBits(reference.y);
        ++result.cases;
        if(actual_length!=reference_length || actual_x!=reference_x || actual_y!=reference_y)
            ++result.failures;
        result.actual_checksum=ppLengthHash(ppLengthHash(ppLengthHash(result.actual_checksum,actual_length),actual_x),actual_y);
        result.reference_checksum=ppLengthHash(ppLengthHash(ppLengthHash(result.reference_checksum,reference_length),reference_x),reference_y);
    }
    return result;
}
#endif
