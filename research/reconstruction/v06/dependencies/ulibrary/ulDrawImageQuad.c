#include <ulib/ulib.h>

void ulDrawImageQuad(UL_IMAGE *img,
                     s16 x0, s16 y0, s16 x1, s16 y1,
                     s16 x2, s16 y2, s16 x3, s16 y3)
{
    ulSetTexture(img);

    GFX_BEGIN = GL_QUADS;

    GFX_COLOR = img->tint1;
    ulVertexUVXY(img->offsetX0, img->offsetY0, x0, y0);

    GFX_COLOR = img->tint3;
    ulVertexUVXY(img->offsetX0, img->offsetY1, x1, y1);

    GFX_COLOR = img->tint4;
    ulVertexUVXY(img->offsetX1, img->offsetY1, x2, y2);

    GFX_COLOR = img->tint2;
    ulVertexUVXY(img->offsetX1, img->offsetY0, x3, y3);

    GFX_END = 0;
    ul_currentDepth += ul_autoDepth;
}
