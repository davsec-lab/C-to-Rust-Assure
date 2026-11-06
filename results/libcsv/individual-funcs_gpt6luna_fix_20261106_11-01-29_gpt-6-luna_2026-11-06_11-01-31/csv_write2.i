typedef long unsigned int size_t;
size_t
csv_write2 (void *dest, size_t dest_size, const void *src, size_t src_size, unsigned char quote);
size_t
csv_write2 (void *dest, size_t dest_size, const void *src, size_t src_size, unsigned char quote)
{
  unsigned char *cdest = dest;
  const unsigned char *csrc = src;
  size_t chars = 0;
  if (src == ((void*)0))
    return 0;
  if (dest == ((void*)0))
    dest_size = 0;
  if (dest_size > 0)
    *cdest++ = quote;
  chars++;
  while (src_size) {
    if (*csrc == quote) {
      if (dest_size > chars)
        *cdest++ = quote;
      if (chars < (18446744073709551615UL)) chars++;
    }
    if (dest_size > chars)
      *cdest++ = *csrc;
    if (chars < (18446744073709551615UL)) chars++;
    src_size--;
    csrc++;
  }
  if (dest_size > chars)
    *cdest = quote;
  if (chars < (18446744073709551615UL)) chars++;
  return chars;
}
