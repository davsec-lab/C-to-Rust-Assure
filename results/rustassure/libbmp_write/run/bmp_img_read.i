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
enum bmp_error bmp_header_read (bmp_header*,
            FILE*);
void bmp_img_alloc (bmp_img*);
enum bmp_error bmp_img_read (bmp_img*,
            const char*);
enum bmp_error
bmp_header_read (bmp_header *header,
                 FILE *img_file);
void
bmp_img_alloc (bmp_img *img);
static size_t
bmp_row_index (const bmp_header *header, const size_t y);
enum bmp_error
bmp_img_read (bmp_img *img,
              const char *filename)
{
 FILE *img_file = fopen (filename, "rb");
 if (img_file == ((void*)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 const enum bmp_error err = bmp_header_read (&img->img_header, img_file);
 if (err != BMP_OK)
 {
  fclose (img_file);
  return err;
 }
 bmp_img_alloc (img);
 const size_t h = abs (img->img_header.biHeight);
 const size_t padding = ((img->img_header.biWidth) % 4);
 const size_t items = img->img_header.biWidth;
 for (size_t y = 0; y < h; y++)
 {
  if (fread (img->img_pixels[bmp_row_index (&img->img_header, y)], sizeof (bmp_pixel), items, img_file) != items)
  {
   fclose (img_file);
   return BMP_ERROR;
  }
  fseek (img_file, padding, 1);
 }
 fclose (img_file);
 return BMP_OK;
}
