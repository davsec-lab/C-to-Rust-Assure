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
static uint32_t
md5_left_rotate (const uint32_t value, const uint32_t shift);
static void
md5_transform (md5_ctx *ctx, const unsigned char block[64])
{
 static const uint32_t s[64] = {
  7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
  5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
  4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
  6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21
 };
 static const uint32_t k[64] = {
  0xd76aa478u, 0xe8c7b756u, 0x242070dbu, 0xc1bdceeeu,
  0xf57c0fafu, 0x4787c62au, 0xa8304613u, 0xfd469501u,
  0x698098d8u, 0x8b44f7afu, 0xffff5bb1u, 0x895cd7beu,
  0x6b901122u, 0xfd987193u, 0xa679438eu, 0x49b40821u,
  0xf61e2562u, 0xc040b340u, 0x265e5a51u, 0xe9b6c7aau,
  0xd62f105du, 0x02441453u, 0xd8a1e681u, 0xe7d3fbc8u,
  0x21e1cde6u, 0xc33707d6u, 0xf4d50d87u, 0x455a14edu,
  0xa9e3e905u, 0xfcefa3f8u, 0x676f02d9u, 0x8d2a4c8au,
  0xfffa3942u, 0x8771f681u, 0x6d9d6122u, 0xfde5380cu,
  0xa4beea44u, 0x4bdecfa9u, 0xf6bb4b60u, 0xbebfbc70u,
  0x289b7ec6u, 0xeaa127fau, 0xd4ef3085u, 0x04881d05u,
  0xd9d4d039u, 0xe6db99e5u, 0x1fa27cf8u, 0xc4ac5665u,
  0xf4292244u, 0x432aff97u, 0xab9423a7u, 0xfc93a039u,
  0x655b59c3u, 0x8f0ccc92u, 0xffeff47du, 0x85845dd1u,
  0x6fa87e4fu, 0xfe2ce6e0u, 0xa3014314u, 0x4e0811a1u,
  0xf7537e82u, 0xbd3af235u, 0x2ad7d2bbu, 0xeb86d391u
 };
 uint32_t m[16];
 uint32_t a = ctx->state[0];
 uint32_t b = ctx->state[1];
 uint32_t c = ctx->state[2];
 uint32_t d = ctx->state[3];
 for (size_t i = 0; i < 16; ++i)
 {
  const size_t j = i * 4;
  m[i] = (uint32_t) block[j]
         | ((uint32_t) block[j + 1] << 8)
         | ((uint32_t) block[j + 2] << 16)
         | ((uint32_t) block[j + 3] << 24);
 }
 for (size_t i = 0; i < 64; ++i)
 {
  uint32_t f;
  uint32_t g;
  if (i < 16)
  {
   f = (b & c) | (~b & d);
   g = (uint32_t) i;
  }
  else if (i < 32)
  {
   f = (d & b) | (~d & c);
   g = (uint32_t) ((5 * i + 1) % 16);
  }
  else if (i < 48)
  {
   f = b ^ c ^ d;
   g = (uint32_t) ((3 * i + 5) % 16);
  }
  else
  {
   f = c ^ (b | ~d);
   g = (uint32_t) ((7 * i) % 16);
  }
  const uint32_t tmp = d;
  d = c;
  c = b;
  b = b + md5_left_rotate (a + f + k[i] + m[g], s[i]);
  a = tmp;
 }
 ctx->state[0] += a;
 ctx->state[1] += b;
 ctx->state[2] += c;
 ctx->state[3] += d;
}
