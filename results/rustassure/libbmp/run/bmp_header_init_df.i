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
void
bmp_header_init_df (bmp_header *header,
                    const int width,
                    const int height)
{
 header->bfSize = (sizeof (bmp_pixel) * width + ((width) % 4))
                   * abs (height);
 header->bfReserved = 0;
 header->bfOffBits = 54;
 header->biSize = 40;
 header->biWidth = width;
 header->biHeight = height;
 header->biPlanes = 1;
 header->biBitCount = 24;
 header->biCompression = 0;
 header->biSizeImage = 0;
 header->biXPelsPerMeter = 0;
 header->biYPelsPerMeter = 0;
 header->biClrUsed = 0;
 header->biClrImportant = 0;
}
