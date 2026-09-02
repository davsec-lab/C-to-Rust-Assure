typedef long unsigned int size_t;
typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;

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
extern __inline __attribute__ ((__gnu_inline__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __arg)
{
  return vfprintf (stdout, __fmt, __arg);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return getc (stdin);
}
extern __inline __attribute__ ((__gnu_inline__)) int
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return putc (__c, stdout);
}
extern __inline __attribute__ ((__gnu_inline__)) int
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0010) != 0);
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0020) != 0);
}
typedef int wchar_t;
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
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void*)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ )) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void*)0), 10);
}
__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ )) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void*)0), 10);
}
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
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
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
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;
  __l = 0;
  __u = __nmemb;
  while (__l < __u)
    {
      __idx = (__l + __u) / 2;
      __p = (const void *) (((const char *) __base) + (__idx * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison < 0)
 __u = __idx;
      else if (__comparison > 0)
 __l = __idx + 1;
      else
 {
   return (void *) __p;
 }
    }
  return ((void*)0);
}
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
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}

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
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
  long int tm_gmtoff;
  const char *tm_zone;
};
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
struct sigevent;
extern clock_t clock (void) __attribute__ ((__nothrow__ ));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));
extern double difftime (time_t __time1, time_t __time0);
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp)
   __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3, 4)));
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) __attribute__ ((__nothrow__ ));
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ ));
extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ ));
extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ ));
extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ ));
extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ ));
extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ ));
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
extern char *tzname[2];
extern void tzset (void) __attribute__ ((__nothrow__ ));
extern int daylight;
extern long int timezone;
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern int dysize (int __year) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);
extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ ));
extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);
extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ ));
extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ ));
extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ ));
extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ ));
extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ ));
extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ ));
extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
struct stat
  {
    __dev_t st_dev;
    __ino_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt_t st_blocks;
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
    __syscall_slong_t __glibc_reserved[3];
  };
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ ));
extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ ));
extern int mkdir (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int mkfifo (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ ));
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };
extern int gettimeofday (struct timeval *__restrict __tv,
    void *__restrict __tz) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ ));
extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ ));
enum __itimer_which
  {
    ITIMER_REAL = 0,
    ITIMER_VIRTUAL = 1,
    ITIMER_PROF = 2
  };
struct itimerval
  {
    struct timeval it_interval;
    struct timeval it_value;
  };
typedef int __itimer_which_t;
extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ ));
extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ ));
extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ ));
enum bmp_error
{
 BMP_FILE_NOT_OPENED = -4,
 BMP_HEADER_NOT_INITIALIZED,
 BMP_INVALID_FILE,
 BMP_ERROR,
 BMP_OK = 0
};
typedef struct _bmp_header
{
 unsigned int bfSize;
 unsigned int bfReserved;
 unsigned int bfOffBits;
 unsigned int biSize;
 int biWidth;
 int biHeight;
 unsigned short biPlanes;
 unsigned short biBitCount;
 unsigned int biCompression;
 unsigned int biSizeImage;
 int biXPelsPerMeter;
 int biYPelsPerMeter;
 unsigned int biClrUsed;
 unsigned int biClrImportant;
} bmp_header;
typedef struct _bmp_pixel
{
 unsigned char blue;
 unsigned char green;
 unsigned char red;
} bmp_pixel;
typedef struct _bmp_img
{
 bmp_header img_header;
 bmp_pixel **img_pixels;
} bmp_img;
void bmp_header_init_df (bmp_header*,
                                                const int,
                                                const int);
enum bmp_error bmp_header_write (const bmp_header*,
                                                FILE*);
enum bmp_error bmp_header_read (bmp_header*,
                                                FILE*);
void bmp_pixel_init (bmp_pixel*,
                                                const unsigned char,
                                                const unsigned char,
                                                const unsigned char);
void bmp_img_alloc (bmp_img*);
void bmp_img_init_df (bmp_img*,
                                                const int,
                                                const int);
void bmp_img_free (bmp_img*);
enum bmp_error bmp_img_write (const bmp_img*,
                                                const char*);
enum bmp_error bmp_img_read (bmp_img*,
                                                const char*);

