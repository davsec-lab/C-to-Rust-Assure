typedef long int __time_t;
typedef long int __syscall_slong_t;
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
const char * csv_strerror(int error);
 const char *csv_errors[] = {"success",
                         "error parsing data while strict checking enabled",
                         "memory exhausted while increasing buffer size",
                         "data size too large",
                         "invalid status code"};
const char *
csv_strerror(int status)
{
if (status >= 4 || status < 0)
return csv_errors[4];
else
return csv_errors[status];
}
