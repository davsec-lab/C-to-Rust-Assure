typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
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
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));

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

typedef unsigned char utf8_t;
typedef uint_least16_t utf16_t;
typedef uint_least32_t utf32_t;
typedef unsigned char latin1_t;
typedef unsigned char ascii_t;
_Bool
utf8_validate (const utf8_t *data, size_t len);
size_t
utf8_length_from_utf16le (const utf16_t *data, size_t len);
size_t
utf8_length_from_utf32 (const utf32_t *data, size_t len);
size_t
utf8_length_from_latin1 (const latin1_t *data, size_t len);
size_t
utf8_convert_to_utf16le (const utf8_t *data, size_t len, utf16_t *result);
size_t
utf8_convert_to_utf32 (const utf8_t *data, size_t len, utf32_t *result);
size_t
utf8_convert_to_latin1 (const utf8_t *data, size_t len, latin1_t *result);
_Bool
utf16le_validate (const utf16_t *data, size_t len);
size_t
utf16_length_from_utf8 (const utf8_t *data, size_t len);
size_t
utf16_length_from_utf32 (const utf32_t *data, size_t len);
size_t
utf16_length_from_latin1 (const latin1_t *data, size_t len);
size_t
utf16le_convert_to_utf8 (const utf16_t *data, size_t len, utf8_t *result);
size_t
utf16le_convert_to_utf32 (const utf16_t *data, size_t len, utf32_t *result);
size_t
utf16le_convert_to_latin1 (const utf16_t *data, size_t len, latin1_t *result);
_Bool
utf32_validate (const utf32_t *data, size_t len);
size_t
utf32_length_from_utf8 (const utf8_t *data, size_t len);
size_t
utf32_length_from_utf16le (const utf16_t *data, size_t len);
size_t
utf32_length_from_latin1 (const latin1_t *data, size_t len);
size_t
utf32_convert_to_utf8 (const utf32_t *data, size_t len, utf8_t *result);
size_t
utf32_convert_to_utf16le (const utf32_t *data, size_t len, utf16_t *result);
size_t
utf32_convert_to_latin1 (const utf32_t *data, size_t len, latin1_t *result);
size_t
latin1_length_from_utf8 (const utf8_t *data, size_t len);
size_t
latin1_length_from_utf16le (const utf16_t *data, size_t len);
size_t
latin1_length_from_utf32 (const utf32_t *data, size_t len);
size_t
latin1_convert_to_utf8 (const latin1_t *data, size_t len, utf8_t *result);
size_t
latin1_convert_to_utf16le (const latin1_t *data, size_t len, utf16_t *result);
size_t
latin1_convert_to_utf32 (const latin1_t *data, size_t len, utf32_t *result);
_Bool
ascii_validate (const ascii_t *data, size_t len);
typedef struct utf8_string_s utf8_string_t;
typedef struct utf8_string_view_s utf8_string_view_t;
struct utf8_string_s {
  utf8_t *data;
  size_t len;
  union {
    size_t cap;
    utf8_t buf[8];
  };
};
struct utf8_string_view_s {
  const utf8_t *data;
  size_t len;
};
inline void
utf8_string_init (utf8_string_t *string) {
  string->data = string->buf;
  string->len = 0;
}
inline utf8_string_view_t
utf8_string_view_init (const utf8_t *data, size_t len) {
  utf8_string_view_t view = {data, len};
  return view;
}
inline void
utf8_string_destroy (utf8_string_t *string) {
  if (string->data != string->buf) free(string->data);
}
inline int
utf8_string_reserve (utf8_string_t *string, size_t len) {
  size_t cap = string->data == string->buf ? sizeof(string->buf) : string->cap;
  if (len <= cap) return 0;
  len--;
  len |= len >> 1;
  len |= len >> 2;
  len |= len >> 4;
  len |= len >> 8;
  len |= len >> 16;
  if (sizeof(len) == 8) len |= len >> 32;
  len++;
  cap = len;
  utf8_t *data;
  if (string->data == string->buf) {
    data = (utf8_t *) malloc(cap);
    memcpy(data, string->data, string->len);
  } else {
    data = (utf8_t *) realloc(string->data, cap);
  }
  if (data == ((void*)0)) return -1;
  string->data = data;
  string->cap = cap;
  return 0;
}
inline int
utf8_string_shrink_to_fit (utf8_string_t *string) {
  if (string->data == string->buf) return 0;
  size_t cap = string->len;
  if (cap <= sizeof(string->buf)) {
    memcpy(string->buf, string->data, cap);
    free(string->data);
    string->data = string->buf;
  } else {
    utf8_t *data = (utf8_t *) realloc(string->data, cap);
    if (data == ((void*)0)) return -1;
    string->data = data;
    string->cap = cap;
  }
  return 0;
}
inline utf8_string_view_t
utf8_string_view (const utf8_string_t *string) {
  return utf8_string_view_init(string->data, string->len);
}
inline void
utf8_string_clear (utf8_string_t *string) {
  string->len = 0;
}
inline _Bool
utf8_string_empty (const utf8_string_t *string) {
  return string->len == 0;
}
inline _Bool
utf8_string_view_empty (const utf8_string_view_t view) {
  return view.len == 0;
}
inline int
utf8_string_copy (const utf8_string_t *string, utf8_string_t *result) {
  int err;
  err = utf8_string_reserve(result, string->len);
  if (err < 0) return err;
  memcpy(result->data, string->data, string->len);
  result->len = string->len;
  return 0;
}
inline int
utf8_string_view_copy (const utf8_string_view_t view, utf8_string_t *result) {
  int err;
  err = utf8_string_reserve(result, view.len);
  if (err < 0) return err;
  memcpy(result->data, view.data, view.len);
  result->len = view.len;
  return 0;
}
inline int
utf8_string_append (utf8_string_t *string, const utf8_string_t *other) {
  int err;
  err = utf8_string_reserve(string, string->len + other->len);
  if (err < 0) return -1;
  memcpy(&string->data[string->len], other->data, other->len);
  string->len += other->len;
  return 0;
}
inline int
utf8_string_append_view (utf8_string_t *string, const utf8_string_view_t view) {
  int err;
  err = utf8_string_reserve(string, string->len + view.len);
  if (err < 0) return -1;
  memcpy(&string->data[string->len], view.data, view.len);
  string->len += view.len;
  return 0;
}
inline int
utf8_string_append_character (utf8_string_t *string, utf8_t c) {
  int err;
  err = utf8_string_reserve(string, string->len + 1);
  if (err < 0) return -1;
  string->data[string->len] = c;
  string->len += 1;
  return 0;
}
inline int
utf8_string_append_literal (utf8_string_t *string, const utf8_t *literal, size_t n) {
  int err;
  if (n == (size_t) -1) n = strlen((const char *) literal);
  err = utf8_string_reserve(string, string->len + n);
  if (err < 0) return -1;
  memcpy(&string->data[string->len], literal, n);
  string->len += n;
  return 0;
}
inline int
utf8_string_prepend (utf8_string_t *string, const utf8_string_t *other) {
  int err;
  err = utf8_string_reserve(string, string->len + other->len);
  if (err < 0) return -1;
  memmove(&string->data[other->len], string->data, string->len);
  memcpy(string->data, other->data, other->len);
  string->len += other->len;
  return 0;
}
inline int
utf8_string_prepend_view (utf8_string_t *string, const utf8_string_view_t view) {
  int err;
  err = utf8_string_reserve(string, string->len + view.len);
  if (err < 0) return -1;
  memmove(&string->data[view.len], string->data, string->len);
  memcpy(string->data, view.data, view.len);
  string->len += view.len;
  return 0;
}
inline int
utf8_string_prepend_character (utf8_string_t *string, utf8_t c) {
  int err;
  err = utf8_string_reserve(string, string->len + 1);
  if (err < 0) return -1;
  memmove(&string->data[1], string->data, string->len);
  string->data[0] = c;
  string->len += 1;
  return 0;
}
inline int
utf8_string_prepend_literal (utf8_string_t *string, const utf8_t *literal, size_t n) {
  int err;
  if (n == (size_t) -1) n = strlen((const char *) literal);
  err = utf8_string_reserve(string, string->len + n);
  if (err < 0) return -1;
  memmove(&string->data[n], string->data, string->len);
  memcpy(string->data, literal, n);
  string->len += n;
  return 0;
}
inline int
utf8_string_insert (utf8_string_t *string, size_t pos, const utf8_string_t *other) {
  int err;
  if (pos > string->len) return -1;
  size_t inserted_len = string->len + other->len;
  err = utf8_string_reserve(string, inserted_len);
  if (err < 0) return err;
  memmove(&string->data[pos + other->len], &string->data[pos], string->len - pos);
  memcpy(&string->data[pos], other->data, other->len);
  string->len = inserted_len;
  return 0;
}
inline int
utf8_string_insert_view (utf8_string_t *string, size_t pos, const utf8_string_view_t other) {
  int err;
  if (pos > string->len) return -1;
  size_t inserted_len = string->len + other.len;
  err = utf8_string_reserve(string, inserted_len);
  if (err < 0) return err;
  memmove(&string->data[pos + other.len], &string->data[pos], string->len - pos);
  memcpy(&string->data[pos], other.data, other.len);
  string->len = inserted_len;
  return 0;
}
inline int
utf8_string_insert_character (utf8_string_t *string, size_t pos, utf8_t c) {
  int err;
  if (pos > string->len) return -1;
  size_t inserted_len = string->len + 1;
  err = utf8_string_reserve(string, inserted_len);
  if (err < 0) return err;
  memmove(&string->data[pos + 1], &string->data[pos], string->len - pos);
  string->data[pos] = c;
  string->len = inserted_len;
  return 0;
}
inline int
utf8_string_insert_literal (utf8_string_t *string, size_t pos, const utf8_t *literal, size_t n) {
  int err;
  if (pos > string->len) return -1;
  if (n == (size_t) -1) n = strlen((const char *) literal);
  size_t inserted_len = string->len + n;
  err = utf8_string_reserve(string, inserted_len);
  if (err < 0) return err;
  memmove(&string->data[pos + n], &string->data[pos], string->len - pos);
  memcpy(&string->data[pos], literal, n);
  string->len = inserted_len;
  return 0;
}
inline int
utf8_string_replace (utf8_string_t *string, size_t pos, size_t len, const utf8_string_t *replacement) {
  int err;
  if (pos > string->len) return -1;
  if (pos + len > string->len) len = string->len - pos;
  size_t replaced_len = string->len + replacement->len - len;
  err = utf8_string_reserve(string, replaced_len);
  if (err < 0) return err;
  memmove(&string->data[pos + replacement->len], &string->data[pos + len], string->len - pos - len);
  memcpy(&string->data[pos], replacement->data, replacement->len);
  string->len = replaced_len;
  return 0;
}
inline int
utf8_string_replace_view (utf8_string_t *string, size_t pos, size_t len, const utf8_string_view_t replacement) {
  int err;
  if (pos > string->len) return -1;
  if (pos + len > string->len) len = string->len - pos;
  size_t replaced_len = string->len + replacement.len - len;
  err = utf8_string_reserve(string, replaced_len);
  if (err < 0) return err;
  memmove(&string->data[pos + replacement.len], &string->data[pos + len], string->len - pos - len);
  memcpy(&string->data[pos], replacement.data, replacement.len);
  string->len = replaced_len;
  return 0;
}
inline int
utf8_string_replace_character (utf8_string_t *string, size_t pos, size_t len, utf8_t c) {
  int err;
  if (pos > string->len) return -1;
  size_t replaced_len = string->len + 1 - len;
  err = utf8_string_reserve(string, replaced_len);
  if (err < 0) return err;
  memmove(&string->data[pos + 1], &string->data[pos + len], string->len - pos - len);
  string->data[pos] = c;
  string->len = replaced_len;
  return 0;
}
inline int
utf8_string_replace_literal (utf8_string_t *string, size_t pos, size_t len, const utf8_t *literal, size_t n) {
  int err;
  if (pos > string->len) return -1;
  if (pos + len > string->len) len = string->len - pos;
  if (n == (size_t) -1) n = strlen((const char *) literal);
  size_t replaced_len = string->len + n - len;
  err = utf8_string_reserve(string, replaced_len);
  if (err < 0) return err;
  memmove(&string->data[pos + n], &string->data[pos + len], string->len - pos - len);
  memcpy(&string->data[pos], literal, n);
  string->len = replaced_len;
  return 0;
}
inline int
utf8_string_erase (utf8_string_t *string, size_t pos, size_t len) {
  int err;
  if (pos > string->len) return -1;
  if (pos + len > string->len) len = string->len - pos;
  memmove(&string->data[pos], &string->data[pos + len], string->len - pos - len);
  string->len -= len;
  return 0;
}
inline int
utf8_string_concat (const utf8_string_t *string, const utf8_string_t *other, utf8_string_t *result) {
  int err;
  utf8_string_init(result);
  err = utf8_string_reserve(result, string->len + other->len);
  if (err < 0) return err;
  err = utf8_string_append(result, string);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 478, __extension__ __PRETTY_FUNCTION__); }));
  err = utf8_string_append(result, other);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 481, __extension__ __PRETTY_FUNCTION__); }));
  return 0;
}
inline int
utf8_string_view_concat (const utf8_string_view_t view, const utf8_string_t *other, utf8_string_t *result) {
  int err;
  utf8_string_init(result);
  err = utf8_string_reserve(result, view.len + other->len);
  if (err < 0) return err;
  err = utf8_string_append_view(result, view);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 496, __extension__ __PRETTY_FUNCTION__); }));
  err = utf8_string_append(result, other);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 499, __extension__ __PRETTY_FUNCTION__); }));
  return 0;
}
inline int
utf8_string_concat_view (const utf8_string_t *string, const utf8_string_view_t other, utf8_string_t *result) {
  int err;
  utf8_string_init(result);
  err = utf8_string_reserve(result, string->len + other.len);
  if (err < 0) return err;
  err = utf8_string_append(result, string);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 514, __extension__ __PRETTY_FUNCTION__); }));
  err = utf8_string_append_view(result, other);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 517, __extension__ __PRETTY_FUNCTION__); }));
  return 0;
}
inline int
utf8_string_view_concat_view (const utf8_string_view_t view, const utf8_string_view_t other, utf8_string_t *result) {
  int err;
  utf8_string_init(result);
  err = utf8_string_reserve(result, view.len + other.len);
  if (err < 0) return err;
  err = utf8_string_append_view(result, view);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 532, __extension__ __PRETTY_FUNCTION__); }));
  err = utf8_string_append_view(result, other);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 535, __extension__ __PRETTY_FUNCTION__); }));
  return 0;
}
inline int
utf8_string_concat_character (const utf8_string_t *string, utf8_t c, utf8_string_t *result) {
  int err;
  utf8_string_init(result);
  err = utf8_string_reserve(result, string->len + 1);
  if (err < 0) return err;
  err = utf8_string_append(result, string);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 550, __extension__ __PRETTY_FUNCTION__); }));
  err = utf8_string_append_character(result, c);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 553, __extension__ __PRETTY_FUNCTION__); }));
  return 0;
}
inline int
utf8_string_view_concat_character (const utf8_string_view_t view, utf8_t c, utf8_string_t *result) {
  int err;
  utf8_string_init(result);
  err = utf8_string_reserve(result, view.len + 1);
  if (err < 0) return err;
  err = utf8_string_append_view(result, view);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 568, __extension__ __PRETTY_FUNCTION__); }));
  err = utf8_string_append_character(result, c);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 571, __extension__ __PRETTY_FUNCTION__); }));
  return 0;
}
inline int
utf8_string_concat_literal (const utf8_string_t *string, const utf8_t *literal, size_t n, utf8_string_t *result) {
  int err;
  utf8_string_init(result);
  err = utf8_string_reserve(result, string->len + n);
  if (err < 0) return err;
  err = utf8_string_append(result, string);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 586, __extension__ __PRETTY_FUNCTION__); }));
  err = utf8_string_append_literal(result, literal, n);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 589, __extension__ __PRETTY_FUNCTION__); }));
  return 0;
}
inline int
utf8_string_view_concat_literal (const utf8_string_view_t view, const utf8_t *literal, size_t n, utf8_string_t *result) {
  int err;
  utf8_string_init(result);
  err = utf8_string_reserve(result, view.len + n);
  if (err < 0) return err;
  err = utf8_string_append_view(result, view);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 604, __extension__ __PRETTY_FUNCTION__); }));
  err = utf8_string_append_literal(result, literal, n);
  ((void) sizeof ((err == 0) ? 1 : 0), __extension__ ({ if (err == 0) ; else __assert_fail ("err == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/include/utf/string.h", 607, __extension__ __PRETTY_FUNCTION__); }));
  return 0;
}
inline int
utf8_string_compare (const utf8_string_t *string, const utf8_string_t *other) {
  size_t a_len = string->len;
  size_t b_len = other->len;
  int result = strncmp((const char *) string->data, (const char *) other->data, a_len < b_len ? a_len : b_len);
  if (result == 0) return a_len < b_len
                            ? -1
                          : a_len > b_len ? 1
                                          : 0;
  return result;
}
inline int
utf8_string_view_compare (const utf8_string_view_t view, const utf8_string_view_t other) {
  size_t a_len = view.len;
  size_t b_len = other.len;
  int result = strncmp((const char *) view.data, (const char *) other.data, a_len < b_len ? a_len : b_len);
  if (result == 0) return a_len < b_len
                            ? -1
                          : a_len > b_len ? 1
                                          : 0;
  return result;
}
inline int
utf8_string_compare_literal (const utf8_string_t *string, const utf8_t *literal, size_t n) {
  if (n == (size_t) -1) n = strlen((const char *) literal);
  size_t a_len = string->len;
  size_t b_len = n;
  int result = strncmp((const char *) string->data, (const char *) literal, a_len < b_len ? a_len : b_len);
  if (result == 0) return a_len < b_len
                            ? -1
                          : a_len > b_len ? 1
                                          : 0;
  return result;
}
inline int
utf8_string_view_compare_literal (const utf8_string_view_t view, const utf8_t *literal, size_t n) {
  if (n == (size_t) -1) n = strlen((const char *) literal);
  size_t a_len = view.len;
  size_t b_len = n;
  int result = strncmp((const char *) view.data, (const char *) literal, a_len < b_len ? a_len : b_len);
  if (result == 0) return a_len < b_len
                            ? -1
                          : a_len > b_len ? 1
                                          : 0;
  return result;
}
inline utf8_string_view_t
utf8_string_substring (const utf8_string_t *string, size_t start, size_t end) {
  if (end == (size_t) -1 || end > string->len) end = string->len;
  if (start > end) start = end;
  return utf8_string_view_init(&string->data[start], end - start);
}
inline utf8_string_view_t
utf8_string_view_substring (const utf8_string_view_t view, size_t start, size_t end) {
  if (end == (size_t) -1 || end > view.len) end = view.len;
  if (start > end) start = end;
  return utf8_string_view_init(&view.data[start], end - start);
}
inline int
utf8_string_substring_copy (const utf8_string_t *string, size_t start, size_t end, utf8_string_t *result) {
  int err;
  if (end == (size_t) -1 || end > string->len) end = string->len;
  if (start > end) start = end;
  utf8_string_init(result);
  size_t len = end - start;
  err = utf8_string_reserve(result, len);
  if (err < 0) return -1;
  memcpy(result->data, &string->data[start], len);
  result->len = len;
  return 0;
}
inline int
utf8_string_view_substring_copy (const utf8_string_view_t view, size_t start, size_t end, utf8_string_t *result) {
  int err;
  if (end == (size_t) -1 || end > view.len) end = view.len;
  if (start > end) start = end;
  size_t len = end - start;
  err = utf8_string_reserve(result, len);
  if (err < 0) return -1;
  memcpy(result->data, &view.data[start], len);
  result->len = len;
  return 0;
}
inline size_t
utf8_string_index_of_character (const utf8_string_t *string, size_t pos, utf8_t c) {
  for (size_t i = pos, n = string->len; i < n; i++) {
    if (string->data[i] == c) {
      return i;
    }
  }
  return (size_t) -1;
}
inline size_t
utf8_string_view_index_of_character (const utf8_string_view_t view, size_t pos, utf8_t c) {
  for (size_t i = pos, n = view.len; i < n; i++) {
    if (view.data[i] == c) {
      return i;
    }
  }
  return (size_t) -1;
}
inline size_t
utf8_string_last_index_of_character (const utf8_string_t *string, size_t pos, utf8_t c) {
  if (pos == (size_t) -1) pos = string->len - 1;
  else if (pos >= string->len) return (size_t) -1;
  for (size_t i = pos; i <= pos; i--) {
    if (string->data[i] == c) {
      return i;
    }
  }
  return (size_t) -1;
}
inline size_t
utf8_string_view_last_index_of_character (const utf8_string_view_t view, size_t pos, utf8_t c) {
  if (pos == (size_t) -1) pos = view.len - 1;
  else if (pos >= view.len) return (size_t) -1;
  for (size_t i = pos; i <= pos; i--) {
    if (view.data[i] == c) {
      return i;
    }
  }
  return (size_t) -1;
}
_Bool
ascii_validate (const ascii_t *data, size_t len) {
  uint64_t pos = 0;
  for (; pos + 16 <= len; pos += 16) {
    uint64_t v1;
    memcpy(&v1, data + pos, sizeof(uint64_t));
    uint64_t v2;
    memcpy(&v2, data + pos + sizeof(uint64_t), sizeof(uint64_t));
    uint64_t v = v1 | v2;
    if ((v & 0x8080808080808080) != 0) {
      return 0;
    }
  }
  for (; pos < len; pos++) {
    if (data[pos] >= 0b10000000) {
      return 0;
    }
  }
  return 1;
}
typedef enum {
  utf_le,
  utf_be
} utf_endianness_t;
inline utf_endianness_t
utf_endianness (void) {
  const union {
    uint8_t u8[2];
    uint16_t u16;
  } byte_order = {{1, 0}};
  return byte_order.u16 == 1 ? utf_le : utf_be;
}
inline _Bool
utf_is_le (void) {
  return utf_endianness() == utf_le;
}
inline _Bool
utf_is_be (void) {
  return utf_endianness() == utf_be;
}
inline uint16_t
utf_swap_uint16 (uint16_t n) {
  return ((n & 0x00ff) << 8) |
         ((n & 0xff00) >> 8);
}
inline uint32_t
utf_swap_uint32 (uint32_t n) {
  return ((n & 0x000000ff) << 24) |
         ((n & 0x0000ff00) << 8) |
         ((n & 0x00ff0000) >> 8) |
         ((n & 0xff000000) >> 24);
}

