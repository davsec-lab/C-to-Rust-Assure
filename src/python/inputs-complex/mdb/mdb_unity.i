typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
typedef struct {
  char *db_name;
  uint16_t key_size_max;
  uint32_t data_size_max;
  uint32_t hash_buckets;
  uint32_t items_max;
} mdb_options_t;
enum {
  MDB_OK = 0,
  MDB_NO_KEY,
  MDB_ERR_CRITICAL,
  MDB_ERR_LOGIC,
  MDB_ERR_FLUSH,
  MDB_ERR_OPEN_FILE,
  MDB_ERR_READ,
  MDB_ERR_WRITE,
  MDB_ERR_ALLOC,
  MDB_ERR_SEEK,
  MDB_ERR_BUFSIZ,
  MDB_ERR_KEY_SIZE,
  MDB_ERR_VALUE_SIZE,
  MDB_ERR_UNIMPLEMENTED = 100
};
typedef struct {
  uint8_t code;
  const char *desc;
} mdb_status_t;
typedef void *mdb_t;
mdb_status_t mdb_open(mdb_t *handle, const char *db_path);
mdb_status_t mdb_create(mdb_t *handle, mdb_options_t options);
void mdb_close(mdb_t handle);
mdb_status_t mdb_read(mdb_t handle, const char *key, char *buf, size_t bufsiz);
mdb_status_t mdb_write(mdb_t handle, const char *key, const char *value);
mdb_status_t mdb_delete(mdb_t handle, const char *key);
mdb_options_t mdb_get_options(mdb_t handle);
size_t mdb_index_size(mdb_t *handle);
size_t mdb_data_size(mdb_t *handle);

typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE
{
  int _flags;
  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2;
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  struct _IO_FILE **_prevchain;
  int _mode;
  char _unused2[15 * sizeof (int) - 5 * sizeof (void *)];
};
typedef __ssize_t cookie_read_function_t (void *__cookie, char *__buf,
                                          size_t __nbytes);
typedef __ssize_t cookie_write_function_t (void *__cookie, const char *__buf,
                                           size_t __nbytes);
typedef int cookie_seek_function_t (void *__cookie, __off64_t *__pos, int __w);
typedef int cookie_close_function_t (void *__cookie);
typedef struct _IO_cookie_io_functions_t
{
  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
typedef __gnuc_va_list va_list;
typedef __off_t off_t;
typedef __ssize_t ssize_t;
typedef __fpos_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ ));
extern int fclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *tmpfile (void)
  __attribute__ ((__malloc__)) ;
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ )) ;
extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ )) ;
extern char *tempnam (const char *__dir, const char *__pfx)
   __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) ;
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__nonnull__ (3)));
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ))
  __attribute__ ((__nonnull__ (1)));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...) __attribute__ ((__nonnull__ (1)));
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nonnull__ (1)));
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0))) ;
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) __attribute__ ((__nonnull__ (1)));
extern int scanf (const char *__restrict __format, ...) ;
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ ));
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") __attribute__ ((__nonnull__ (1)));
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ ));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__nonnull__ (1)));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__nonnull__ (1)));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ ))
     __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getc (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getchar (void);
extern int getc_unlocked (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fputc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putc_unlocked (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int putw (int __w, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
                                                          __attribute__ ((__nonnull__ (3)));
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) __attribute__ ((__nonnull__ (4)));
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) __attribute__ ((__nonnull__ (4)));
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) __attribute__ ((__nonnull__ (3)));
extern int fputs (const char *__restrict __s, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (2)));
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s) __attribute__ ((__nonnull__ (4)));
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
extern int fseek (FILE *__stream, long int __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
extern long int ftell (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern void rewind (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fseeko (FILE *__stream, __off_t __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
extern __off_t ftello (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos)
  __attribute__ ((__nonnull__ (1)));
extern int fsetpos (FILE *__stream, const fpos_t *__pos) __attribute__ ((__nonnull__ (1)));
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void perror (const char *__s) __attribute__ ((__cold__));
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int pclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *popen (const char *__command, const char *__modes)
  __attribute__ ((__malloc__)) ;
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ))
                                     ;
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
typedef struct
  {
    int quot;
    int rem;
  } div_t;
typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ )) ;
extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern char *l64a (long int __n) __attribute__ ((__nothrow__ )) ;
extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __clock_t clock_t;

