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
md5_update (md5_ctx *ctx, const unsigned char *data, size_t len);
static void
md5_final (md5_ctx *ctx, unsigned char digest[16])
{
 static const unsigned char pad = 0x80;
 unsigned char length_bytes[8];
 for (size_t i = 0; i < sizeof (length_bytes); ++i)
 {
  length_bytes[i] = (unsigned char) ((ctx->bit_len >> (8 * i)) & 0xffu);
 }
 md5_update (ctx, &pad, 1);
 while (ctx->buffer_len != 56)
 {
  static const unsigned char zero = 0;
  md5_update (ctx, &zero, 1);
 }
 md5_update (ctx, length_bytes, sizeof (length_bytes));
 for (size_t i = 0; i < 4; ++i)
 {
  digest[i * 4] = (unsigned char) (ctx->state[i] & 0xffu);
  digest[i * 4 + 1] = (unsigned char) ((ctx->state[i] >> 8) & 0xffu);
  digest[i * 4 + 2] = (unsigned char) ((ctx->state[i] >> 16) & 0xffu);
  digest[i * 4 + 3] = (unsigned char) ((ctx->state[i] >> 24) & 0xffu);
 }
}
