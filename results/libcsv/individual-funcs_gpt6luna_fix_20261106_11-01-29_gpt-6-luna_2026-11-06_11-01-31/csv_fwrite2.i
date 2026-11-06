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
csv_fwrite2 (FILE *fp, const void *src, size_t src_size, unsigned char quote)
{
  const unsigned char *csrc = src;
  if (fp == ((void*)0) || src == ((void*)0))
    return 0;
  if (fputc(quote, fp) == (-1))
    return (-1);
  while (src_size) {
    if (*csrc == quote) {
      if (fputc(quote, fp) == (-1))
        return (-1);
    }
    if (fputc(*csrc, fp) == (-1))
      return (-1);
    src_size--;
    csrc++;
  }
  if (fputc(quote, fp) == (-1)) {
    return (-1);
  }
  return 0;
}
