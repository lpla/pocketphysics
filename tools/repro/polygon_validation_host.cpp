#include "pp_polygon_validation.h"

#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
    if(argc == 2 && strcmp(argv[1], "empty") == 0)
    {
        b2Polygon empty;
        return empty.IsUsable(false) ? 1 : 0;
    }
    if(argc == 2 && strcmp(argv[1], "crossed") == 0)
    {
        float32 x[] = {0, 2, 2, 0};
        float32 y[] = {0, 2, 0, 2};
        b2Polygon crossed(x, y, 4);
        return crossed.IsUsable(false) ? 1 : 0;
    }
    PpPolygonValidationResult result = ppValidatePolygons();
    printf("cases=%d failures=%d checksum=%08x\n", result.cases,
            result.failures, result.checksum);
    return result.failures ? 1 : 0;
}