extern utf_endianness_t
utf_endianness (void);
extern _Bool
utf_is_le (void);
extern _Bool
utf_is_be (void);
extern uint16_t
utf_swap_uint16 (uint16_t n);
extern uint32_t
utf_swap_uint32 (uint32_t n);
size_t
latin1_convert_to_utf16le (const latin1_t *data, size_t len, utf16_t *result) {
  size_t pos = 0;
  utf16_t *start = result;
  while (pos < len) {
    *result++ = utf_is_be() ? utf_swap_uint16(data[pos]) : data[pos];
    pos++;
  }
  return result - start;
}
size_t
latin1_convert_to_utf32 (const latin1_t *data, size_t len, utf32_t *result) {
  utf32_t *start = result;
  for (size_t i = 0; i < len; i++) {
    *result++ = data[i];
  }
  return result - start;
}
size_t
latin1_convert_to_utf8 (const latin1_t *data, size_t len, utf8_t *result) {
  size_t pos = 0;
  utf8_t *start = result;
  while (pos < len) {
    if (pos + 16 <= len) {
      uint64_t v1;
      memcpy(&v1, data + pos, sizeof(uint64_t));
      uint64_t v2;
      memcpy(&v2, data + pos + sizeof(uint64_t), sizeof(uint64_t));
      uint64_t v = v1 | v2;
      if ((v & 0x8080808080808080) == 0) {
        size_t final_pos = pos + 16;
        while (pos < final_pos) {
          *result++ = data[pos];
          pos++;
        }
        continue;
      }
    }
    unsigned char byte = data[pos];
    if ((byte & 0x80) == 0) {
      *result++ = byte;
      pos++;
    } else {
      *result++ = (byte >> 6) | 0b11000000;
      *result++ = (byte & 0b111111) | 0b10000000;
      pos++;
    }
  }
  return result - start;
}
size_t
latin1_length_from_utf16le (const utf16_t *data, size_t len) {
  return len;
}
size_t
latin1_length_from_utf32 (const utf32_t *data, size_t len) {
  return len;
}
size_t
latin1_length_from_utf8 (const utf8_t *data, size_t len) {
  size_t counter = 0;
  for (size_t i = 0; i < len; i++) {
    if ((int8_t) data[i] > -65) {
      counter++;
    }
  }
  return counter;
}
size_t
utf16le_convert_to_latin1 (const utf16_t *data, size_t len, latin1_t *result) {
  size_t pos = 0;
  uint16_t word, overflow = 0;
  latin1_t *start = result;
  while (pos < len) {
    word = utf_is_be() ? utf_swap_uint16(data[pos]) : data[pos];
    overflow |= word;
    *result++ = word & 0xff;
    pos++;
  }
  if (overflow & 0xff00) return 0;
  return result - start;
}
size_t
utf16le_convert_to_utf32 (const utf16_t *data, size_t len, utf32_t *result) {
  size_t pos = 0;
  uint16_t word, diff;
  utf32_t *start = result;
  while (pos < len) {
    word = utf_is_be() ? utf_swap_uint16(data[pos]) : data[pos];
    if ((word & 0xf800) != 0xd800) {
      *result++ = word;
      pos++;
    } else {
      diff = word - 0xd800;
      if (diff > 0x3ff) {
        return 0;
      }
      if (pos + 1 >= len) {
        return 0;
      }
      word = utf_is_be() ? utf_swap_uint16(data[pos + 1]) : data[pos + 1];
      uint32_t value = (diff << 10) + (word - 0xdc00) + 0x10000;
      diff = word - 0xdc00;
      if (diff > 0x3ff) {
        return 0;
      }
      *result++ = value;
      pos += 2;
    }
  }
  return result - start;
}
size_t
utf16le_convert_to_utf8 (const utf16_t *data, size_t len, utf8_t *result) {
  size_t pos = 0;
  uint16_t word, diff;
  utf8_t *start = result;
  while (pos < len) {
    if (pos + 4 <= len) {
      uint64_t v;
      memcpy(&v, data + pos, sizeof(uint64_t));
      if (utf_is_be()) v = (v >> 8) | (v << (64 - 8));
      if ((v & 0xff80ff80ff80ff80) == 0) {
        size_t final_pos = pos + 4;
        while (pos < final_pos) {
          *result++ = utf_is_be() ? utf_swap_uint16(data[pos]) : data[pos];
          pos++;
        }
        continue;
      }
    }
    word = utf_is_be() ? utf_swap_uint16(data[pos]) : data[pos];
    if ((word & 0xff80) == 0) {
      *result++ = word;
      pos++;
    } else if ((word & 0xf800) == 0) {
      *result++ = (word >> 6) | 0b11000000;
      *result++ = (word & 0b111111) | 0b10000000;
      pos++;
    } else if ((word & 0xf800) != 0xd800) {
      *result++ = (word >> 12) | 0b11100000;
      *result++ = ((word >> 6) & 0b111111) | 0b10000000;
      *result++ = (word & 0b111111) | 0b10000000;
      pos++;
    } else {
      diff = word - 0xd800;
      if (pos + 1 >= len) {
        return 0;
      }
      word = utf_is_be() ? utf_swap_uint16(data[pos + 1]) : data[pos + 1];
      uint32_t value = (diff << 10) + (word - 0xdc00) + 0x10000;
      *result++ = (value >> 18) | 0b11110000;
      *result++ = ((value >> 12) & 0b111111) | 0b10000000;
      *result++ = ((value >> 6) & 0b111111) | 0b10000000;
      *result++ = (value & 0b111111) | 0b10000000;
      pos += 2;
    }
  }
  return result - start;
}
size_t
utf16_length_from_latin1 (const utf8_t *data, size_t len) {
  return len;
}
size_t
utf16_length_from_utf32 (const utf32_t *data, size_t len) {
  size_t counter = 0;
  for (size_t i = 0; i < len; i++) {
    counter++;
    counter += data[i] > 0xffff;
  }
  return counter;
}
size_t
utf16_length_from_utf8 (const utf8_t *data, size_t len) {
  size_t counter = 0;
  for (size_t i = 0; i < len; i++) {
    if ((int8_t) data[i] > -65) {
      counter++;
    }
    if (data[i] >= 240) {
      counter++;
    }
  }
  return counter;
}

