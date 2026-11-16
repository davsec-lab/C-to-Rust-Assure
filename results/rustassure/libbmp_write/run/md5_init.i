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
md5_init (md5_ctx *ctx)
{
 ctx->state[0] = 0x67452301u;
 ctx->state[1] = 0xefcdab89u;
 ctx->state[2] = 0x98badcfeu;
 ctx->state[3] = 0x10325476u;
 ctx->bit_len = 0;
 ctx->buffer_len = 0;
}
