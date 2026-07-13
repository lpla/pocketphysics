#include "ulib.h"

UL_IMAGE *ulConvertImageToPalettedAlpha(UL_IMAGE *imgOriginal, u8 *source, int newLocation, int newFormat)			{
	int palSize = 1 << ul_paletteSizes[newFormat];
	int width = imgOriginal->sizeX, height = imgOriginal->sizeY;
	UL_IMAGE *img;
	int i, j;
	u16 *palette, palCount;
	u8 r, g, b, a;

	img = ulCreateImage(width, height, newLocation, newFormat, palSize);
	if (img)			{
		memset(img->texture, 0, (ul_pixelSizes[img->format] * img->sysSizeX * img->sysSizeY) >> 3);
		palette = (u16*)img->palette;
		palette[0] = 0;
		palCount = 1;

		for (j=0;j<height;j++)		{
			for (i=0;i<width;i++)			{
				r = source[(j * width + i) * 4];
				g = source[(j * width + i) * 4 + 1];
				b = source[(j * width + i) * 4 + 2];
				a = source[(j * width + i) * 4 + 3];
				u16 pixel = RGB15(r >> 3, g >> 3, b >> 3);
				int colorNb = ulFindColorInPalette(img->palette, palCount, pixel);

				if (colorNb < 0)			{
					if (palCount < palSize)			{
						palette[palCount] = pixel;
						colorNb = palCount++;
					}
					else
						colorNb = 0;
				}

				u8 *pxDest = (u8*)ulGetImagePixelAddr(img, i, j);
				if (newFormat == UL_PF_PAL5_A3)
					*pxDest = (colorNb & 31) | (a & ~31);
				else if (newFormat == UL_PF_PAL3_A5)
					*pxDest = (colorNb & 7) | (a & ~7);
			}
		}
		ulDeleteImage(imgOriginal);
	}
	return img;
}
