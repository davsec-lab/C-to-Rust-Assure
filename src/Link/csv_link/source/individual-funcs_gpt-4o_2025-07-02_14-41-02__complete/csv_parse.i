extern void __assert_fail (const char *__assertion, const char *__file,
  unsigned int __line, const char *__function)
 __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
typedef long int __time_t;
typedef long int __syscall_slong_t;
typedef long unsigned int size_t;
typedef struct
{
unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
struct timespec
{
__time_t tv_sec;
__syscall_slong_t tv_nsec;
};
typedef long int __fd_mask;
typedef struct
{
__fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
} fd_set;
union pthread_attr_t
{
char __size[56];
long int __align;
};
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
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
size_t csv_parse(struct csv_parser *p, const void *s, size_t len, void (*cb1)(void *, size_t, void *), void (*cb2)(int, void *), void *data);
size_t
csv_parse(struct csv_parser *p, const void *s, size_t len, void (*cb1)(void *, size_t, void *), void (*cb2)(int c, void *), void *data)
{
((void) sizeof ((p && "received null csv_parser") ? 1 : 0),  ({ if (p && "received null csv_parser") ; else __assert_fail ("p && \"received null csv_parser\"", "libcsv.c", 321,  __PRETTY_FUNCTION__); }));
if (s == ((void*)0)) return 0;
unsigned const char *us = s;
unsigned char c;
size_t pos = 0;
unsigned char delim = p->delim_char;
unsigned char quote = p->quote_char;
int (*is_space)(unsigned char) = p->is_space;
int (*is_term)(unsigned char) = p->is_term;
int quoted = p->quoted;
int pstate = p->pstate;
size_t spaces = p->spaces;
size_t entry_pos = p->entry_pos;
if (!p->entry_buf && pos < len) {
if (csv_increase_buffer(p) != 0) {
  p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
  return pos;
}
}
while (pos < len) {
if (entry_pos == ((p->options & 8) ? p->entry_size - 1 : p->entry_size) ) {
  if (csv_increase_buffer(p) != 0) {
    p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
    return pos;
  }
}
c = us[pos++];
switch (pstate) {
  case 0:
  case 1:
    if ((is_space ? is_space(c) : c == 0x20 || c == 0x09) && c!=delim) {
      continue;
    } else if (is_term ? is_term(c) : c == 0x0d || c == 0x0a) {
      if (pstate == 1) {
        do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
        do { if (cb2) cb2(c, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
      } else {
        if (p->options & 2) {
          do { if (cb2) cb2(c, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
        }
      }
      continue;
    } else if (c == delim) {
      do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
      break;
    } else if (c == quote) {
      pstate = 2;
      quoted = 1;
    } else {
      pstate = 2;
      quoted = 0;
      ((p)->entry_buf[entry_pos++] = (c));
    }
    break;
  case 2:
    if (c == quote) {
      if (quoted) {
        ((p)->entry_buf[entry_pos++] = (c));
        pstate = 3;
      } else {
        if (p->options & 1) {
          p->status = 1;
          p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
          return pos-1;
        }
        ((p)->entry_buf[entry_pos++] = (c));
        spaces = 0;
      }
    } else if (c == delim) {
      if (quoted) {
        ((p)->entry_buf[entry_pos++] = (c));
      } else {
        do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
      }
    } else if (is_term ? is_term(c) : c == 0x0d || c == 0x0a) {
      if (!quoted) {
        do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
        do { if (cb2) cb2(c, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
      } else {
        ((p)->entry_buf[entry_pos++] = (c));
      }
    } else if (!quoted && (is_space? is_space(c) : c == 0x20 || c == 0x09)) {
        ((p)->entry_buf[entry_pos++] = (c));
        spaces++;
    } else {
      ((p)->entry_buf[entry_pos++] = (c));
      spaces = 0;
    }
    break;
  case 3:
    if (c == delim) {
      entry_pos -= spaces + 1;
      do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
    } else if (is_term ? is_term(c) : c == 0x0d || c == 0x0a) {
      entry_pos -= spaces + 1;
      do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
      do { if (cb2) cb2(c, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
    } else if (is_space ? is_space(c) : c == 0x20 || c == 0x09) {
      ((p)->entry_buf[entry_pos++] = (c));
      spaces++;
    } else if (c == quote) {
      if (spaces) {
        if (p->options & 1) {
          p->status = 1;
          p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
          return pos-1;
        }
        spaces = 0;
        ((p)->entry_buf[entry_pos++] = (c));
      } else {
        pstate = 2;
      }
    } else {
      if (p->options & 1) {
        p->status = 1;
        p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
        return pos-1;
      }
      pstate = 2;
      spaces = 0;
      ((p)->entry_buf[entry_pos++] = (c));
    }
    break;
 default:
   break;
}
}
p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
return pos;
}
