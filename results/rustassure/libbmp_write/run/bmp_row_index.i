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
static size_t
bmp_row_index (const bmp_header *header, const size_t y)
{
 const size_t h = abs (header->biHeight);
 return header->biHeight > 0 ? h - 1 - y : y;
}
