#ifndef PP_POLYGON_VALIDATION_H
#define PP_POLYGON_VALIDATION_H

#include "b2Polygon.h"
#include <limits.h>

struct PpPolygonValidationResult
{
    int cases;
    int failures;
    unsigned int checksum;
};

static void ppCheckPolygon(PpPolygonValidationResult *result, b2Polygon *polygon,
        bool expected, bool print_errors = false)
{
    bool actual = polygon->IsUsable(print_errors);
    ++result->cases;
    if(actual != expected)
        ++result->failures;
    result->checksum = (result->checksum ^ (unsigned int)actual) * 16777619u;
}

// Shared host and ARM9 cases: no model replaces the compiled dependency API.
static PpPolygonValidationResult ppValidatePolygons(void)
{
    PpPolygonValidationResult result = {0, 0, 2166136261u};
    b2Polygon empty;
    ppCheckPolygon(&result, &empty, false);
    ppCheckPolygon(&result, &empty, false, true);

    float32 x[] = {0, 2, 2, 0};
    float32 y[] = {0, 0, 2, 2};
    for(int count = 1; count < 3; ++count)
    {
        b2Polygon polygon(x, y, count);
        ppCheckPolygon(&result, &polygon, false);
    }

    const int invalid_counts[] = {-1, b2_maxPolygonVertices + 1, INT_MAX};
    for(unsigned int i = 0; i < sizeof(invalid_counts) / sizeof(invalid_counts[0]); ++i)
    {
        b2Polygon polygon;
        polygon.nVertices = invalid_counts[i];
        ppCheckPolygon(&result, &polygon, false);
    }

    b2Polygon square(x, y, 4);
    ppCheckPolygon(&result, &square, true);
    square.GetArea();
    ppCheckPolygon(&result, &square, true);

    float32 triangle_x[] = {0, 2, 0};
    float32 triangle_y[] = {0, 0, 2};
    b2Polygon triangle(triangle_x, triangle_y, 3);
    ppCheckPolygon(&result, &triangle, true);

    float32 clockwise_x[] = {0, 0, 2};
    float32 clockwise_y[] = {0, 2, 0};
    b2Polygon clockwise(clockwise_x, clockwise_y, 3);
    ppCheckPolygon(&result, &clockwise, false);

    float32 line_x[] = {0, 1, 2};
    float32 line_y[] = {0, 0, 0};
    b2Polygon line(line_x, line_y, 3);
    ppCheckPolygon(&result, &line, false);

    float32 duplicate_x[] = {0, 2, 2, 0};
    float32 duplicate_y[] = {0, 0, 0, 2};
    b2Polygon duplicate(duplicate_x, duplicate_y, 4);
    ppCheckPolygon(&result, &duplicate, false);

    float32 crossed_y[] = {0, 2, 0, 2};
    b2Polygon crossed(x, crossed_y, 4);
    ppCheckPolygon(&result, &crossed, false);

    float32 concave_x[] = {0, 2, 1, 2, 0};
    float32 concave_y[] = {0, 0, 1, 2, 2};
    b2Polygon concave(concave_x, concave_y, 5);
    ppCheckPolygon(&result, &concave, false);

    float32 octagon_x[] = {0, 1, 2, 2, 1, 0, -1, -1};
    float32 octagon_y[] = {0, 0, 1, 2, 3, 3, 2, 1};
    b2Polygon octagon(octagon_x, octagon_y, 8);
    ppCheckPolygon(&result, &octagon, true);
    return result;
}

#endif
