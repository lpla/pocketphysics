#include "pp_length_validation.h"
#include <stdio.h>
int main()
{
    PPLengthValidation result=ppValidateLengthBoundaries();
    printf("{\"cases\":%u,\"failures\":%u,\"actual_checksum\":\"%08x\",\"reference_checksum\":\"%08x\"}\n",
           result.cases,result.failures,result.actual_checksum,result.reference_checksum);
    return result.failures ? 1 : 0;
}