_Bool
utf16le_validate (const utf16_t *data, size_t len) {
  uint64_t pos = 0;
  uint16_t word, diff;
  while (pos < len) {
    word = utf_is_be() ? utf_swap_uint16(data[pos]) : data[pos];
    if ((word & 0xf800) == 0xd800) {
      if (pos + 1 >= len) {
        return 0;
      }
      diff = word - 0xd800;
      if (diff > 0x3ff) {
        return 0;
      }
      word = utf_is_be() ? utf_swap_uint16(data[pos + 1]) : data[pos + 1];
      diff = word - 0xdc00;
      if (diff > 0x3ff) {
        return 0;
      }
      pos += 2;
    } else {
      pos++;
    }
  }
  return 1;
}
size_t
utf32_convert_to_latin1 (const utf32_t *data, size_t len, latin1_t *result) {
  size_t pos = 0;
  uint32_t word, overflow = 0;
  latin1_t *start = result;
  while (pos < len) {
    word = data[pos];
    overflow |= word;
    *result++ = word & 0xff;
    pos++;
  }
  if (overflow & 0xffffff00) return 0;
  return result - start;
}
size_t
utf32_convert_to_utf16le (const utf32_t *data, size_t len, utf16_t *result) {
  size_t pos = 0;
  uint32_t word;
  utf16_t *start = result;
  while (pos < len) {
    word = data[pos];
    if ((word & 0xffff0000) == 0) {
      if (word >= 0xd800 && word <= 0xdfff) {
        return 0;
      }
      *result++ = utf_is_be() ? utf_swap_uint16(data[pos]) : data[pos];
    } else {
      if (word > 0x10ffff) {
        return 0;
      }
      word -= 0x10000;
      uint16_t high_surrogate = 0xd800 + (word >> 10);
      uint16_t low_surrogate = 0xdc00 + (word & 0x3ff);
      if (utf_is_be()) {
        high_surrogate = utf_swap_uint16(high_surrogate);
        low_surrogate = utf_swap_uint16(low_surrogate);
      }
      *result++ = high_surrogate;
      *result++ = low_surrogate;
    }
    pos++;
  }
  return result - start;
}
size_t
utf32_convert_to_utf8 (const utf32_t *data, size_t len, utf8_t *result) {
  size_t pos = 0;
  uint32_t word;
  utf8_t *start = result;
  while (pos < len) {
    if (pos + 2 <= len) {
      uint64_t v;
      memcpy(&v, data + pos, sizeof(uint64_t));
      if ((v & 0xffffff80ffffff80) == 0) {
        *result++ = data[pos];
        *result++ = data[pos + 1];
        pos += 2;
        continue;
      }
    }
    word = data[pos];
    if ((word & 0xffffff80) == 0) {
      *result++ = word;
      pos++;
    } else if ((word & 0xfffff800) == 0) {
      *result++ = (word >> 6) | 0b11000000;
      *result++ = (word & 0b111111) | 0b10000000;
      pos++;
    } else if ((word & 0xffff0000) == 0) {
      if (word >= 0xd800 && word <= 0xdfff) {
        return 0;
      }
      *result++ = (word >> 12) | 0b11100000;
      *result++ = ((word >> 6) & 0b111111) | 0b10000000;
      *result++ = (word & 0b111111) | 0b10000000;
      pos++;
    } else {
      if (word > 0x10ffff) {
        return 0;
      }
      *result++ = (word >> 18) | 0b11110000;
      *result++ = ((word >> 12) & 0b111111) | 0b10000000;
      *result++ = ((word >> 6) & 0b111111) | 0b10000000;
      *result++ = (word & 0b111111) | 0b10000000;
      pos++;
    }
  }
  return result - start;
}
size_t
utf32_length_from_latin1 (const utf8_t *data, size_t len) {
  return len;
}
size_t
utf32_length_from_utf16le (const utf16_t *data, size_t len) {
  size_t counter = 0;
  for (size_t i = 0; i < len; i++) {
    uint16_t word = utf_is_be() ? utf_swap_uint16(data[i]) : data[i];
    counter += ((word & 0xfc00) != 0xdc00);
  }
  return counter;
}
size_t
utf32_length_from_utf8 (const utf8_t *data, size_t len) {
  size_t counter = 0;
  for (size_t i = 0; i < len; i++) {
    if ((int8_t) data[i] > -65) {
      counter++;
    }
  }
  return counter;
}

