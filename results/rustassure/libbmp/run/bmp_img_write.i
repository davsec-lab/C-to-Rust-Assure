typedef long unsigned int size_t;
typedef long int __off_t;
typedef long int __off64_t;
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
enum bmp_error
{
 BMP_FILE_NOT_OPENED = -4,
 BMP_HEADER_NOT_INITIALIZED,
 BMP_INVALID_FILE,
 BMP_ERROR,
 BMP_OK = 0
};
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
enum bmp_error
bmp_header_write (const bmp_header *header,
                  FILE *img_file);
enum bmp_error
bmp_img_write (const bmp_img *img,
               const char *filename)
{
 FILE *img_file = fopen (filename, "wb");
 if (img_file == ((void*)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 const enum bmp_error err = bmp_header_write (&img->img_header, img_file);
 if (err != BMP_OK)
 {
  fclose (img_file);
  return err;
 }
 const size_t h = abs (img->img_header.biHeight);
 const size_t offset = (img->img_header.biHeight > 0 ? h - 1 : 0);
 const unsigned char padding[3] = {'\0', '\0', '\0'};
 for (size_t y = 0; y < h; y++)
 {
  fwrite (img->img_pixels[abs (offset - y)], sizeof (bmp_pixel), img->img_header.biWidth, img_file);
  fwrite (padding, sizeof (unsigned char), ((img->img_header.biWidth) % 4), img_file);
 }
 fclose (img_file);
 return BMP_OK;
}
