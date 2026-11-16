typedef long unsigned int size_t;
typedef unsigned int __uint32_t;
typedef unsigned long int __uint64_t;
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
md5_transform (md5_ctx *ctx, const unsigned char block[64]);
static void
md5_update (md5_ctx *ctx, const unsigned char *data, size_t len)
{
 ctx->bit_len += (uint64_t) len * 8u;
 while (len > 0)
 {
  const size_t space = sizeof (ctx->buffer) - ctx->buffer_len;
  const size_t chunk = len < space ? len : space;
  memcpy (ctx->buffer + ctx->buffer_len, data, chunk);
  ctx->buffer_len += chunk;
  data += chunk;
  len -= chunk;
  if (ctx->buffer_len == sizeof (ctx->buffer))
  {
   md5_transform (ctx, ctx->buffer);
   ctx->buffer_len = 0;
  }
 }
}
