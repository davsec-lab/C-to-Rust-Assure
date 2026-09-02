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
int csv_get_opts(const struct csv_parser *p);
int
csv_get_opts(const struct csv_parser *p)
{
if (p == ((void*)0))
return -1;
return p->options;
}
