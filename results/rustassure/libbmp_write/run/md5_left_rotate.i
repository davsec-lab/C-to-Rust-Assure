typedef unsigned int __uint32_t;
typedef __uint32_t uint32_t;
static uint32_t
md5_left_rotate (const uint32_t value, const uint32_t shift)
{
 return (value << shift) | (value >> (32 - shift));
}
