typedef long unsigned int size_t;
struct csv_parser {
  int pstate;
  int quoted;
  size_t spaces;
  unsigned char * entry_buf;
  size_t entry_pos;
  size_t entry_size;
  int status;
  unsigned char options;
  unsigned char quote_char;
  unsigned char delim_char;
  int (*is_space)(unsigned char);
  int (*is_term)(unsigned char);
  size_t blk_size;
  void *(*malloc_func)(size_t);
  void *(*realloc_func)(void *, size_t);
  void (*free_func)(void *);
};
unsigned char
csv_get_quote(const struct csv_parser *p)
{
  ((void) sizeof ((p && "received null csv_parser") ? 1 : 0),  ({ if (p && "received null csv_parser") ; else __assert_fail ("p && \"received null csv_parser\"", "libcsv.c", 278,  __PRETTY_FUNCTION__); }));
  return p->quote_char;
}