typedef __clockid_t clockid_t;
typedef __time_t time_t;
typedef __timer_t timer_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{
  return ((__uint16_t) ((((__bsx) >> 8) & 0xff) | (((__bsx) & 0xff) << 8)));
}
static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{
  return ((((__bsx) & 0xff000000u) >> 24) | (((__bsx) & 0x00ff0000u) >> 8) | (((__bsx) & 0x0000ff00u) << 8) | (((__bsx) & 0x000000ffu) << 24));
}
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return ((((__bsx) & 0xff00000000000000ull) >> 56) | (((__bsx) & 0x00ff000000000000ull) >> 40) | (((__bsx) & 0x0000ff0000000000ull) >> 24) | (((__bsx) & 0x000000ff00000000ull) >> 8) | (((__bsx) & 0x00000000ff000000ull) << 8) | (((__bsx) & 0x0000000000ff0000ull) << 24) | (((__bsx) & 0x000000000000ff00ull) << 40) | (((__bsx) & 0x00000000000000ffull) << 56));
}
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}
static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}
static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
typedef __sigset_t sigset_t;
struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};

struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;

typedef union
{
  __extension__ unsigned long long int __value64;
  struct
  {
    unsigned int __low;
    unsigned int __high;
  } __value32;
} __atomic_wide_counter;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;
  unsigned int __nusers;
  int __kind;
  short __spins;
  short __elision;
  __pthread_list_t __list;
};
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;
  int __cur_writer;
  int __shared;
  signed char __rwelision;
  unsigned char __pad1[7];
  unsigned long int __pad2;
  unsigned int __flags;
};
struct __pthread_cond_s
{
  __atomic_wide_counter __wseq;
  __atomic_wide_counter __g1_start;
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;
typedef struct
{
  int __data ;
} __once_flag;
typedef unsigned long int pthread_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
extern long int random (void) __attribute__ ((__nothrow__ ));
extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };
extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));
extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int rand (void) __attribute__ ((__nothrow__ ));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ ));
extern double drand48 (void) __attribute__ ((__nothrow__ ));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int lrand48 (void) __attribute__ ((__nothrow__ ));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int mrand48 (void) __attribute__ ((__nothrow__ ));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ ));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;
  };
extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern __uint32_t arc4random (void)
     __attribute__ ((__nothrow__ )) ;
extern void arc4random_buf (void *__buf, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern __uint32_t arc4random_uniform (__uint32_t __upper_bound)
     __attribute__ ((__nothrow__ )) ;
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__)) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__))
                       ;
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) ;
extern void *alloca (size_t __size) __attribute__ ((__nothrow__ ));
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1)))
                                         ;
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void quick_exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int clearenv (void) __attribute__ ((__nothrow__ ));
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ )) ;
typedef int (*__compar_fn_t) (const void *, const void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
extern int abs (int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;
extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;
extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ ));
extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ ));
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ))
                                      ;
extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ ))
                                    ;
extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) ;
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
    __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int __memcmpeq (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
    __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
struct __locale_struct
{
  struct __locale_data *__locales[13];
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
  const char *__names[13];
};
typedef struct __locale_struct *__locale_t;

typedef __locale_t locale_t;
extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)))
                                           ;
extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strchrnul (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)))
                                         ;
extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)))
                                          ;
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ ));
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int ffsl (long int __l) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));
extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)))
                                                  ;
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strlcpy (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern size_t strlcat (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
typedef int __gwchar_t;
typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ ));
extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ ));
extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));
extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));

extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

typedef uint32_t mdb_size_t;
typedef uint32_t mdb_ptr_t;
enum {
  MDB_PTR_SIZE = sizeof(mdb_ptr_t),
  MDB_DATALEN_SIZE = sizeof(mdb_size_t)
};
typedef struct {
  char *db_name;
  FILE *fp_superblock;
  FILE *fp_index;
  FILE *fp_data;
  mdb_options_t options;
  uint32_t index_record_size;
} mdb_int_t;
typedef struct {
  mdb_ptr_t next_ptr;
  mdb_ptr_t value_ptr;
  mdb_size_t value_size;
  char key[0];
} mdb_index_t;
static mdb_status_t mdb_status(uint8_t code, const char *desc);
static mdb_int_t *mdb_alloc(void);
static void mdb_free(mdb_int_t *db);
static uint32_t mdb_hash(const char *key);
static mdb_status_t mdb_read_bucket(mdb_int_t *db, uint32_t bucket,
                                    mdb_ptr_t *ptr);
