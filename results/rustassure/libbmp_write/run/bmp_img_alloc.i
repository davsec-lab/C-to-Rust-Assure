typedef long unsigned int size_t;
typedef struct _bmp_header
{
 unsigned int bfSize;
 unsigned int bfReserved;
 unsigned int bfOffBits;
 unsigned int biSize;
 int biWidth;
 int biHeight;
 unsigned short biPlanes;
 unsigned short biBitCount;
 unsigned int biCompression;
 unsigned int biSizeImage;
 int biXPelsPerMeter;
 int biYPelsPerMeter;
 unsigned int biClrUsed;
 unsigned int biClrImportant;
} bmp_header;
typedef struct _bmp_pixel
{
 unsigned char blue;
 unsigned char green;
 unsigned char red;
} bmp_pixel;
typedef struct _bmp_img
{
 bmp_header img_header;
 bmp_pixel **img_pixels;
} bmp_img;
void bmp_img_alloc (bmp_img*);
void
bmp_img_alloc (bmp_img *img)
{
 const size_t h = abs (img->img_header.biHeight);
 img->img_pixels = malloc (sizeof (bmp_pixel*) * h);
 for (size_t y = 0; y < h; y++)
 {
  img->img_pixels[y] = malloc (sizeof (bmp_pixel) * img->img_header.biWidth);
 }
}
