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
csv_fini(struct csv_parser *p, void (*cb1)(void *, size_t, void *), void (*cb2)(int c, void *), void *data)
{
  if (p == ((void*)0))
    return -1;
  int quoted = p->quoted;
  int pstate = p->pstate;
  size_t spaces = p->spaces;
  size_t entry_pos = p->entry_pos;
  if ((pstate == 2) && p->quoted && (p->options & 1) && (p->options & 4)) {
    p->status = 1;
    return -1;
  }
  switch (pstate) {
    case 3:
      p->entry_pos -= p->spaces + 1;
      entry_pos = p->entry_pos;
    case 1:
    case 2:
      do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
      do { if (cb2) cb2(-1, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
      break;
    case 0:;
  }
  p->spaces = p->quoted = p->entry_pos = p->status = 0;
  p->pstate = 0;
  return 0;
}
