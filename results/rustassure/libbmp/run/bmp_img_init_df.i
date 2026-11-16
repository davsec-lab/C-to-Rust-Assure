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
void
bmp_header_init_df (bmp_header *header,
                    const int width,
                    const int height);
void
bmp_img_alloc (bmp_img *img);
void
bmp_img_init_df (bmp_img *img,
                 const int width,
                 const int height)
{
 bmp_header_init_df (&img->img_header, width, height);
 bmp_img_alloc (img);
}
