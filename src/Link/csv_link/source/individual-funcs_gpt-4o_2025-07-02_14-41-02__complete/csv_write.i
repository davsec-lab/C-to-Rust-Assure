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
size_t csv_write(void *dest, size_t dest_size, const void *src, size_t src_size);
size_t csv_write2(void *dest, size_t dest_size, const void *src, size_t src_size, unsigned char quote);
size_t
csv_write (void *dest, size_t dest_size, const void *src, size_t src_size)
{
return csv_write2(dest, dest_size, src, src_size, 0x22);
}
