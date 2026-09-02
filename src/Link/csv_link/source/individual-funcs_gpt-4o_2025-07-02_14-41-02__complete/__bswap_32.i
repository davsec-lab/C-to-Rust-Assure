typedef unsigned int __uint32_t;
  __uint32_t
__bswap_32 (__uint32_t __bsx)
{
return ((((__bsx) & 0xff000000u) >> 24) | (((__bsx) & 0x00ff0000u) >> 8) | (((__bsx) & 0x0000ff00u) << 8) | (((__bsx) & 0x000000ffu) << 24));
}