typedef struct md5_ctx
{
 uint32_t state[4];
 uint64_t bit_len;
 unsigned char buffer[64];
 size_t buffer_len;
} md5_ctx;
static uint32_t
md5_left_rotate (const uint32_t value, const uint32_t shift)
{
 return (value << shift) | (value >> (32 - shift));
}
static void
md5_init (md5_ctx *ctx)
{
 ctx->state[0] = 0x67452301u;
 ctx->state[1] = 0xefcdab89u;
 ctx->state[2] = 0x98badcfeu;
 ctx->state[3] = 0x10325476u;
 ctx->bit_len = 0;
 ctx->buffer_len = 0;
}
static void
md5_transform (md5_ctx *ctx, const unsigned char block[64])
{
 static const uint32_t s[64] = {
  7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
  5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
  4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
  6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21
 };
 static const uint32_t k[64] = {
  0xd76aa478u, 0xe8c7b756u, 0x242070dbu, 0xc1bdceeeu,
  0xf57c0fafu, 0x4787c62au, 0xa8304613u, 0xfd469501u,
  0x698098d8u, 0x8b44f7afu, 0xffff5bb1u, 0x895cd7beu,
  0x6b901122u, 0xfd987193u, 0xa679438eu, 0x49b40821u,
  0xf61e2562u, 0xc040b340u, 0x265e5a51u, 0xe9b6c7aau,
  0xd62f105du, 0x02441453u, 0xd8a1e681u, 0xe7d3fbc8u,
  0x21e1cde6u, 0xc33707d6u, 0xf4d50d87u, 0x455a14edu,
  0xa9e3e905u, 0xfcefa3f8u, 0x676f02d9u, 0x8d2a4c8au,
  0xfffa3942u, 0x8771f681u, 0x6d9d6122u, 0xfde5380cu,
  0xa4beea44u, 0x4bdecfa9u, 0xf6bb4b60u, 0xbebfbc70u,
  0x289b7ec6u, 0xeaa127fau, 0xd4ef3085u, 0x04881d05u,
  0xd9d4d039u, 0xe6db99e5u, 0x1fa27cf8u, 0xc4ac5665u,
  0xf4292244u, 0x432aff97u, 0xab9423a7u, 0xfc93a039u,
  0x655b59c3u, 0x8f0ccc92u, 0xffeff47du, 0x85845dd1u,
  0x6fa87e4fu, 0xfe2ce6e0u, 0xa3014314u, 0x4e0811a1u,
  0xf7537e82u, 0xbd3af235u, 0x2ad7d2bbu, 0xeb86d391u
 };
 uint32_t m[16];
 uint32_t a = ctx->state[0];
 uint32_t b = ctx->state[1];
 uint32_t c = ctx->state[2];
 uint32_t d = ctx->state[3];
 for (size_t i = 0; i < 16; ++i)
 {
  const size_t j = i * 4;
  m[i] = (uint32_t) block[j]
         | ((uint32_t) block[j + 1] << 8)
         | ((uint32_t) block[j + 2] << 16)
         | ((uint32_t) block[j + 3] << 24);
 }
 for (size_t i = 0; i < 64; ++i)
 {
  uint32_t f;
  uint32_t g;
  if (i < 16)
  {
   f = (b & c) | (~b & d);
   g = (uint32_t) i;
  }
  else if (i < 32)
  {
   f = (d & b) | (~d & c);
   g = (uint32_t) ((5 * i + 1) % 16);
  }
  else if (i < 48)
  {
   f = b ^ c ^ d;
   g = (uint32_t) ((3 * i + 5) % 16);
  }
  else
  {
   f = c ^ (b | ~d);
   g = (uint32_t) ((7 * i) % 16);
  }
  const uint32_t tmp = d;
  d = c;
  c = b;
  b = b + md5_left_rotate (a + f + k[i] + m[g], s[i]);
  a = tmp;
 }
 ctx->state[0] += a;
 ctx->state[1] += b;
 ctx->state[2] += c;
 ctx->state[3] += d;
}
static void
md5_update (md5_ctx *ctx, const unsigned char *data, size_t len)
{
 ctx->bit_len += (uint64_t) len * 8u;
 while (len > 0)
 {
  const size_t space = sizeof (ctx->buffer) - ctx->buffer_len;
  const size_t chunk = len < space ? len : space;
  memcpy (ctx->buffer + ctx->buffer_len, data, chunk);
  ctx->buffer_len += chunk;
  data += chunk;
  len -= chunk;
  if (ctx->buffer_len == sizeof (ctx->buffer))
  {
   md5_transform (ctx, ctx->buffer);
   ctx->buffer_len = 0;
  }
 }
}
static void
md5_final (md5_ctx *ctx, unsigned char digest[16])
{
 static const unsigned char pad = 0x80;
 unsigned char length_bytes[8];
 for (size_t i = 0; i < sizeof (length_bytes); ++i)
 {
  length_bytes[i] = (unsigned char) ((ctx->bit_len >> (8 * i)) & 0xffu);
 }
 md5_update (ctx, &pad, 1);
 while (ctx->buffer_len != 56)
 {
  static const unsigned char zero = 0;
  md5_update (ctx, &zero, 1);
 }
 md5_update (ctx, length_bytes, sizeof (length_bytes));
 for (size_t i = 0; i < 4; ++i)
 {
  digest[i * 4] = (unsigned char) (ctx->state[i] & 0xffu);
  digest[i * 4 + 1] = (unsigned char) ((ctx->state[i] >> 8) & 0xffu);
  digest[i * 4 + 2] = (unsigned char) ((ctx->state[i] >> 16) & 0xffu);
  digest[i * 4 + 3] = (unsigned char) ((ctx->state[i] >> 24) & 0xffu);
 }
}
static int
print_file_md5 (const char *filename)
{
 unsigned char digest[16];
 unsigned char buffer[4096];
 md5_ctx ctx;
 FILE *file = fopen (filename, "rb");
 if (file == ((void*)0))
 {
  perror ("fopen");
  return -1;
 }
 md5_init (&ctx);
 for (;;)
 {
  const size_t bytes_read = fread (buffer, 1, sizeof (buffer), file);
  if (bytes_read > 0)
  {
   md5_update (&ctx, buffer, bytes_read);
  }
  if (bytes_read < sizeof (buffer))
  {
   if (ferror (file))
   {
    perror ("fread");
    fclose (file);
    return -1;
   }
   break;
  }
 }
 fclose (file);
 md5_final (&ctx, digest);
 printf ("md5: ");
 for (size_t i = 0; i < sizeof (digest); ++i)
 {
  printf ("%02x", digest[i]);
 }
 printf ("\n");
 printf ("Checksum: ");
 for (size_t i = 0; i < sizeof (digest); ++i)
 {
  printf ("%03u", (unsigned)digest[i]);
 }
 printf ("\n");
 return 0;
}
void
bmp_header_init_df (bmp_header *header,
                    const int width,
                    const int height)
{
 header->bfSize = (sizeof (bmp_pixel) * width + ((width) % 4))
                   * abs (height);
 header->bfReserved = 0;
 header->bfOffBits = 54;
 header->biSize = 40;
 header->biWidth = width;
 header->biHeight = height;
 header->biPlanes = 1;
 header->biBitCount = 24;
 header->biCompression = 0;
 header->biSizeImage = 0;
 header->biXPelsPerMeter = 0;
 header->biYPelsPerMeter = 0;
 header->biClrUsed = 0;
 header->biClrImportant = 0;
}
enum bmp_error
bmp_header_write (const bmp_header *header,
                  FILE *img_file)
{
 if (header == ((void*)0))
 {
  return BMP_HEADER_NOT_INITIALIZED;
 }
 else if (img_file == ((void*)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 const unsigned short magic = 19778;
 fwrite (&magic, sizeof (magic), 1, img_file);
 fwrite (header, sizeof (bmp_header), 1, img_file);
 return BMP_OK;
}
enum bmp_error
bmp_header_read (bmp_header *header,
                 FILE *img_file)
{
 if (img_file == ((void*)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 unsigned short magic;
 if (fread (&magic, sizeof (magic), 1, img_file) != 1 ||
     magic != 19778)
 {
  return BMP_INVALID_FILE;
 }
 if (fread (header, sizeof (bmp_header), 1, img_file) != 1)
 {
  return BMP_ERROR;
 }
 return BMP_OK;
}
void
bmp_pixel_init (bmp_pixel *pxl,
                const unsigned char red,
                const unsigned char green,
                const unsigned char blue)
{
 pxl->red = red;
 pxl->green = green;
 pxl->blue = blue;
}
void
bmp_img_alloc (bmp_img *img)
{
 const size_t h = abs (img->img_header.biHeight);
 img->img_pixels = malloc (sizeof (bmp_pixel*) * h);
 for (size_t y = 0; y < h; y++)
 {
  img->img_pixels[y] = malloc (sizeof (bmp_pixel) * img->img_header.biWidth);
 }
}
void
bmp_img_init_df (bmp_img *img,
                 const int width,
                 const int height)
{
 bmp_header_init_df (&img->img_header, width, height);
 bmp_img_alloc (img);
}
void
bmp_img_free (bmp_img *img)
{
 const size_t h = abs (img->img_header.biHeight);
 for (size_t y = 0; y < h; y++)
 {
  free (img->img_pixels[y]);
 }
 free (img->img_pixels);
}
static size_t
bmp_row_index (const bmp_header *header, const size_t y)
{
 const size_t h = abs (header->biHeight);
 return header->biHeight > 0 ? h - 1 - y : y;
}
enum bmp_error
bmp_img_write (const bmp_img *img,
               const char *filename)
{
 FILE *img_file = fopen (filename, "wb");
 if (img_file == ((void*)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 const enum bmp_error err = bmp_header_write (&img->img_header, img_file);
 if (err != BMP_OK)
 {
  fclose (img_file);
  return err;
 }
 const size_t h = abs (img->img_header.biHeight);
 const unsigned char padding[3] = {'\0', '\0', '\0'};
 for (size_t y = 0; y < h; y++)
 {
  fwrite (img->img_pixels[bmp_row_index (&img->img_header, y)], sizeof (bmp_pixel), img->img_header.biWidth, img_file);
  fwrite (padding, sizeof (unsigned char), ((img->img_header.biWidth) % 4), img_file);
 }
 fclose (img_file);
 return BMP_OK;
}
enum bmp_error
bmp_img_read (bmp_img *img,
              const char *filename)
{
 FILE *img_file = fopen (filename, "rb");
 if (img_file == ((void*)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 const enum bmp_error err = bmp_header_read (&img->img_header, img_file);
 if (err != BMP_OK)
 {
  fclose (img_file);
  return err;
 }
 bmp_img_alloc (img);
 const size_t h = abs (img->img_header.biHeight);
 const size_t padding = ((img->img_header.biWidth) % 4);
 const size_t items = img->img_header.biWidth;
 for (size_t y = 0; y < h; y++)
 {
  if (fread (img->img_pixels[bmp_row_index (&img->img_header, y)], sizeof (bmp_pixel), items, img_file) != items)
  {
   fclose (img_file);
   return BMP_ERROR;
  }
  fseek (img_file, padding, 1);
 }
 fclose (img_file);
 return BMP_OK;
}
static int get_now(struct timespec *ts)
{
 return clock_gettime(1, ts);
}
int
main (int argc, char *argv[])
{
 if (argc != 3)
 {
  fprintf (stderr, "Usage: %s <width> <height>\n", argv[0]);
  return 1;
 }
 char *endptr = ((void*)0);
 const long width = strtol (argv[1], &endptr, 10);
 if (*argv[1] == '\0' || *endptr != '\0' || width <= 0)
 {
  fprintf (stderr, "Invalid width: %s\n", argv[1]);
  return 1;
 }
 endptr = ((void*)0);
 const long height = strtol (argv[2], &endptr, 10);
 if (*argv[2] == '\0' || *endptr != '\0' || height <= 0)
 {
  fprintf (stderr, "Invalid height: %s\n", argv[2]);
  return 1;
 }
 struct timespec start_time;
 struct timespec end_time;
 srand (42);
 if (get_now (&start_time) != 0)
 {
  fprintf (stderr, "Failed to get start time\n");
  return 1;
 }
 bmp_img img;
 bmp_img_init_df (&img, (int) width, (int) height);
 for (long y = 0; y < height; y++)
 {
  for (long x = 0; x < width; x++)
  {
   const unsigned char red = (unsigned char) (rand () % 256);
   const unsigned char green = (unsigned char) (rand () % 256);
   const unsigned char blue = (unsigned char) (rand () % 256);
   bmp_pixel_init (&img.img_pixels[y][x], red, green, blue);
  }
 }
 const char *output_path = "../file/test.bmp";
 if (bmp_img_write (&img, output_path) != BMP_OK)
 {
  fprintf (stderr, "Failed to write BMP file: %s\n", output_path);
  bmp_img_free (&img);
  return 1;
 }
 bmp_img_free (&img);
 if (get_now (&end_time) != 0)
 {
  fprintf (stderr, "Failed to get end time\n");
  return 1;
 }
 print_file_md5 (output_path);
 double elapsed_seconds = (double)(end_time.tv_sec - start_time.tv_sec) +
                             (double)(end_time.tv_nsec - start_time.tv_nsec) / 1000000000.0;
    printf("elapsed_time_seconds: %.6f\n", elapsed_seconds);
 return 0;
}