static mdb_status_t mdb_read_index(mdb_int_t *db, mdb_ptr_t idxptr,
                                   mdb_index_t *index);
static mdb_status_t mdb_write_bucket(mdb_int_t *db, mdb_ptr_t bucket,
                                     mdb_ptr_t value);
static mdb_status_t mdb_write_index(mdb_int_t *db, mdb_ptr_t idxptr,
                                    const char *keybuf, mdb_ptr_t valptr,
                                    mdb_size_t valsize);
static mdb_status_t mdb_read_data(mdb_int_t *db, mdb_ptr_t valptr,
                                  mdb_size_t valsize, char *valbuf,
                                  mdb_size_t bufsiz);
static mdb_status_t mdb_write_data(mdb_int_t *db, mdb_ptr_t valptr,
                                   const char *valbuf, mdb_size_t valsize);
static mdb_status_t mdb_read_nextptr(mdb_int_t *db, mdb_ptr_t idxptr,
                                     mdb_ptr_t *nextptr);
static mdb_status_t mdb_write_nextptr(mdb_int_t *db, mdb_ptr_t ptr,
                                      mdb_ptr_t nextptr);
static mdb_status_t mdb_stretch_index_file(mdb_int_t *db, mdb_ptr_t *ptr);
static mdb_status_t mdb_index_alloc(mdb_int_t *db, mdb_ptr_t *ptr);
static mdb_status_t mdb_data_alloc(mdb_int_t *db, mdb_size_t valsize,
                                   mdb_ptr_t *ptr);
static mdb_status_t mdb_index_free(mdb_int_t *db, mdb_ptr_t ptr);
static mdb_status_t mdb_data_free(mdb_int_t *db, mdb_ptr_t valptr,
                                  mdb_size_t valsize);