_Bool
utf32_validate (const utf32_t *data, size_t len) {
  uint64_t pos = 0;
  uint32_t word;
  while (pos < len) {
    word = data[pos];
    if (word > 0x10ffff || (word >= 0xd800 && word <= 0xdfff)) {
      return 0;
    }
    pos++;
  }
  return 1;
}
size_t
utf8_convert_to_latin1 (const utf8_t *data, size_t len, latin1_t *result) {
  size_t pos = 0;
  latin1_t *start = result;
  while (pos < len) {
    if (pos + 16 <= len) {
      uint64_t v1;
      memcpy(&v1, data + pos, sizeof(uint64_t));
      uint64_t v2;
      memcpy(&v2, data + pos + sizeof(uint64_t), sizeof(uint64_t));
      uint64_t v = v1 | v2;
      if ((v & 0x8080808080808080) == 0) {
        size_t final_pos = pos + 16;
        while (pos < final_pos) {
          *result++ = data[pos];
          pos++;
        }
        continue;
      }
    }
    uint8_t leading_byte = data[pos];
    if (leading_byte < 0b10000000) {
      *result++ = leading_byte;
      pos++;
    } else if ((leading_byte & 0b11100000) == 0b11000000) {
      if (pos + 1 >= len) {
        return 0;
      }
      if ((data[pos + 1] & 0b11000000) != 0b10000000) {
        return 0;
      }
      uint32_t code_point = ((leading_byte & 0b00011111) << 6) |
                            (data[pos + 1] & 0b00111111);
      if (code_point < 0x80 || 0xff < code_point) {
        return 0;
      }
      *result++ = code_point;
      pos += 2;
    } else {
      return 0;
    }
  }
  return result - start;
}
size_t
utf8_convert_to_utf16le (const utf8_t *data, size_t len, utf16_t *result) {
  size_t pos = 0;
  utf16_t *start = result;
  while (pos < len) {
    if (pos + 8 <= len) {
      uint64_t v;
      memcpy(&v, data + pos, sizeof(uint64_t));
      if ((v & 0x8080808080808080) == 0) {
        size_t final_pos = pos + 8;
        while (pos < final_pos) {
          *result++ = utf_is_be() ? utf_swap_uint16(data[pos]) : data[pos];
          pos++;
        }
        continue;
      }
    }
    uint8_t leading_byte = data[pos];
    if (leading_byte < 0b10000000) {
      *result++ = utf_is_be() ? utf_swap_uint16(leading_byte) : leading_byte;
      pos++;
    } else if ((leading_byte & 0b11100000) == 0b11000000) {
      if (pos + 1 >= len) {
        break;
      }
      uint16_t code_point = ((leading_byte & 0b00011111) << 6) |
                            (data[pos + 1] & 0b00111111);
      if (utf_is_be()) {
        code_point = utf_swap_uint16(code_point);
      }
      *result++ = code_point;
      pos += 2;
    } else if ((leading_byte & 0b11110000) == 0b11100000) {
      if (pos + 2 >= len) {
        break;
      }
      uint16_t code_point = ((leading_byte & 0b00001111) << 12) |
                            ((data[pos + 1] & 0b00111111) << 6) |
                            (data[pos + 2] & 0b00111111);
      if (utf_is_be()) {
        code_point = utf_swap_uint16(code_point);
      }
      *result++ = code_point;
      pos += 3;
    } else if ((leading_byte & 0b11111000) == 0b11110000) {
      if (pos + 3 >= len) {
        break;
      }
      uint32_t code_point = ((leading_byte & 0b00000111) << 18) |
                            ((data[pos + 1] & 0b00111111) << 12) |
                            ((data[pos + 2] & 0b00111111) << 6) |
                            (data[pos + 3] & 0b00111111);
      code_point -= 0x10000;
      uint16_t high_surrogate = 0xd800 + (code_point >> 10);
      uint16_t low_surrogate = 0xdc00 + (code_point & 0x3ff);
      if (utf_is_be()) {
        high_surrogate = utf_swap_uint16(high_surrogate);
        low_surrogate = utf_swap_uint16(low_surrogate);
      }
      *result++ = high_surrogate;
      *result++ = low_surrogate;
      pos += 4;
    } else {
      return 0;
    }
  }
  return result - start;
}
size_t
utf8_convert_to_utf32 (const utf8_t *data, size_t len, utf32_t *result) {
  size_t pos = 0;
  utf32_t *start = result;
  while (pos < len) {
    if (pos + 16 <= len) {
      uint64_t v1;
      memcpy(&v1, data + pos, sizeof(uint64_t));
      uint64_t v2;
      memcpy(&v2, data + pos + sizeof(uint64_t), sizeof(uint64_t));
      uint64_t v = v1 | v2;
      if ((v & 0x8080808080808080) == 0) {
        size_t final_pos = pos + 16;
        while (pos < final_pos) {
          *result++ = data[pos];
          pos++;
        }
        continue;
      }
    }
    uint8_t leading_byte = data[pos];
    if (leading_byte < 0b10000000) {
      *result++ = leading_byte;
      pos++;
    } else if ((leading_byte & 0b11100000) == 0b11000000) {
      if (pos + 1 >= len) {
        return 0;
      }
      if ((data[pos + 1] & 0b11000000) != 0b10000000) {
        return 0;
      }
      uint32_t code_point = ((leading_byte & 0b00011111) << 6) |
                            (data[pos + 1] & 0b00111111);
      if (code_point < 0x80 || 0x7ff < code_point) {
        return 0;
      }
      *result++ = code_point;
      pos += 2;
    } else if ((leading_byte & 0b11110000) == 0b11100000) {
      if (pos + 2 >= len) {
        return 0;
      }
      if ((data[pos + 1] & 0b11000000) != 0b10000000) {
        return 0;
      }
      if ((data[pos + 2] & 0b11000000) != 0b10000000) {
        return 0;
      }
      uint32_t code_point = ((leading_byte & 0b00001111) << 12) |
                            ((data[pos + 1] & 0b00111111) << 6) |
                            (data[pos + 2] & 0b00111111);
      if (code_point < 0x800 || 0xffff < code_point || (0xd7ff < code_point && code_point < 0xe000)) {
        return 0;
      }
      *result++ = code_point;
      pos += 3;
    } else if ((leading_byte & 0b11111000) == 0b11110000) {
      if (pos + 3 >= len) {
        return 0;
      }
      if ((data[pos + 1] & 0b11000000) != 0b10000000) {
        return 0;
      }
      if ((data[pos + 2] & 0b11000000) != 0b10000000) {
        return 0;
      }
      if ((data[pos + 3] & 0b11000000) != 0b10000000) {
        return 0;
      }
      uint32_t code_point = ((leading_byte & 0b00000111) << 18) |
                            ((data[pos + 1] & 0b00111111) << 12) |
                            ((data[pos + 2] & 0b00111111) << 6) |
                            (data[pos + 3] & 0b00111111);
      if (code_point <= 0xffff || 0x10ffff < code_point) {
        return 0;
      }
      *result++ = code_point;
      pos += 4;
    } else {
      return 0;
    }
  }
  return result - start;
}
size_t
utf8_length_from_latin1 (const latin1_t *data, size_t len) {
  size_t counter = len;
  for (size_t i = 0; i < len; i++) {
    counter += data[i] >> 7;
  }
  return counter;
}
size_t
utf8_length_from_utf16le (const utf16_t *data, size_t len) {
  size_t counter = 0;
  uint16_t word;
  for (size_t i = 0; i < len; i++) {
    word = utf_is_be() ? utf_swap_uint16(data[i]) : data[i];
    if (word <= 0x7f) {
      counter++;
    } else if (word <= 0x7ff) {
      counter += 2;
    } else if ((word <= 0xd7ff) || (word >= 0xe000)) {
      counter += 3;
    } else {
      counter += 2;
    }
  }
  return counter;
}
size_t
utf8_length_from_utf32 (const utf32_t *data, size_t len) {
  size_t counter = 0;
  for (size_t i = 0; i < len; i++) {
    counter++;
    counter += data[i] > 0x7f;
    counter += data[i] > 0x7ff;
    counter += data[i] > 0xffff;
  }
  return counter;
}

