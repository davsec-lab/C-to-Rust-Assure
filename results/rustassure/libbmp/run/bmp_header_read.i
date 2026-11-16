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
enum bmp_error
bmp_header_read (bmp_header *header,
                 FILE *img_file)
{
 if (img_file == ((void*)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 unsigned short magic;
 if (fread (&magic, sizeof (magic), 1, img_file) != 1 ||
     magic != 19778)
 {
  return BMP_INVALID_FILE;
 }
 if (fread (header, sizeof (bmp_header), 1, img_file) != 1)
 {
  return BMP_ERROR;
 }
 return BMP_OK;
}
