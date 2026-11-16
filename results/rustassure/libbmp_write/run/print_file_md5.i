typedef long unsigned int size_t;
typedef unsigned int __uint32_t;
typedef unsigned long int __uint64_t;
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
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef struct md5_ctx
{
 uint32_t state[4];
 uint64_t bit_len;
 unsigned char buffer[64];
 size_t buffer_len;
} md5_ctx;
static void
md5_final (md5_ctx *ctx, unsigned char digest[16]);
static void
md5_init (md5_ctx *ctx);
static void
md5_update (md5_ctx *ctx, const unsigned char *data, size_t len);
static int
print_file_md5 (const char *filename)
{
 unsigned char digest[16];
 unsigned char buffer[4096];
 md5_ctx ctx;
 FILE *file = fopen (filename, "rb");
 if (file == ((void*)0))
 {
  perror ("fopen");
  return -1;
 }
 md5_init (&ctx);
 for (;;)
 {
  const size_t bytes_read = fread (buffer, 1, sizeof (buffer), file);
  if (bytes_read > 0)
  {
   md5_update (&ctx, buffer, bytes_read);
  }
  if (bytes_read < sizeof (buffer))
  {
   if (ferror (file))
   {
    perror ("fread");
    fclose (file);
    return -1;
   }
   break;
  }
 }
 fclose (file);
 md5_final (&ctx, digest);
 printf ("md5: ");
 for (size_t i = 0; i < sizeof (digest); ++i)
 {
  printf ("%02x", digest[i]);
 }
 printf ("\n");
 return 0;
}
