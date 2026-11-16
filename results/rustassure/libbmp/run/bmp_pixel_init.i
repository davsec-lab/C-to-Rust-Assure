typedef struct _bmp_pixel
{
 unsigned char blue;
 unsigned char green;
 unsigned char red;
} bmp_pixel;
void
bmp_pixel_init (bmp_pixel *pxl,
                const unsigned char red,
                const unsigned char green,
                const unsigned char blue)
{
 pxl->red = red;
 pxl->green = green;
 pxl->blue = blue;
}