extern void
utf8_string_init (utf8_string_t *string);
extern utf8_string_view_t
utf8_string_view_init (const utf8_t *data, size_t len);
extern void
utf8_string_destroy (utf8_string_t *string);
extern int
utf8_string_reserve (utf8_string_t *string, size_t len);
extern int
utf8_string_shrink_to_fit (utf8_string_t *string);
extern utf8_string_view_t
utf8_string_view (const utf8_string_t *string);
extern void
utf8_string_clear (utf8_string_t *string);
extern _Bool
utf8_string_empty (const utf8_string_t *string);
extern _Bool
utf8_string_view_empty (const utf8_string_view_t view);
extern int
utf8_string_copy (const utf8_string_t *string, utf8_string_t *result);
extern int
utf8_string_view_copy (const utf8_string_view_t view, utf8_string_t *result);
extern int
utf8_string_append (utf8_string_t *string, const utf8_string_t *other);
extern int
utf8_string_append_view (utf8_string_t *string, const utf8_string_view_t view);
extern int
utf8_string_append_character (utf8_string_t *string, utf8_t c);
extern int
utf8_string_append_literal (utf8_string_t *string, const utf8_t *literal, size_t n);
extern int
utf8_string_prepend (utf8_string_t *string, const utf8_string_t *other);
extern int
utf8_string_prepend_view (utf8_string_t *string, const utf8_string_view_t view);
extern int
utf8_string_prepend_character (utf8_string_t *string, utf8_t c);
extern int
utf8_string_prepend_literal (utf8_string_t *string, const utf8_t *literal, size_t n);
extern int
utf8_string_insert (utf8_string_t *string, size_t pos, const utf8_string_t *other);
extern int
utf8_string_insert_view (utf8_string_t *string, size_t pos, const utf8_string_view_t other);
extern int
utf8_string_insert_character (utf8_string_t *string, size_t pos, utf8_t c);
extern int
utf8_string_insert_literal (utf8_string_t *string, size_t pos, const utf8_t *literal, size_t n);
extern int
utf8_string_replace (utf8_string_t *string, size_t pos, size_t len, const utf8_string_t *replacement);
extern int
utf8_string_replace_view (utf8_string_t *string, size_t pos, size_t len, const utf8_string_view_t replacement);
extern int
utf8_string_replace_character (utf8_string_t *string, size_t pos, size_t len, utf8_t c);
extern int
utf8_string_replace_literal (utf8_string_t *string, size_t pos, size_t len, const utf8_t *literal, size_t n);
extern int
utf8_string_erase (utf8_string_t *string, size_t pos, size_t len);
extern int
utf8_string_concat (const utf8_string_t *string, const utf8_string_t *other, utf8_string_t *result);
extern int
utf8_string_view_concat (const utf8_string_view_t view, const utf8_string_t *other, utf8_string_t *result);
extern int
utf8_string_concat_view (const utf8_string_t *string, const utf8_string_view_t other, utf8_string_t *result);
extern int
utf8_string_view_concat_view (const utf8_string_view_t view, const utf8_string_view_t other, utf8_string_t *result);
extern int
utf8_string_concat_character (const utf8_string_t *string, utf8_t c, utf8_string_t *result);
extern int
utf8_string_view_concat_character (const utf8_string_view_t view, utf8_t c, utf8_string_t *result);
extern int
utf8_string_concat_literal (const utf8_string_t *string, const utf8_t *literal, size_t n, utf8_string_t *result);
extern int
utf8_string_view_concat_literal (const utf8_string_view_t view, const utf8_t *literal, size_t n, utf8_string_t *result);
extern int
utf8_string_compare (const utf8_string_t *string, const utf8_string_t *other);
extern int
utf8_string_view_compare (const utf8_string_view_t view, const utf8_string_view_t other);
extern int
utf8_string_compare_literal (const utf8_string_t *string, const utf8_t *literal, size_t n);
extern int
utf8_string_view_compare_literal (const utf8_string_view_t view, const utf8_t *literal, size_t n);
extern utf8_string_view_t
utf8_string_substring (const utf8_string_t *string, size_t start, size_t end);
extern utf8_string_view_t
utf8_string_view_substring (const utf8_string_view_t view, size_t start, size_t end);
extern int
utf8_string_substring_copy (const utf8_string_t *string, size_t start, size_t end, utf8_string_t *result);
extern int
utf8_string_view_substring_copy (const utf8_string_view_t view, size_t start, size_t end, utf8_string_t *result);
extern size_t
utf8_string_index_of_character (const utf8_string_t *string, size_t pos, utf8_t c);
extern size_t
utf8_string_view_index_of_character (const utf8_string_view_t view, size_t pos, utf8_t c);
extern size_t
utf8_string_last_index_of_character (const utf8_string_t *string, size_t pos, utf8_t c);
extern size_t
utf8_string_view_last_index_of_character (const utf8_string_view_t view, size_t pos, utf8_t c);

