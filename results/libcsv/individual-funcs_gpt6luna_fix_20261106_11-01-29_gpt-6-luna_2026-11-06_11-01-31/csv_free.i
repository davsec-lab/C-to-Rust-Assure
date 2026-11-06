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
void
csv_free(struct csv_parser *p)
{
  if (p == ((void*)0))
    return;
  if (p->entry_buf && p->free_func)
    p->free_func(p->entry_buf);
  p->entry_buf = ((void*)0);
  p->entry_size = 0;
  return;
}
