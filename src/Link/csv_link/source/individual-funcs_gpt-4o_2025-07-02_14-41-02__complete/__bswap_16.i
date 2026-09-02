typedef unsigned short int __uint16_t;
  __uint16_t
__bswap_16 (__uint16_t __bsx)
{
return ((__uint16_t) ((((__bsx) >> 8) & 0xff) | (((__bsx) & 0xff) << 8)));
}