_Bool
utf8_validate (const utf8_t *data, size_t len) {
  uint64_t pos = 0;
  uint8_t word;
  while (pos < len) {
    uint64_t next_pos = pos + 16;
    if (next_pos <= len) {
      uint64_t v1;
      memcpy(&v1, data + pos, sizeof(uint64_t));
      uint64_t v2;
      memcpy(&v2, data + pos + sizeof(uint64_t), sizeof(uint64_t));
      uint64_t v = v1 | v2;
      if ((v & 0x8080808080808080) == 0) {
        pos = next_pos;
        continue;
      }
    }
    word = data[pos];
    while (word < 0b10000000) {
      if (++pos == len) return 1;
      word = data[pos];
    }
    if ((word & 0b11100000) == 0b11000000) {
      next_pos = pos + 2;
      if (next_pos > len) {
        return 0;
      }
      if ((data[pos + 1] & 0b11000000) != 0b10000000) {
        return 0;
      }
      uint32_t code_point = ((word & 0b00011111) << 6) |
                            (data[pos + 1] & 0b00111111);
      if ((code_point < 0x80) || (0x7ff < code_point)) {
        return 0;
      }
    } else if ((word & 0b11110000) == 0b11100000) {
      next_pos = pos + 3;
      if (next_pos > len) {
        return 0;
      }
      if ((data[pos + 1] & 0b11000000) != 0b10000000) {
        return 0;
      }
      if ((data[pos + 2] & 0b11000000) != 0b10000000) {
        return 0;
      }
      uint32_t code_point = ((word & 0b00001111) << 12) |
                            ((data[pos + 1] & 0b00111111) << 6) |
                            (data[pos + 2] & 0b00111111);
      if ((code_point < 0x800) || (0xffff < code_point) || (0xd7ff < code_point && code_point < 0xe000)) {
        return 0;
      }
    } else if ((word & 0b11111000) == 0b11110000) {
      next_pos = pos + 4;
      if (next_pos > len) {
        return 0;
      }
      if ((data[pos + 1] & 0b11000000) != 0b10000000) {
        return 0;
      }
      if ((data[pos + 2] & 0b11000000) != 0b10000000) {
        return 0;
      }
      if ((data[pos + 3] & 0b11000000) != 0b10000000) {
        return 0;
      }
      uint32_t code_point = ((word & 0b00000111) << 18) |
                            ((data[pos + 1] & 0b00111111) << 12) |
                            ((data[pos + 2] & 0b00111111) << 6) |
                            (data[pos + 3] & 0b00111111);
      if (code_point <= 0xffff || 0x10ffff < code_point) {
        return 0;
      }
    } else {
      return 0;
    }
    pos = next_pos;
  }
  return 1;
}

