typedef long unsigned int size_t;
size_t
csv_write2 (void *dest, size_t dest_size, const void *src, size_t src_size, unsigned char quote);
size_t
csv_write2 (void *dest, size_t dest_size, const void *src, size_t src_size, unsigned char quote);
size_t
csv_write (void *dest, size_t dest_size, const void *src, size_t src_size)
{
  return csv_write2(dest, dest_size, src, src_size, 0x22);
}
