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
int
csv_init(struct csv_parser *p, unsigned char options)
{
  if (p == ((void*)0))
    return -1;
  p->entry_buf = ((void*)0);
  p->pstate = 0;
  p->quoted = 0;
  p->spaces = 0;
  p->entry_pos = 0;
  p->entry_size = 0;
  p->status = 0;
  p->options = options;
  p->quote_char = 0x22;
  p->delim_char = 0x2c;
  p->is_space = ((void*)0);
  p->is_term = ((void*)0);
  p->blk_size = 128;
  p->malloc_func = ((void*)0);
  p->realloc_func = realloc;
  p->free_func = free;
  return 0;
}
