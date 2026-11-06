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
static int
csv_increase_buffer(struct csv_parser *p)
{
  if (p == ((void*)0)) return 0;
  if (p->realloc_func == ((void*)0)) return 0;
  size_t to_add = p->blk_size;
  void *vp;
  if ( p->entry_size >= (18446744073709551615UL) - to_add )
    to_add = (18446744073709551615UL) - p->entry_size;
  if (!to_add) {
    p->status = 3;
    return -1;
  }
  while ((vp = p->realloc_func(p->entry_buf, p->entry_size + to_add)) == ((void*)0)) {
    to_add /= 2;
    if (!to_add) {
      p->status = 2;
      return -1;
    }
  }
  p->entry_buf = vp;
  p->entry_size += to_add;
  return 0;
}
