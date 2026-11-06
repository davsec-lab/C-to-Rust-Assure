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
int
csv_fwrite2 (FILE *fp, const void *src, size_t src_size, unsigned char quote);
int
csv_fwrite2 (FILE *fp, const void *src, size_t src_size, unsigned char quote);
int
csv_fwrite (FILE *fp, const void *src, size_t src_size)
{
  return csv_fwrite2(fp, src, src_size, 0x22);
}