static char pathbuf[4096];
mdb_status_t mdb_open(mdb_t *handle, const char *path) {
  mdb_int_t *db = mdb_alloc();
  if (db == ((void*)0)) {
    return mdb_status(MDB_ERR_ALLOC,
                      "failed allocating memory buffer for database");
  }
  strcpy(pathbuf, path);
  strcat(pathbuf, ".db.super");
  db->fp_superblock = fopen(pathbuf, "r");
  if (db->fp_superblock == ((void*)0)) {
    mdb_free(db);
    return mdb_status(MDB_ERR_OPEN_FILE, "cannot open superblock file as read");
  }
  fscanf(db->fp_superblock, "%s", db->db_name);
  fscanf(db->fp_superblock, "%hu", &(db->options.key_size_max));
  fscanf(db->fp_superblock, "%u", &(db->options.data_size_max));
  fscanf(db->fp_superblock, "%u", &(db->options.hash_buckets));
  fscanf(db->fp_superblock, "%u", &(db->options.items_max));
  db->index_record_size = db->options.key_size_max
                          + MDB_PTR_SIZE * 2
                          + MDB_DATALEN_SIZE;
  if (ferror(db->fp_superblock)) {
    mdb_free(db);
    return mdb_status(MDB_ERR_READ, "read error when parsing superblock");
  }
  strcpy(pathbuf, path);
  strcat(pathbuf, ".db.index");
  db->fp_index = fopen(pathbuf, "rb+");
  if (db->fp_index == ((void*)0)) {
    mdb_free(db);
    return mdb_status(MDB_ERR_OPEN_FILE, "cannot open index file as readwrite");
  }
  strcpy(pathbuf, path);
  strcat(pathbuf, ".db.data");
  db->fp_data = fopen(pathbuf, "rb+");
  if (db->fp_data == ((void*)0)) {
    mdb_free(db);
    return mdb_status(MDB_ERR_OPEN_FILE, "cannot open data file as readwrite");
  }
  if (fflush(((void*)0)) != 0) {
    mdb_free(db);
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  *handle = (mdb_t)db;
  return mdb_status(MDB_OK, ((void*)0));
}
mdb_status_t mdb_create(mdb_t *handle, mdb_options_t options) {
  mdb_int_t *db = mdb_alloc();
  if (db == ((void*)0)) {
    return mdb_status(MDB_ERR_ALLOC,
                      "failed allocating memory buffer for database");
  }
  strcpy(db->options.db_name, options.db_name);
  db->options.items_max = options.items_max;
  db->options.hash_buckets = options.hash_buckets;
  db->options.key_size_max = options.key_size_max;
  db->options.data_size_max = options.data_size_max;
  db->index_record_size = db->options.key_size_max
                          + MDB_PTR_SIZE * 2
                          + MDB_DATALEN_SIZE;
  strcpy(pathbuf, options.db_name);
  strcat(pathbuf, ".db.super");
  db->fp_superblock = fopen(pathbuf, "w");
  if (db->fp_superblock == ((void*)0)) {
    mdb_free(db);
    return mdb_status(MDB_ERR_OPEN_FILE,
                      "cannot open superblock file as write");
  }
  fprintf(db->fp_superblock, "%s\n", db->db_name);
  fprintf(db->fp_superblock, "%hu\n", db->options.key_size_max);
  fprintf(db->fp_superblock, "%u\n", db->options.data_size_max);
  fprintf(db->fp_superblock, "%u\n", db->options.hash_buckets);
  fprintf(db->fp_superblock, "%u\n", db->options.items_max);
  if (ferror(db->fp_superblock)) {
    mdb_free(db);
    return mdb_status(MDB_ERR_WRITE, "write error when writing superblock");
  }
  strcpy(pathbuf, options.db_name);
  strcat(pathbuf, ".db.index");
  db->fp_index = fopen(pathbuf, "wb+");
  if (db->fp_index == ((void*)0)) {
    mdb_free(db);
    return mdb_status(MDB_ERR_OPEN_FILE, "cannot open index file as readwrite");
  }
  mdb_ptr_t zero_ptr = 0;
  if (fwrite(&zero_ptr, MDB_PTR_SIZE, 1, db->fp_index) < 1) {
    mdb_free(db);
    return mdb_status(MDB_ERR_WRITE, "write error when writing freeptr");
  }
  for (size_t i = 0; i < options.hash_buckets; i++) {
    if (fwrite(&zero_ptr, MDB_PTR_SIZE, 1, db->fp_index) < 1) {
      mdb_free(db);
      return mdb_status(MDB_ERR_WRITE, "write error when writing hash buckets");
    }
  }
  strcpy(pathbuf, options.db_name);
  strcat(pathbuf, ".db.data");
  db->fp_data = fopen(pathbuf, "wb+");
  if (db->fp_data == ((void*)0)) {
    mdb_free(db);
    return mdb_status(MDB_ERR_OPEN_FILE, "cannot open data file as readwrite");
  }
  if (fflush(((void*)0)) != 0) {
    mdb_free(db);
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  *handle = (mdb_t)db;
  return mdb_status(MDB_OK, ((void*)0));
}
mdb_status_t mdb_read(mdb_t handle, const char *key, char *buf, size_t bufsiz) {
  mdb_int_t *db = (mdb_int_t*)handle;
  mdb_size_t bucket = mdb_hash(key) % db->options.hash_buckets;
  mdb_ptr_t ptr;
  mdb_status_t bucket_read_status = mdb_read_bucket(db, bucket, &ptr);
  { if ((bucket_read_status).code != MDB_OK) { {;} return bucket_read_status; } };
  mdb_index_t *index =
      __builtin_alloca (sizeof(mdb_index_t) + db->options.key_size_max + 1);
  while (ptr != 0) {
    mdb_status_t read_status = mdb_read_index(db, ptr, index);
    { if ((read_status).code != MDB_OK) { {;} return read_status; } };
    if (strcmp(index->key, key) == 0) {
      return mdb_read_data(db, index->value_ptr, index->value_size, buf,
                           bufsiz);
    }
    ptr = index->next_ptr;
  }
  return mdb_status(MDB_NO_KEY, "Key not found");
}
mdb_status_t mdb_write(mdb_t handle, const char *key, const char *value) {
  mdb_int_t *db = (mdb_int_t*)handle;
  mdb_size_t bucket = mdb_hash(key) % db->options.hash_buckets;
  mdb_size_t key_size = strlen(key);
  if (key_size > db->options.key_size_max) {
    return mdb_status(MDB_ERR_KEY_SIZE, "key size too large");
  }
  mdb_size_t value_size = strlen(value);
  if (value_size > db->options.data_size_max) {
    return mdb_status(MDB_ERR_VALUE_SIZE, "value size too large");
  }
  mdb_ptr_t save_ptr = MDB_PTR_SIZE * (bucket + 1);
  mdb_ptr_t ptr;
  mdb_status_t bucket_read_status = mdb_read_bucket(db, bucket, &ptr);
  { if ((bucket_read_status).code != MDB_OK) { {;} return bucket_read_status; } };
  mdb_index_t *index = __builtin_alloca (sizeof(mdb_index_t) + db->options.key_size_max + 1);
  while (ptr != 0) {
    mdb_status_t index_read_status = mdb_read_index(db, ptr, index);
    { if ((index_read_status).code != MDB_OK) { {;} return index_read_status; } };
    if (strcmp(index->key, key) == 0) {
      break;
    }
    save_ptr = ptr;
    ptr = index->next_ptr;
  }
  if (ptr == 0) {
    mdb_ptr_t index_ptr;
    mdb_status_t index_alloc_status = mdb_index_alloc(db, &index_ptr);
    { if ((index_alloc_status).code != MDB_OK) { {;} return index_alloc_status; } };
    mdb_ptr_t value_ptr;
    mdb_status_t data_alloc_status = mdb_data_alloc(db, value_size, &value_ptr);
    { if ((data_alloc_status).code != MDB_OK) { { (void)mdb_index_free(db, index_ptr); } return data_alloc_status; } };
    mdb_status_t data_write_status = mdb_write_data(db, value_ptr, value,
                                                    value_size);
    { if ((data_write_status).code != MDB_OK) { { (void)mdb_data_free(db, value_ptr, value_size); (void)mdb_index_free(db, index_ptr); } return data_write_status; } };
    mdb_status_t index_write_status = mdb_write_index(db, index_ptr, key,
                                                      value_ptr, value_size);
    { if ((index_write_status).code != MDB_OK) { { (void)mdb_data_free(db, value_ptr, value_size); (void)mdb_index_free(db, index_ptr); } return index_write_status; } };
    mdb_status_t ptr_update_status = mdb_write_nextptr(db, save_ptr, index_ptr);
    { if ((ptr_update_status).code != MDB_OK) { { (void)mdb_data_free(db, value_ptr, value_size); (void)mdb_index_free(db, index_ptr); } return ptr_update_status; } };
    return mdb_status(MDB_OK, ((void*)0));
  } else {
    mdb_status_t data_free_status = mdb_data_free(db, index->value_ptr,
                                                  index->value_size);
    { if ((data_free_status).code != MDB_OK) { {;} return data_free_status; } };
    mdb_ptr_t value_ptr;
    mdb_status_t data_alloc_status = mdb_data_alloc(db, value_size, &value_ptr);
    { if ((data_alloc_status).code != MDB_OK) { {;} return data_alloc_status; } };
    mdb_status_t data_write_status = mdb_write_data(db, value_ptr, value,
                                                    value_size);
    { if ((data_write_status).code != MDB_OK) { {;} return data_write_status; } };
    mdb_status_t index_write_status = mdb_write_index(db, ptr, key, value_ptr,
                                                      value_size);
    { if ((index_write_status).code != MDB_OK) { {;} return index_write_status; } };
    return mdb_status(MDB_OK, ((void*)0));
  }
}
mdb_status_t mdb_delete(mdb_t handle, const char *key) {
  mdb_int_t *db = (mdb_int_t*)handle;
  mdb_size_t bucket = mdb_hash(key) % db->options.hash_buckets;
  mdb_ptr_t save_ptr = MDB_PTR_SIZE * (bucket + 1);
  mdb_ptr_t ptr;
  mdb_status_t bucket_read_status = mdb_read_bucket(db, bucket, &ptr);
  { if ((bucket_read_status).code != MDB_OK) { {;} return bucket_read_status; } };
  mdb_index_t *index = __builtin_alloca (sizeof(mdb_index_t) + db->options.key_size_max + 1);
  while (ptr != 0) {
    mdb_status_t index_read_status = mdb_read_index(db, ptr, index);
    { if ((index_read_status).code != MDB_OK) { {;} return index_read_status; } };
    if (strcmp(index->key, key) == 0) {
      break;
    }
    save_ptr = ptr;
    ptr = index->next_ptr;
  }
  if (ptr == 0) {
    return mdb_status(MDB_NO_KEY, ((void*)0));
  }
  mdb_status_t data_free_status = mdb_data_free(db, index->value_ptr,
                                                index->value_size);
  { if ((data_free_status).code != MDB_OK) { {;} return data_free_status; } };
  mdb_status_t index_free_status = mdb_index_free(db, ptr);
  { if ((index_free_status).code != MDB_OK) { {;} return index_free_status; } };
  mdb_status_t nextptr_update_status = mdb_write_nextptr(db, save_ptr,
                                                         index->next_ptr);
  { if ((nextptr_update_status).code != MDB_OK) { {;} return nextptr_update_status; } };
  return mdb_status(MDB_OK, ((void*)0));
}
mdb_options_t mdb_get_options(mdb_t handle) {
  mdb_int_t *db = (mdb_int_t*)handle;
  return db->options;
}
size_t mdb_index_size(mdb_t *handle) {
  mdb_int_t *db = (mdb_int_t*)handle;
  (void)fseek(db->fp_index, 0, 2);
  return ftell(db->fp_index);
}
size_t mdb_data_size(mdb_t *handle) {
  mdb_int_t *db = (mdb_int_t*)handle;
  (void)fseek(db->fp_data, 0, 2);
  return ftell(db->fp_data);
}
static mdb_status_t mdb_read_bucket(mdb_int_t *db, uint32_t bucket,
                                    mdb_ptr_t *ptr) {
  if (fseek(db->fp_index, (long)(MDB_PTR_SIZE * (bucket + 1)), 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to bucket");
  }
  if (fread(ptr, MDB_PTR_SIZE, 1, db->fp_index) != 1) {
    return mdb_status(MDB_ERR_READ, "cannot read bucket");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_read_index(mdb_int_t *db, mdb_ptr_t idxptr,
                                   mdb_index_t *index) {
  if (fseek(db->fp_index, (long)idxptr, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to ptr");
  }
  if (fread(&(index->next_ptr), MDB_PTR_SIZE, 1, db->fp_index) != 1) {
    return mdb_status(MDB_ERR_READ, "cannot read next ptr");
  }
  if (fread(index->key, 1, db->options.key_size_max, db->fp_index)
      != db->options.key_size_max) {
    return mdb_status(MDB_ERR_READ, "cannot read key");
  }
  index->key[db->options.key_size_max] = '\0';
  if (fread(&(index->value_ptr), MDB_PTR_SIZE, 1, db->fp_index) != 1) {
    return mdb_status(MDB_ERR_READ, "cannot read value ptr");
  }
  if (fread(&(index->value_size), MDB_DATALEN_SIZE, 1, db->fp_index) != 1) {
    return mdb_status(MDB_ERR_READ, "cannot read value length");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_write_bucket(mdb_int_t *db, mdb_ptr_t bucket,
                                     mdb_ptr_t value) {
  if (fseek(db->fp_index, (long)(MDB_PTR_SIZE * (bucket + 1)), 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to bucket");
  }
  if (fwrite(&value, MDB_PTR_SIZE, 1, db->fp_index) != 1) {
    return mdb_status(MDB_ERR_WRITE, "cannot write bucket");
  }
  if (fflush(db->fp_index) != 0) {
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_write_index(mdb_int_t *db, mdb_ptr_t idxptr,
                                    const char *keybuf, mdb_ptr_t valptr,
                                    mdb_size_t valsize) {
  if (fseek(db->fp_index, (long)(idxptr + MDB_PTR_SIZE), 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to ptr");
  }
  size_t key_len = strlen(keybuf);
  if (fwrite(keybuf, 1, key_len, db->fp_index) < key_len) {
    return mdb_status(MDB_ERR_WRITE, "cannot write key part of index");
  }
  size_t value_ptr_pos = idxptr + MDB_PTR_SIZE + db->options.key_size_max;
  if (fseek(db->fp_index, (long)value_ptr_pos, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to value part of index");
  }
  if (fwrite(&valptr, MDB_PTR_SIZE, 1, db->fp_index) < 1) {
    return mdb_status(MDB_ERR_WRITE, "cannot write to value part of index");
  }
  if (fwrite(&valsize, MDB_DATALEN_SIZE, 1, db->fp_index) < 1) {
    return mdb_status(MDB_ERR_WRITE, "cannot write to value part of index");
  }
  if (fflush(db->fp_index) != 0) {
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_read_nextptr(mdb_int_t *db, mdb_ptr_t idxptr,
                                     mdb_ptr_t *nextptr) {
  if (fseek(db->fp_index, (long)idxptr, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to ptr");
  }
  if (fread(nextptr, MDB_PTR_SIZE, 1, db->fp_index) != 1) {
    return mdb_status(MDB_ERR_READ, "cannot read next ptr");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_read_data(mdb_int_t *db, mdb_ptr_t valptr,
                                  mdb_size_t valsize, char *valbuf,
                                  mdb_size_t bufsiz) {
  if (bufsiz < valsize + 1) {
    return mdb_status(MDB_ERR_BUFSIZ, "value buffer size too small");
  }
  if (fseek(db->fp_data, (long)valptr, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to value");
  }
  if (fread(valbuf, 1, valsize, db->fp_data) != valsize) {
    return mdb_status(MDB_ERR_READ, "cannot read data");
  }
  valbuf[valsize] = '\0';
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_write_nextptr(mdb_int_t *db, mdb_ptr_t ptr,
                                      mdb_ptr_t nextptr) {
  if (fseek(db->fp_index, (long)ptr, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to head of index file");
  }
  if (fwrite(&nextptr, MDB_PTR_SIZE, 1, db->fp_index) < 1) {
    return mdb_status(MDB_ERR_WRITE, "cannot write to head of index file");
  }
  if (fflush(db->fp_index) != 0) {
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_write_data(mdb_int_t *db, mdb_ptr_t valptr,
                                   const char *valbuf, mdb_size_t valsize) {
  if (fseek(db->fp_data, (long)valptr, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to value");
  }
  if (fwrite(valbuf, 1, valsize, db->fp_data) < valsize) {
    return mdb_status(MDB_ERR_WRITE, "cannot write data");
  }
  if (fflush(db->fp_data) != 0) {
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_stretch_index_file(mdb_int_t *db, mdb_ptr_t *ptr) {
  if (fseek(db->fp_index, 0, 2) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to end of index file");
  }
  *ptr = (mdb_ptr_t)ftell(db->fp_index);
  unsigned char zero = '\0';
  for (size_t i = 0; i < db->index_record_size; i++) {
    if (fwrite(&zero, 1, 1, db->fp_index) < 1) {
      return mdb_status(MDB_ERR_WRITE, "cannot stretch index file");
    }
  }
  if (fflush(db->fp_index) != 0) {
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_index_alloc(mdb_int_t *db, mdb_ptr_t *ptr) {
  mdb_ptr_t freeptr;
  mdb_status_t freeptr_read_status = mdb_read_nextptr(db, 0, &freeptr);
  { if ((freeptr_read_status).code != MDB_OK) { {;} return freeptr_read_status; } };
  if (freeptr != 0) {
    mdb_ptr_t new_freeptr;
    mdb_status_t nextptr_read_stat =
        mdb_read_nextptr(db, freeptr, &new_freeptr);
    { if ((nextptr_read_stat).code != MDB_OK) { {;} return nextptr_read_stat; } };
    mdb_status_t freeptr_update_stat = mdb_write_nextptr(db, 0, new_freeptr);
    { if ((freeptr_update_stat).code != MDB_OK) { {;} return freeptr_update_stat; } };
    mdb_status_t freeptr_cleanup_stat = mdb_write_nextptr(db, freeptr, 0);
    { if ((freeptr_cleanup_stat).code != MDB_OK) { {;} return freeptr_cleanup_stat; } };
    *ptr = freeptr;
    return mdb_status(MDB_OK, ((void*)0));
  } else {
    return mdb_stretch_index_file(db, ptr);
  }
}
static mdb_status_t mdb_data_alloc(mdb_int_t *db, mdb_size_t valsize,
                                   mdb_ptr_t *ptr) {
  if (fseek(db->fp_data, 0, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to head of data file");
  }
  while (!feof(db->fp_data)) {
    uint8_t byte;
    if (fread(&byte, 1, 1, db->fp_data) != 1 && !feof(db->fp_data)) {
      return mdb_status(MDB_ERR_READ, "cannot read data file");
    }
    while (!feof(db->fp_data) && byte != '\0') {
      if (fread(&byte, 1, 1, db->fp_data) != 1 && !feof(db->fp_data)) {
        return mdb_status(MDB_ERR_READ, "cannot read data file");
      }
    }
    mdb_ptr_t start_ptr = (mdb_ptr_t)ftell(db->fp_data);
    while (!feof(db->fp_data) && byte == '\0') {
      if (fread(&byte, 1, 1, db->fp_data) != 1 && !feof(db->fp_data)) {
        return mdb_status(MDB_ERR_READ, "cannot read data file");
      }
    }
    mdb_ptr_t end_ptr = (mdb_ptr_t)ftell(db->fp_data);
    if (end_ptr - start_ptr >= valsize + 2) {
      *ptr = start_ptr + 1;
      return mdb_status(MDB_OK, ((void*)0));
    }
  }
  mdb_ptr_t end_ptr = (mdb_ptr_t)ftell(db->fp_data);
  unsigned char zero = '\0';
  for (size_t i = 0; i < valsize; i++) {
    if (fwrite(&zero, 1, 1, db->fp_data) < 1) {
      return mdb_status(MDB_ERR_WRITE, "cannot stretch data file");
    }
  }
  if (fflush(db->fp_data) != 0) {
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  *ptr = end_ptr;
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_index_free(mdb_int_t *db, mdb_ptr_t ptr) {
  if (fseek(db->fp_index, 0, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to head of index file");
  }
  mdb_t freeptr;
  if (fread(&freeptr, MDB_PTR_SIZE, 1, db->fp_index) != 1) {
    return mdb_status(MDB_ERR_READ, "cannot read free ptr");
  }
  if (fseek(db->fp_index, 0, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to head of index file");
  }
  if (fwrite(&ptr, MDB_PTR_SIZE, 1, db->fp_index) < 1) {
    return mdb_status(MDB_ERR_WRITE, "cannot write to head of index file");
  }
  if (fseek(db->fp_index, (long)ptr, 0) != 0) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to ptr");
  }
  if (fwrite(&freeptr, MDB_PTR_SIZE, 1, db->fp_index) < 1) {
    return mdb_status(MDB_ERR_WRITE, "cannot write to ptr");
  }
  for (size_t i = 0; i < db->options.key_size_max; i++) {
    char zero = '\0';
    if (fwrite(&zero, 1, 1, db->fp_index) < 1) {
      return mdb_status(MDB_ERR_WRITE, "cannot clean key part of index");
    }
  }
  if (fflush(db->fp_index) != 0) {
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_data_free(mdb_int_t *db, mdb_ptr_t valptr,
                                  mdb_size_t valsize) {
  if (fseek(db->fp_data, (long)valptr, 0)) {
    return mdb_status(MDB_ERR_SEEK, "cannot seek to data record");
  }
  uint8_t zero = '\0';
  for (size_t i = 0; i < valsize; i++) {
    if (fwrite(&zero, 1, 1, db->fp_data) != 1) {
      return mdb_status(MDB_ERR_WRITE, "cannot write empty data");
    }
  }
  if (fflush(db->fp_data) != 0) {
    return mdb_status(MDB_ERR_FLUSH, "fflush failed");
  }
  return mdb_status(MDB_OK, ((void*)0));
}
static mdb_status_t mdb_status(uint8_t code, const char *desc) {
  mdb_status_t s;
  s.code = code;
  s.desc = desc;
  return s;
}
static mdb_int_t *mdb_alloc() {
  mdb_int_t *ret = (mdb_int_t*)malloc(sizeof(mdb_int_t));
  if (!ret) {
    return ((void*)0);
  }
  ret->db_name = (char*)malloc((255) + 1);
  if (!ret->db_name) {
    free(ret);
    return ((void*)0);
  }
  ret->options.db_name = ret->db_name;
  return ret;
}
static void mdb_free(mdb_int_t *db) {
  if (db->fp_superblock != ((void*)0)) {
    fclose(db->fp_superblock);
  }
  if (db->fp_index != ((void*)0)) {
    fclose(db->fp_index);
  }
  if (db->fp_data != ((void*)0)) {
    fclose(db->fp_data);
  }
  free(db->db_name);
  free(db);
}
static uint32_t mdb_hash(const char *key) {
  uint32_t ret = 0;
  for (uint32_t i = 0; *key != '\0'; ++key, ++i) {
    ret += (uint32_t)*key * i;
  }
  return ret;
}
void mdb_close(mdb_t handle) {
  mdb_int_t *db = (mdb_int_t*)handle;
  fclose(db->fp_superblock);
  fclose(db->fp_index);
  fclose(db->fp_data);
  free(db->db_name);
  free(db);
}

