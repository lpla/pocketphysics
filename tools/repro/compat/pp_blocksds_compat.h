#ifndef PP_BLOCKSDS_COMPAT_H
#define PP_BLOCKSDS_COMPAT_H

#ifdef PP_BOX2D_FIXED
#define float32 LibndsFloat32
#endif

#define Keyboard LibndsKeyboard
#include <nds.h>

#include <dirent.h>
#include <limits.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <nds/arm9/console.h>
#include <nds/arm9/math.h>
#include <nds/arm9/sound.h>
#include <nds/arm9/trig_lut.h>
#include <ulib/ulib.h>

#undef Keyboard
#ifdef PP_BOX2D_FIXED
#undef float32
#endif

#ifdef __cplusplus
#include <algorithm>
using std::find;
using std::sort;
#endif

#define DIV_CR REG_DIVCNT
#define DIV_NUMERATOR64 REG_DIV_NUMER
#define DIV_DENOMINATOR64 REG_DIV_DENOM
#define SQRT_CR REG_SQRTCNT
#define SQRT_PARAM64 REG_SQRT_PARAM

#define BG0_CR REG_BG0CNT
#define BG1_CR REG_BG1CNT
#define BG3_CR REG_BG3CNT
#define BG1_X0 REG_BG1HOFS
#define BG1_Y0 REG_BG1VOFS
#define BG3_XDX REG_BG3PA
#define BG3_XDY REG_BG3PB
#define BG3_YDX REG_BG3PC
#define BG3_YDY REG_BG3PD

#define SUB_BG0_CR REG_BG0CNT_SUB
#define SUB_BG2_CR REG_BG2CNT_SUB
#define SUB_BG2_XDX REG_BG2PA_SUB
#define SUB_BG2_XDY REG_BG2PB_SUB
#define SUB_BG2_YDX REG_BG2PC_SUB
#define SUB_BG2_YDY REG_BG2PD_SUB

#define BLEND_CR REG_BLDCNT
#define BLEND_Y REG_BLDY
#define SUB_BLEND_CR REG_BLDCNT_SUB
#define SUB_BLEND_Y REG_BLDY_SUB

#ifndef REG_CAPTURE
#define REG_CAPTURE REG_DISPCAPCNT
#endif

#ifndef iprintf
#define iprintf printf
#endif

#ifndef PATH_MAX
#define PATH_MAX 260
#endif

typedef struct DIR_ITER
{
    DIR *dir;
    char path[PATH_MAX];
} DIR_ITER;

static inline DIR_ITER *diropen(const char *path)
{
    DIR *dir = opendir(path);
    if(!dir)
        return NULL;

    DIR_ITER *iter = (DIR_ITER*)calloc(1, sizeof(DIR_ITER));
    if(!iter)
    {
        closedir(dir);
        return NULL;
    }

    iter->dir = dir;
    strncpy(iter->path, path, sizeof(iter->path) - 1);
    return iter;
}

static inline int dirnext(DIR_ITER *iter, char *filename, struct stat *filestats)
{
    if(!iter || !iter->dir)
        return -1;

    struct dirent *entry = readdir(iter->dir);
    if(!entry)
        return -1;

    strncpy(filename, entry->d_name, 255);
    filename[255] = '\0';

    if(filestats)
    {
        char fullpath[PATH_MAX * 2];
        if(strcmp(iter->path, "/") == 0)
            snprintf(fullpath, sizeof(fullpath), "/%s", filename);
        else
            snprintf(fullpath, sizeof(fullpath), "%s/%s", iter->path, filename);

        if(stat(fullpath, filestats) != 0)
            memset(filestats, 0, sizeof(*filestats));
    }

    return 0;
}

static inline int dirclose(DIR_ITER *iter)
{
    if(!iter)
        return -1;

    int result = iter->dir ? closedir(iter->dir) : 0;
    free(iter);
    return result;
}

#ifndef nds_sqrt64
#define nds_sqrt64(x) sqrt64((uint64_t)(x))
#endif

#ifndef consoleInitDefault
#define consoleInitDefault(map, tiles, palette) \
    consoleInit(NULL, 0, BgType_Text4bpp, BgSize_T_256x256, 4, 0, false, true)
#endif

static inline int pp_cos_bin(int idx)
{
    return cosLerp((s16)((idx & 511) << 6));
}

static inline int pp_sin_bin(int idx)
{
    return sinLerp((s16)((idx & 511) << 6));
}

static inline void ulDrawImageQuad(UL_IMAGE *img,
                                   int x0, int y0,
                                   int x1, int y1,
                                   int x2, int y2,
                                   int x3, int y3)
{
    ulSetTexture(img);
    ulVertexBegin(GL_QUADS);
    ulVertexUVXY(img->offsetX0, img->offsetY0, x0, y0);
    ulVertexUVXY(img->offsetX0, img->offsetY1, x3, y3);
    ulVertexUVXY(img->offsetX1, img->offsetY1, x2, y2);
    ulVertexUVXY(img->offsetX1, img->offsetY0, x1, y1);
    ulVertexEnd();
    ulVertexHandleDepth();
}

#endif
