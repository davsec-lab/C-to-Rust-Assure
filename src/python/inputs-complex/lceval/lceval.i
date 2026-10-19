typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef long unsigned int size_t;
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
typedef enum {
  L_PAREN,
  R_PAREN,
  LAMBDA,
  DOT,
  VARIABLE,
  ERROR,
  WHITESPACE,
  NEWLINE,
  EQ,
  QUOTE,
  COLON,
} tokens_t;
typedef struct AstNode AstNode;
typedef enum {
  LAMBDA_EXPR,
  APPLICATION,
  VAR,
  DEFINITION,
} AstNodeType;
typedef struct {
  char *parameter;
  char *type;
  AstNode *body;
} LambdaExpression;
typedef struct {
  AstNode *function;
  AstNode *argument;
} Application;
typedef struct {
  char *name;
  char *type;
} Variable;
typedef union {
  LambdaExpression *lambda_expr;
  Application *application;
  Variable *variable;
} AstNodeUnion;
struct AstNode {
  AstNodeType type;
  AstNodeUnion node;
};
void set_verbose(_Bool verbose);
void print_ast_verbose(AstNode *n);
void print_verbose(const char *format, ...);
void error(const char *msg, const char *file, int line, const char *func);
char* format(const char *fmt, ...);
void append_to_buffer(char **buffer, size_t *buffer_size, size_t *length, const char *str);
void append_ast_to_buffer(char **buffer, size_t *buffer_size, size_t *length, AstNode *node);
char *ast_to_string(AstNode *node);
typedef struct HashNode {
  char *key;
  struct AstNode *value;
  struct HashNode *next;
} HashNode;
typedef struct HashTable {
  HashNode *table[2000];
} HashTable;
unsigned int hash(const char *key);
void insert(HashTable *hashTable, const char *key, struct AstNode *value);
_Bool table_exists(HashTable *hashTable, const char *key);
AstNode *search(HashTable *hashTable, const char *key);
void delete_c(HashTable *hashTable, const char *key);
HashTable *createHashTable();
void destroyHashTable(HashTable *hashTable);

typedef enum {
  APPLICATIVE,
  NORMAL,
} reduction_order_t;
typedef enum {
  FILENAME,
  STEP_REDUCTION,
  REDUCTION_ORDER,
  CONFIG_ERROR,
} option_type_t;
typedef struct {
  FILE *file;
  _Bool step_by_step_reduction;
  reduction_order_t reduction_order;
} Options;
void trim(char *str);
option_type_t get_config_type(char *key);
void parse_config(char *line, char **key, char **value);
Options get_config_from_file();
FILE *create_file(char *path);
FILE *get_file(char *path, char *mode);
void write_to_file(FILE *file, char *content);
void delete_file(char *path);
void close_file(FILE *file);
char next(FILE *file);
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int isalnum (int) __attribute__ ((__nothrow__ ));
extern int isalpha (int) __attribute__ ((__nothrow__ ));
extern int iscntrl (int) __attribute__ ((__nothrow__ ));
extern int isdigit (int) __attribute__ ((__nothrow__ ));
extern int islower (int) __attribute__ ((__nothrow__ ));
extern int isgraph (int) __attribute__ ((__nothrow__ ));
extern int isprint (int) __attribute__ ((__nothrow__ ));
extern int ispunct (int) __attribute__ ((__nothrow__ ));
extern int isspace (int) __attribute__ ((__nothrow__ ));
extern int isupper (int) __attribute__ ((__nothrow__ ));
extern int isxdigit (int) __attribute__ ((__nothrow__ ));
extern int tolower (int __c) __attribute__ ((__nothrow__ ));
extern int toupper (int __c) __attribute__ ((__nothrow__ ));
extern int isblank (int) __attribute__ ((__nothrow__ ));
extern int isascii (int __c) __attribute__ ((__nothrow__ ));
extern int toascii (int __c) __attribute__ ((__nothrow__ ));
extern int _toupper (int) __attribute__ ((__nothrow__ ));
extern int _tolower (int) __attribute__ ((__nothrow__ ));
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
extern int isalnum_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int isalpha_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int iscntrl_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int isdigit_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int islower_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int isgraph_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int isprint_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int ispunct_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int isspace_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int isupper_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int isxdigit_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int isblank_l (int, locale_t) __attribute__ ((__nothrow__ ));
extern int __tolower_l (int __c, locale_t __l) __attribute__ ((__nothrow__ ));
extern int tolower_l (int __c, locale_t __l) __attribute__ ((__nothrow__ ));
extern int __toupper_l (int __c, locale_t __l) __attribute__ ((__nothrow__ ));
extern int toupper_l (int __c, locale_t __l) __attribute__ ((__nothrow__ ));
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

tokens_t parse_token(char token);
void p_print_token(tokens_t token);
void p_print_astNode_type(AstNode *n);
void print_ast(AstNode *node);
_Bool is_variable(char token);
char peek(FILE *in);
void peek_print(FILE *in, int n);
void consume(tokens_t t, FILE *in, char *expected);
AstNode *create_variable(char *name, char *type);
AstNode *create_application(AstNode *function, AstNode *argument);
AstNode *create_lambda(char *variable, AstNode *body, char *type);
char *alpha_convert(char *old);
_Bool is_used(HashTable *table, char *variable);
void parse_space_chars(FILE *in);
AstNode *parse_lambda(HashTable *table, FILE *in);
AstNode *parse_expression(HashTable *table, FILE *in);
void parse_import(HashTable *table, FILE *in);
void parse_definition(HashTable *table, FILE *in);
_Bool is_uppercase(char c);
void parse_type_definition(HashTable *types_table, FILE *in);
char *parse_type(HashTable *types_table, FILE *in);
char *parse_variable(FILE *in);
void expect(char *expected, char received);
void free_ast(AstNode *node);
void set_reduction_order(reduction_order_t t);
void print_reduction_order(reduction_order_t t);
AstNode *reduce(HashTable *table, AstNode *n);
void expand_definitions(HashTable *table, AstNode *n);
void replace(AstNode *n, char *old, char *new_name);
AstNode *reduce_ast(HashTable *table, AstNode *n);
AstNode *substitute(AstNode *expression, char *variable, AstNode *replacement);
AstNode *deepcopy(AstNode *n);
AstNode *deepcopy_application(AstNode *function, AstNode *argument);
AstNode *deepcopy_lambda_expr(char *parameter, AstNode *body, char *type);
AstNode *deepcopy_var(char *name, char *type);
typedef struct Type {
  AstNode *expr;
  char *type;
  char *return_type;
} Type;
typedef struct TypeEnv {
  Type *type;
  struct TypeEnv *next;
} TypeEnv;
void assert_(_Bool expr, char *error_msg);
Type *typecheck(AstNode *expr, TypeEnv *env);
_Bool type_equal(Type *a, Type *b);
char *get_type_from_expr(AstNode *expr);
void p_print_type(Type *t);
Type *create_type(char *type, char *return_type, AstNode *expr);
Type *parse_function_type(char *type);
_Bool expr_type_equal(Type *t, AstNode *expr);
void add_to_env(TypeEnv **env, Type *type);
Type *lookup_type(TypeEnv *env, AstNode *expr);
char *get_str_input(char *input_msg, char *error_msg) {
  char *input = malloc(1000 + 1 * sizeof(char));
  do { if ((input) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/bin/main.c", 15, __func__); abort(); } } while (0);
  printf("%s", input_msg);
  if (fgets(input, 1000 + 1, stdin) == ((void*)0)) {
    free(input);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/bin/main.c", 21, __func__);
  }
  size_t len = strlen(input);
  if (len > 0 && input[len - 1] == '\n') {
    input[len - 1] = '\0';
  }
  return input;
}
char *get_lambda_expr_input() {
  char *lambda_expr =
      get_str_input("Enter the lambda expression: ",
                    "failed to read the lambda expression.");
  FILE *file = create_file("tmp/expr.lambda");
  write_to_file(file, lambda_expr);
  close_file(file);
  return "tmp/expr.lambda";
}
char *get_file_path_input() {
  char *file_path = get_str_input("Enter the file path for your expression: ",
                                  "failed to read file path.");
  return file_path;
}
_Bool get_reduction_step_option() {
  int option;
  while (1) {
    printf("Choose: \n[1] Normal reduction\n[2] Step by step reduction\n");
    scanf("%d", &option);
    while (getchar() != '\n')
      ;
    switch (option) {
    case 1: {
      return 0;
    }
    case 2: {
      return 1;
    }
    default:
      return 0;
    }
  }
}
reduction_order_t get_reduction_order() {
  int option;
  while (1) {
    printf("Choose: \n[1] Normal order\n[2] Applicative Order\n");
    scanf("%d", &option);
    while (getchar() != '\n')
      ;
    switch (option) {
    case 1: {
      return NORMAL;
    }
    case 2: {
      return APPLICATIVE;
    }
    }
  }
}
_Bool exists(char *path) {
  FILE *file;
  if ((file = fopen(path, "r")) != ((void*)0)) {
    fclose(file);
    return 1;
  }
  return 0;
}
Options cli() {
  FILE *f;
  int option;
  _Bool valid_option = 0;
  _Bool step_by_step_reduction = get_reduction_step_option();
  reduction_order_t reduction_order = get_reduction_order();
  while (!valid_option) {
    printf("Choose your option:\n[1] Write input\n[2] File input\n");
    scanf("%d", &option);
    while (getchar() != '\n')
      ;
    switch (option) {
    case 1: {
      char *path = get_lambda_expr_input();
      f = get_file(path, "r");
      valid_option = 1;
      break;
    }
    case 2: {
      char *path = get_file_path_input();
      f = get_file(path, "r");
      free(path);
      valid_option = 1;
      break;
    }
    default:
      printf("Invalid input. Try again\n");
      break;
    }
  }
  Options opt;
  opt.file = f;
  opt.step_by_step_reduction = step_by_step_reduction;
  opt.reduction_order = reduction_order;
  return opt;
}
int main(void) {
  Options opt;
  if (exists("config")) {
    opt = get_config_from_file();
  } else {
    opt = cli();
  }
  set_verbose(opt.step_by_step_reduction);
  set_reduction_order(opt.reduction_order);
  FILE *in = opt.file;
  do { if ((in) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/bin/main.c", 148, __func__); abort(); } } while (0);
  HashTable *table = createHashTable();
  AstNode *parsed = parse_expression(table, in);
  printf("\nPARSED AST: \n");
  print_ast(parsed);
  print_verbose("\nTYPECHECKING --------------------------------------------------------------\n");
  typecheck(parsed, ((void*)0));
  print_verbose("TYPECHECKING DONE! PROCEEDING TO REDUCE.");
  AstNode *reduced = reduce(table, parsed);
  printf("\nReduced ast:\n");
  char *reduced_ast_str = ast_to_string(reduced);
  printf("%s\n", reduced_ast_str);
  destroyHashTable(table);
  close_file(in);
  return 1;
}
unsigned int hash(const char *key) {
  unsigned long hash = 5381;
  int c;
  while ((c = *key++))
    hash = ((hash << 5) + hash) + c;
  return hash % 2000;
}
void insert(HashTable *hashTable, const char *key, struct AstNode *value) {
  unsigned int index = hash(key);
  HashNode *newNode = (HashNode *)malloc(sizeof(HashNode));
  newNode->key = strdup(key);
  newNode->value = value;
  newNode->next = ((void*)0);
  if (hashTable->table[index] == ((void*)0)) {
    hashTable->table[index] = newNode;
  } else {
    HashNode *current = hashTable->table[index];
    while (current->next != ((void*)0))
      current = current->next;
    current->next = newNode;
  }
}
_Bool table_exists(HashTable *hashTable, const char *key) {
  unsigned int index = hash(key);
  HashNode *node = hashTable->table[index];
  return node != ((void*)0);
}
AstNode *search(HashTable *hashTable, const char *key) {
  if (key == ((void*)0)) {
    return ((void*)0);
  }
  unsigned int index = hash(key);
  HashNode *current = hashTable->table[index];
  while (current != ((void*)0)) {
    if (strcmp(current->key, key) == 0) {
      return current->value;
    }
    current = current->next;
  }
  return ((void*)0);
}
void delete_c(HashTable *hashTable, const char *key) {
  unsigned int index = hash(key);
  HashNode *current = hashTable->table[index];
  HashNode *prev = ((void*)0);
  while (current != ((void*)0)) {
    if (strcmp(current->key, key) == 0) {
      if (prev == ((void*)0))
        hashTable->table[index] = current->next;
      else
        prev->next = current->next;
      free(current->key);
      free(current);
      return;
    }
    prev = current;
    current = current->next;
  }
}
HashTable *createHashTable() {
  HashTable *hashTable = (HashTable *)malloc(sizeof(HashTable));
  memset(hashTable->table, 0, sizeof(hashTable->table));
  return hashTable;
}
void destroyHashTable(HashTable *hashTable) {
  for (int i = 0; i < 2000; i++) {
    HashNode *current = hashTable->table[i];
    while (current != ((void*)0)) {
      HashNode *temp = current;
      current = current->next;
      if (temp->value != ((void*)0)) {
        free(temp->value);
      }
      free(temp->key);
      free(temp);
    }
  }
  free(hashTable);
}
static _Bool verbose_mode = 0;
void set_verbose(_Bool verbose) {
  verbose_mode = verbose;
}
void print_ast_verbose(AstNode *n) {
  if (verbose_mode == 0) {
    return;
  }
  char *lambda_ast = ast_to_string(n);
  printf("%s\n", lambda_ast);
}
void print_verbose(const char *format, ...) {
  if (verbose_mode == 0) {
    return;
  }
  printf("\n");
  va_list args;
  __builtin_va_start(args, format);
  vprintf(format, args);
  __builtin_va_end(args);
}
void error(const char *msg, const char *file, int line, const char *func) {
  fprintf(stderr, "ERROR: %s at %s:%d in %s()\n", msg, file, line, func);
  exit(1);
}
char* format(const char *fmt, ...) {
    va_list args;
    __builtin_va_start(args, fmt);
    int size = vsnprintf(((void*)0), 0, fmt, args);
    __builtin_va_end(args);
    if (size < 0) {
        return ((void*)0);
    }
    char *str = (char *)malloc(size + 1);
    if (!str) {
        return ((void*)0);
    }
    __builtin_va_start(args, fmt);
    vsnprintf(str, size + 1, fmt, args);
    __builtin_va_end(args);
    return str;
}
void append_to_buffer(char **buffer, size_t *buffer_size, size_t *length, const char *str) {
    size_t str_len = strlen(str);
    while (*length + str_len + 1 >= *buffer_size) {
        *buffer_size *= 2;
        *buffer = realloc(*buffer, *buffer_size);
    }
    strcpy(*buffer + *length, str);
    *length += str_len;
}
void append_ast_to_buffer(char **buffer, size_t *buffer_size, size_t *length, AstNode *node) {
    if (node == ((void*)0)) {
        return;
    }
    switch (node->type) {
        case LAMBDA_EXPR:
            append_to_buffer(buffer, buffer_size, length, "(@");
            append_to_buffer(buffer, buffer_size, length, node->node.lambda_expr->parameter);
            append_to_buffer(buffer, buffer_size, length, " : ");
            append_to_buffer(buffer, buffer_size, length, node->node.lambda_expr->type);
            append_to_buffer(buffer, buffer_size, length, " .");
            append_ast_to_buffer(buffer, buffer_size, length, node->node.lambda_expr->body);
            append_to_buffer(buffer, buffer_size, length, ") ");
            break;
        case APPLICATION:
            append_to_buffer(buffer, buffer_size, length, "(");
            append_ast_to_buffer(buffer, buffer_size, length, node->node.application->function);
            append_ast_to_buffer(buffer, buffer_size, length, node->node.application->argument);
            append_to_buffer(buffer, buffer_size, length, ") ");
            break;
        case VAR:
            append_to_buffer(buffer, buffer_size, length, "(");
            append_to_buffer(buffer, buffer_size, length, node->node.variable->name);
            if (node->node.variable->type != ((void*)0)) {
              append_to_buffer(buffer, buffer_size, length, " : ");
              append_to_buffer(buffer, buffer_size, length, node->node.variable->type);
            }
            append_to_buffer(buffer, buffer_size, length, ") ");
            break;
        case DEFINITION:
            append_to_buffer(buffer, buffer_size, length, "(");
            append_to_buffer(buffer, buffer_size, length, node->node.variable->name);
            append_to_buffer(buffer, buffer_size, length, ") ");
            break;
        default:
            append_to_buffer(buffer, buffer_size, length, "(UNKNOWN) ");
    }
}
char *ast_to_string(AstNode *node) {
    size_t buffer_size = 1024;
    char *buffer = malloc(buffer_size);
    buffer[0] = '\0';
    size_t length = 0;
    append_ast_to_buffer(&buffer, &buffer_size, &length, node);
    return buffer;
}
void trim(char *str) {
  int start = 0, end = strlen(str) - 1;
  while (((*__ctype_b_loc ())[(int) ((str[start]))] & (unsigned short int) _ISspace)) {
    start++;
  }
  while (end > start && ((*__ctype_b_loc ())[(int) ((str[end]))] & (unsigned short int) _ISspace)) {
    end--;
  }
  if (start > 0 || end < (strlen(str) - 1)) {
    memmove(str, str + start, end - start + 1);
    str[end - start + 1] = '\0';
  }
}
option_type_t get_config_type(char *key) {
  if (strcmp(key, "file") == 0) {
    return FILENAME;
  } else if (strcmp(key, "step_by_step_reduction") == 0) {
    return STEP_REDUCTION;
  } else if (strcmp(key, "reduction_order") == 0) {
    return REDUCTION_ORDER;
  } else {
    const char *error_msg = format("ERROR: Invalid key '%s' at config file.", key);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/config.c", 36, __func__);
  }
  return CONFIG_ERROR;
}
void parse_config(char *line, char **key, char **value) {
  char *eq_pos = strchr(line, '=');
  if (eq_pos == ((void*)0)) {
    const char *error_msg = format("Malformed config file at line: %s . Expected = sign.\n",
                line);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/config.c", 46, __func__);
  }
  *key = strtok(line, "=");
  trim(*key);
  *value = strtok(((void*)0), "=");
  trim(*value);
}
Options get_config_from_file() {
  char *line = ((void*)0);
  size_t len = 0;
  FILE *config_file = get_file("config", "r");
  Options options;
  options.reduction_order = APPLICATIVE;
  options.step_by_step_reduction = 0;
  options.file = ((void*)0);
  while (getline(&line, &len, config_file) != -1) {
    char *key, *value;
    parse_config(line, &key, &value);
    option_type_t cfg = get_config_type(key);
    switch (cfg) {
    case FILENAME: {
      options.file = get_file(value, "r");
      break;
    }
    case STEP_REDUCTION: {
      if (strcmp(value, "true") == 0) {
        options.step_by_step_reduction = 1;
        break;
      }
      options.step_by_step_reduction = 0;
      break;
    }
    case REDUCTION_ORDER: {
      if (strcmp(value, "applicative") == 0) {
        options.reduction_order = APPLICATIVE;
        break;
      } else if (strcmp(value, "normal") == 0) {
        options.reduction_order = NORMAL;
        break;
      } else {
        const char *error_msg = "ERROR: reduction order in cfg file should be 'normal' "
                                "or 'applicative'.";
        error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/config.c", 93, __func__);
      }
    }
    case CONFIG_ERROR: {
      const char *error_msg = format("Unrecognized key: %s", key);
      error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/config.c", 98, __func__);
    }
    }
  }
  if (options.file == ((void*)0)) {
    const char *error_msg = "ERROR: File cannot be null in cfg file.\n";
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/config.c", 104, __func__);
  }
  return options;
}
FILE *create_file(char *path) {
  FILE *file = fopen(path, "w");
  if (file == ((void*)0)) {
    const char *error_msg = format("ERROR: Could not create file %s\n", path);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c", 10, __func__);
  }
  return file;
}
FILE *get_file(char *path, char *mode) {
  FILE *file = fopen(path, mode);
  if (file == ((void*)0)) {
    const char *error_msg = format("ERROR: Could not open file %s\n", path);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c", 19, __func__);
  }
  return file;
}
void write_to_file(FILE *file, char *content) {
  do { if ((file) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c", 25, __func__); abort(); } } while (0);
  if (fputs(content, file) == (-1)) {
    const char *error_msg = format("ERROR: could not write to file at %s:%d\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c",
                28);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c", 29, __func__);
  }
  rewind(file);
}
void delete_file(char *path) {
  int status = remove(path);
  if (status != 0) {
    const char *error_msg = format("ERROR: could not delete to file at %s:%d\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c",
                38);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c", 39, __func__);
  }
}
void close_file(FILE *file) {
  if (fclose(file) != 0) {
    const char *error_msg = format("ERROR: Could not close file at %s:%d\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c",
                46);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c", 47, __func__);
  }
}
char next(FILE *file) {
  int x = fgetc(file);
  return (char)x;
}
typedef float float_t;
typedef double double_t;
extern int __fpclassify (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
extern int __signbit (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
extern int __isinf (double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int __finite (double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int __isnan (double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int __iseqsig (double __x, double __y) __attribute__ ((__nothrow__ ));
extern int __issignaling (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
 extern double acos (double __x) __attribute__ ((__nothrow__ )); extern double __acos (double __x) __attribute__ ((__nothrow__ ));
 extern double asin (double __x) __attribute__ ((__nothrow__ )); extern double __asin (double __x) __attribute__ ((__nothrow__ ));
 extern double atan (double __x) __attribute__ ((__nothrow__ )); extern double __atan (double __x) __attribute__ ((__nothrow__ ));
 extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ )); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ ));
 extern double cos (double __x) __attribute__ ((__nothrow__ )); extern double __cos (double __x) __attribute__ ((__nothrow__ ));
 extern double sin (double __x) __attribute__ ((__nothrow__ )); extern double __sin (double __x) __attribute__ ((__nothrow__ ));
 extern double tan (double __x) __attribute__ ((__nothrow__ )); extern double __tan (double __x) __attribute__ ((__nothrow__ ));
 extern double cosh (double __x) __attribute__ ((__nothrow__ )); extern double __cosh (double __x) __attribute__ ((__nothrow__ ));
 extern double sinh (double __x) __attribute__ ((__nothrow__ )); extern double __sinh (double __x) __attribute__ ((__nothrow__ ));
 extern double tanh (double __x) __attribute__ ((__nothrow__ )); extern double __tanh (double __x) __attribute__ ((__nothrow__ ));
 extern double acosh (double __x) __attribute__ ((__nothrow__ )); extern double __acosh (double __x) __attribute__ ((__nothrow__ ));
 extern double asinh (double __x) __attribute__ ((__nothrow__ )); extern double __asinh (double __x) __attribute__ ((__nothrow__ ));
 extern double atanh (double __x) __attribute__ ((__nothrow__ )); extern double __atanh (double __x) __attribute__ ((__nothrow__ ));
 extern double exp (double __x) __attribute__ ((__nothrow__ )); extern double __exp (double __x) __attribute__ ((__nothrow__ ));
extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ )); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern double log (double __x) __attribute__ ((__nothrow__ )); extern double __log (double __x) __attribute__ ((__nothrow__ ));
 extern double log10 (double __x) __attribute__ ((__nothrow__ )); extern double __log10 (double __x) __attribute__ ((__nothrow__ ));
extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ )); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern double expm1 (double __x) __attribute__ ((__nothrow__ )); extern double __expm1 (double __x) __attribute__ ((__nothrow__ ));
 extern double log1p (double __x) __attribute__ ((__nothrow__ )); extern double __log1p (double __x) __attribute__ ((__nothrow__ ));
extern double logb (double __x) __attribute__ ((__nothrow__ )); extern double __logb (double __x) __attribute__ ((__nothrow__ ));
 extern double exp2 (double __x) __attribute__ ((__nothrow__ )); extern double __exp2 (double __x) __attribute__ ((__nothrow__ ));
 extern double log2 (double __x) __attribute__ ((__nothrow__ )); extern double __log2 (double __x) __attribute__ ((__nothrow__ ));
 extern double pow (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ ));
extern double sqrt (double __x) __attribute__ ((__nothrow__ )); extern double __sqrt (double __x) __attribute__ ((__nothrow__ ));
 extern double hypot (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __hypot (double __x, double __y) __attribute__ ((__nothrow__ ));
 extern double cbrt (double __x) __attribute__ ((__nothrow__ )); extern double __cbrt (double __x) __attribute__ ((__nothrow__ ));
extern double ceil (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fabs (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double floor (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ ));
extern int isinf (double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int finite (double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern double drem (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __drem (double __x, double __y) __attribute__ ((__nothrow__ ));
extern double significand (double __x) __attribute__ ((__nothrow__ )); extern double __significand (double __x) __attribute__ ((__nothrow__ ));
extern double copysign (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double nan (const char *__tagb) __attribute__ ((__nothrow__ )); extern double __nan (const char *__tagb) __attribute__ ((__nothrow__ ));
extern int isnan (double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern double j0 (double) __attribute__ ((__nothrow__ )); extern double __j0 (double) __attribute__ ((__nothrow__ ));
extern double j1 (double) __attribute__ ((__nothrow__ )); extern double __j1 (double) __attribute__ ((__nothrow__ ));
extern double jn (int, double) __attribute__ ((__nothrow__ )); extern double __jn (int, double) __attribute__ ((__nothrow__ ));
extern double y0 (double) __attribute__ ((__nothrow__ )); extern double __y0 (double) __attribute__ ((__nothrow__ ));
extern double y1 (double) __attribute__ ((__nothrow__ )); extern double __y1 (double) __attribute__ ((__nothrow__ ));
extern double yn (int, double) __attribute__ ((__nothrow__ )); extern double __yn (int, double) __attribute__ ((__nothrow__ ));
 extern double erf (double) __attribute__ ((__nothrow__ )); extern double __erf (double) __attribute__ ((__nothrow__ ));
 extern double erfc (double) __attribute__ ((__nothrow__ )); extern double __erfc (double) __attribute__ ((__nothrow__ ));
extern double lgamma (double) __attribute__ ((__nothrow__ )); extern double __lgamma (double) __attribute__ ((__nothrow__ ));
extern double tgamma (double) __attribute__ ((__nothrow__ )); extern double __tgamma (double) __attribute__ ((__nothrow__ ));
extern double gamma (double) __attribute__ ((__nothrow__ )); extern double __gamma (double) __attribute__ ((__nothrow__ ));
extern double lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ )); extern double __lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ ));
extern double rint (double __x) __attribute__ ((__nothrow__ )); extern double __rint (double __x) __attribute__ ((__nothrow__ ));
extern double nextafter (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __nextafter (double __x, double __y) __attribute__ ((__nothrow__ ));
extern double nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ )); extern double __nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ ));
extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ ));
extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ )); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogb (double __x) __attribute__ ((__nothrow__ )); extern int __ilogb (double __x) __attribute__ ((__nothrow__ ));
extern double scalbln (double __x, long int __n) __attribute__ ((__nothrow__ )); extern double __scalbln (double __x, long int __n) __attribute__ ((__nothrow__ ));
extern double nearbyint (double __x) __attribute__ ((__nothrow__ )); extern double __nearbyint (double __x) __attribute__ ((__nothrow__ ));
extern double round (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __round (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double trunc (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __trunc (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ )); extern double __remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ ));
extern long int lrint (double __x) __attribute__ ((__nothrow__ )); extern long int __lrint (double __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrint (double __x) __attribute__ ((__nothrow__ )); extern long long int __llrint (double __x) __attribute__ ((__nothrow__ ));
extern long int lround (double __x) __attribute__ ((__nothrow__ )); extern long int __lround (double __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llround (double __x) __attribute__ ((__nothrow__ )); extern long long int __llround (double __x) __attribute__ ((__nothrow__ ));
extern double fdim (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __fdim (double __x, double __y) __attribute__ ((__nothrow__ ));
extern double fmax (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fmin (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ )); extern double __fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ ));
extern double scalb (double __x, double __n) __attribute__ ((__nothrow__ )); extern double __scalb (double __x, double __n) __attribute__ ((__nothrow__ ));
extern int __fpclassifyf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
extern int __signbitf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
extern int __isinff (float __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int __finitef (float __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int __isnanf (float __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int __iseqsigf (float __x, float __y) __attribute__ ((__nothrow__ ));
extern int __issignalingf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
 extern float acosf (float __x) __attribute__ ((__nothrow__ )); extern float __acosf (float __x) __attribute__ ((__nothrow__ ));
 extern float asinf (float __x) __attribute__ ((__nothrow__ )); extern float __asinf (float __x) __attribute__ ((__nothrow__ ));
 extern float atanf (float __x) __attribute__ ((__nothrow__ )); extern float __atanf (float __x) __attribute__ ((__nothrow__ ));
 extern float atan2f (float __y, float __x) __attribute__ ((__nothrow__ )); extern float __atan2f (float __y, float __x) __attribute__ ((__nothrow__ ));
 extern float cosf (float __x) __attribute__ ((__nothrow__ )); extern float __cosf (float __x) __attribute__ ((__nothrow__ ));
 extern float sinf (float __x) __attribute__ ((__nothrow__ )); extern float __sinf (float __x) __attribute__ ((__nothrow__ ));
 extern float tanf (float __x) __attribute__ ((__nothrow__ )); extern float __tanf (float __x) __attribute__ ((__nothrow__ ));
 extern float coshf (float __x) __attribute__ ((__nothrow__ )); extern float __coshf (float __x) __attribute__ ((__nothrow__ ));
 extern float sinhf (float __x) __attribute__ ((__nothrow__ )); extern float __sinhf (float __x) __attribute__ ((__nothrow__ ));
 extern float tanhf (float __x) __attribute__ ((__nothrow__ )); extern float __tanhf (float __x) __attribute__ ((__nothrow__ ));
 extern float acoshf (float __x) __attribute__ ((__nothrow__ )); extern float __acoshf (float __x) __attribute__ ((__nothrow__ ));
 extern float asinhf (float __x) __attribute__ ((__nothrow__ )); extern float __asinhf (float __x) __attribute__ ((__nothrow__ ));
 extern float atanhf (float __x) __attribute__ ((__nothrow__ )); extern float __atanhf (float __x) __attribute__ ((__nothrow__ ));
 extern float expf (float __x) __attribute__ ((__nothrow__ )); extern float __expf (float __x) __attribute__ ((__nothrow__ ));
extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ )); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ )); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern float logf (float __x) __attribute__ ((__nothrow__ )); extern float __logf (float __x) __attribute__ ((__nothrow__ ));
 extern float log10f (float __x) __attribute__ ((__nothrow__ )); extern float __log10f (float __x) __attribute__ ((__nothrow__ ));
extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ )); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern float expm1f (float __x) __attribute__ ((__nothrow__ )); extern float __expm1f (float __x) __attribute__ ((__nothrow__ ));
 extern float log1pf (float __x) __attribute__ ((__nothrow__ )); extern float __log1pf (float __x) __attribute__ ((__nothrow__ ));
extern float logbf (float __x) __attribute__ ((__nothrow__ )); extern float __logbf (float __x) __attribute__ ((__nothrow__ ));
 extern float exp2f (float __x) __attribute__ ((__nothrow__ )); extern float __exp2f (float __x) __attribute__ ((__nothrow__ ));
 extern float log2f (float __x) __attribute__ ((__nothrow__ )); extern float __log2f (float __x) __attribute__ ((__nothrow__ ));
 extern float powf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __powf (float __x, float __y) __attribute__ ((__nothrow__ ));
extern float sqrtf (float __x) __attribute__ ((__nothrow__ )); extern float __sqrtf (float __x) __attribute__ ((__nothrow__ ));
 extern float hypotf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __hypotf (float __x, float __y) __attribute__ ((__nothrow__ ));
 extern float cbrtf (float __x) __attribute__ ((__nothrow__ )); extern float __cbrtf (float __x) __attribute__ ((__nothrow__ ));
extern float ceilf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __ceilf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fabsf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fabsf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float floorf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __floorf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fmodf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __fmodf (float __x, float __y) __attribute__ ((__nothrow__ ));
extern int isinff (float __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int finitef (float __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern float dremf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __dremf (float __x, float __y) __attribute__ ((__nothrow__ ));
extern float significandf (float __x) __attribute__ ((__nothrow__ )); extern float __significandf (float __x) __attribute__ ((__nothrow__ ));
extern float copysignf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float nanf (const char *__tagb) __attribute__ ((__nothrow__ )); extern float __nanf (const char *__tagb) __attribute__ ((__nothrow__ ));
extern int isnanf (float __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern float j0f (float) __attribute__ ((__nothrow__ )); extern float __j0f (float) __attribute__ ((__nothrow__ ));
extern float j1f (float) __attribute__ ((__nothrow__ )); extern float __j1f (float) __attribute__ ((__nothrow__ ));
extern float jnf (int, float) __attribute__ ((__nothrow__ )); extern float __jnf (int, float) __attribute__ ((__nothrow__ ));
extern float y0f (float) __attribute__ ((__nothrow__ )); extern float __y0f (float) __attribute__ ((__nothrow__ ));
extern float y1f (float) __attribute__ ((__nothrow__ )); extern float __y1f (float) __attribute__ ((__nothrow__ ));
extern float ynf (int, float) __attribute__ ((__nothrow__ )); extern float __ynf (int, float) __attribute__ ((__nothrow__ ));
 extern float erff (float) __attribute__ ((__nothrow__ )); extern float __erff (float) __attribute__ ((__nothrow__ ));
 extern float erfcf (float) __attribute__ ((__nothrow__ )); extern float __erfcf (float) __attribute__ ((__nothrow__ ));
extern float lgammaf (float) __attribute__ ((__nothrow__ )); extern float __lgammaf (float) __attribute__ ((__nothrow__ ));
extern float tgammaf (float) __attribute__ ((__nothrow__ )); extern float __tgammaf (float) __attribute__ ((__nothrow__ ));
extern float gammaf (float) __attribute__ ((__nothrow__ )); extern float __gammaf (float) __attribute__ ((__nothrow__ ));
extern float lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ )); extern float __lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ ));
extern float rintf (float __x) __attribute__ ((__nothrow__ )); extern float __rintf (float __x) __attribute__ ((__nothrow__ ));
extern float nextafterf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __nextafterf (float __x, float __y) __attribute__ ((__nothrow__ ));
extern float nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ )); extern float __nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ ));
extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ ));
extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ )); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogbf (float __x) __attribute__ ((__nothrow__ )); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ ));
extern float scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ )); extern float __scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ ));
extern float nearbyintf (float __x) __attribute__ ((__nothrow__ )); extern float __nearbyintf (float __x) __attribute__ ((__nothrow__ ));
extern float roundf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __roundf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float truncf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __truncf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ )); extern float __remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ ));
extern long int lrintf (float __x) __attribute__ ((__nothrow__ )); extern long int __lrintf (float __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrintf (float __x) __attribute__ ((__nothrow__ )); extern long long int __llrintf (float __x) __attribute__ ((__nothrow__ ));
extern long int lroundf (float __x) __attribute__ ((__nothrow__ )); extern long int __lroundf (float __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llroundf (float __x) __attribute__ ((__nothrow__ )); extern long long int __llroundf (float __x) __attribute__ ((__nothrow__ ));
extern float fdimf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __fdimf (float __x, float __y) __attribute__ ((__nothrow__ ));
extern float fmaxf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fminf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ )); extern float __fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ ));
extern float scalbf (float __x, float __n) __attribute__ ((__nothrow__ )); extern float __scalbf (float __x, float __n) __attribute__ ((__nothrow__ ));
extern int __fpclassifyl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
extern int __signbitl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
extern int __isinfl (long double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int __finitel (long double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int __isnanl (long double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int __iseqsigl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern int __issignalingl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
 extern long double acosl (long double __x) __attribute__ ((__nothrow__ )); extern long double __acosl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double asinl (long double __x) __attribute__ ((__nothrow__ )); extern long double __asinl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double atanl (long double __x) __attribute__ ((__nothrow__ )); extern long double __atanl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ )); extern long double __atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ ));
 extern long double cosl (long double __x) __attribute__ ((__nothrow__ )); extern long double __cosl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double sinl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sinl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double tanl (long double __x) __attribute__ ((__nothrow__ )); extern long double __tanl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double coshl (long double __x) __attribute__ ((__nothrow__ )); extern long double __coshl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double sinhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sinhl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double tanhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __tanhl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double acoshl (long double __x) __attribute__ ((__nothrow__ )); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double asinhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double atanhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double expl (long double __x) __attribute__ ((__nothrow__ )); extern long double __expl (long double __x) __attribute__ ((__nothrow__ ));
extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ )); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern long double logl (long double __x) __attribute__ ((__nothrow__ )); extern long double __logl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double log10l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ ));
extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ )); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern long double expm1l (long double __x) __attribute__ ((__nothrow__ )); extern long double __expm1l (long double __x) __attribute__ ((__nothrow__ ));
 extern long double log1pl (long double __x) __attribute__ ((__nothrow__ )); extern long double __log1pl (long double __x) __attribute__ ((__nothrow__ ));
extern long double logbl (long double __x) __attribute__ ((__nothrow__ )); extern long double __logbl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double exp2l (long double __x) __attribute__ ((__nothrow__ )); extern long double __exp2l (long double __x) __attribute__ ((__nothrow__ ));
 extern long double log2l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log2l (long double __x) __attribute__ ((__nothrow__ ));
 extern long double powl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __powl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern long double sqrtl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sqrtl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
 extern long double cbrtl (long double __x) __attribute__ ((__nothrow__ )); extern long double __cbrtl (long double __x) __attribute__ ((__nothrow__ ));
extern long double ceill (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __ceill (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fabsl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fabsl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double floorl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __floorl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern int isinfl (long double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern int finitel (long double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern long double dreml (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __dreml (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern long double significandl (long double __x) __attribute__ ((__nothrow__ )); extern long double __significandl (long double __x) __attribute__ ((__nothrow__ ));
extern long double copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double nanl (const char *__tagb) __attribute__ ((__nothrow__ )); extern long double __nanl (const char *__tagb) __attribute__ ((__nothrow__ ));
extern int isnanl (long double __value) __attribute__ ((__nothrow__ ))
  __attribute__ ((__const__));
extern long double j0l (long double) __attribute__ ((__nothrow__ )); extern long double __j0l (long double) __attribute__ ((__nothrow__ ));
extern long double j1l (long double) __attribute__ ((__nothrow__ )); extern long double __j1l (long double) __attribute__ ((__nothrow__ ));
extern long double jnl (int, long double) __attribute__ ((__nothrow__ )); extern long double __jnl (int, long double) __attribute__ ((__nothrow__ ));
extern long double y0l (long double) __attribute__ ((__nothrow__ )); extern long double __y0l (long double) __attribute__ ((__nothrow__ ));
extern long double y1l (long double) __attribute__ ((__nothrow__ )); extern long double __y1l (long double) __attribute__ ((__nothrow__ ));
extern long double ynl (int, long double) __attribute__ ((__nothrow__ )); extern long double __ynl (int, long double) __attribute__ ((__nothrow__ ));
 extern long double erfl (long double) __attribute__ ((__nothrow__ )); extern long double __erfl (long double) __attribute__ ((__nothrow__ ));
 extern long double erfcl (long double) __attribute__ ((__nothrow__ )); extern long double __erfcl (long double) __attribute__ ((__nothrow__ ));
extern long double lgammal (long double) __attribute__ ((__nothrow__ )); extern long double __lgammal (long double) __attribute__ ((__nothrow__ ));
extern long double tgammal (long double) __attribute__ ((__nothrow__ )); extern long double __tgammal (long double) __attribute__ ((__nothrow__ ));
extern long double gammal (long double) __attribute__ ((__nothrow__ )); extern long double __gammal (long double) __attribute__ ((__nothrow__ ));
extern long double lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ )); extern long double __lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ ));
extern long double rintl (long double __x) __attribute__ ((__nothrow__ )); extern long double __rintl (long double __x) __attribute__ ((__nothrow__ ));
extern long double nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern long double nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ )); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogbl (long double __x) __attribute__ ((__nothrow__ )); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ ));
extern long double scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ )); extern long double __scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ ));
extern long double nearbyintl (long double __x) __attribute__ ((__nothrow__ )); extern long double __nearbyintl (long double __x) __attribute__ ((__nothrow__ ));
extern long double roundl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __roundl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double truncl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __truncl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ )); extern long double __remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ ));
extern long int lrintl (long double __x) __attribute__ ((__nothrow__ )); extern long int __lrintl (long double __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrintl (long double __x) __attribute__ ((__nothrow__ )); extern long long int __llrintl (long double __x) __attribute__ ((__nothrow__ ));
extern long int lroundl (long double __x) __attribute__ ((__nothrow__ )); extern long int __lroundl (long double __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llroundl (long double __x) __attribute__ ((__nothrow__ )); extern long long int __llroundl (long double __x) __attribute__ ((__nothrow__ ));
extern long double fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern long double fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fminl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ )); extern long double __fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ ));
extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ )); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ ));
extern int signgam;
enum
  {
    FP_NAN =
      0,
    FP_INFINITE =
      1,
    FP_ZERO =
      2,
    FP_SUBNORMAL =
      3,
    FP_NORMAL =
      4
  };

static int n = 1;
tokens_t parse_token(char token) {
  if (token == '(') {
    return L_PAREN;
  } else if (token == ')') {
    return R_PAREN;
  } else if (token == '@') {
    return LAMBDA;
  } else if (token == '.') {
    return DOT;
  } else if (is_variable(token)) {
    return VARIABLE;
  } else if (token == ' ') {
    return WHITESPACE;
  } else if (token == '\n') {
    return NEWLINE;
  } else if (token == '=') {
    return EQ;
  } else if (token == '"') {
    return QUOTE;
  } else if (token == ':') {
    return COLON;
  }
  return ERROR;
}
void p_print_token(tokens_t token) {
  switch (token) {
  case L_PAREN:
    printf("( ");
    return;
  case R_PAREN:
    printf(") ");
    return;
  case LAMBDA:
    printf("@ ");
    return;
  case DOT:
    printf(". ");
    return;
  case VARIABLE:
    printf("VARIABLE ");
    return;
  case WHITESPACE:
    printf("WHITESPACE ");
    return;
  case NEWLINE:
    printf("NEWLINE ");
    return;
  case EQ:
    printf("= ");
    return;
  default:
    printf("ERROR ");
    return;
  }
}
void p_print_astNode_type(AstNode *n) {
  switch (n->type) {
  case 0:
    printf("AstNode Type: LAMBDA_EXPR\n");
    break;
  case 1:
    printf("AstNode Type: APPLICATION\n");
    break;
  case 2:
    printf("AstNode Type: VAR\n");
    break;
  case DEFINITION:
    printf("AstNode Type: DEFINITION\n");
    break;
  }
}
void print_ast(AstNode *node) {
  if (node == ((void*)0)) {
    return;
  }
  switch (node->type) {
  case LAMBDA_EXPR:
    printf("(LAMBDA %s : %s", node->node.lambda_expr->parameter, node->node.lambda_expr->type);
    print_ast(node->node.lambda_expr->body);
    printf(") ");
    break;
  case APPLICATION:
    printf("(APP ");
    print_ast(node->node.application->function);
    print_ast(node->node.application->argument);
    printf(") ");
    break;
  case VAR:
    printf("(VAR %s ", node->node.variable->name);
    if (node->node.variable->type != ((void*)0)) {
      printf(": %s", node->node.variable->type);
    }
    printf(")");
    break;
  case DEFINITION:
    printf("(DEFINITION %s) ", node->node.variable->name);
    break;
  default:
    printf("(UNKNOWN) ");
  }
}
_Bool is_variable(char token) {
  int cmp = (int)token;
  if (cmp == '_') return 1;
  if ((cmp >= 97 && cmp <= 122) || (cmp >= 65 && cmp <= 90)) {
    return 1;
  }
  return 0;
}
char peek(FILE *in) {
  char c = fgetc(in);
  ungetc(c, in);
  return c;
}
void peek_print(FILE *in, int n) {
    char buffer[n + 1];
    int i;
    for (i = 0; i < n; i++) {
        int c = fgetc(in);
        if (c == (-1)) {
            break;
        }
        buffer[i] = (char)c;
    }
    buffer[i] = '\0';
    printf("%s", buffer);
    for (i--; i >= 0; i--) {
        ungetc(buffer[i], in);
    }
}
void consume(tokens_t t, FILE *in, char *expected) {
  char c = next(in);
  tokens_t p = parse_token(c);
  if (p != t) {
    expect(expected, c);
  }
}
AstNode *create_variable(char *name, char *type) {
  AstNode *var = (AstNode *)malloc(sizeof(AstNode));
  do { if ((var) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 177, __func__); abort(); } } while (0);
  var->type = VAR;
  var->node.variable = (Variable *)malloc(sizeof(Variable));
  var->node.variable->name = name;
  var->node.variable->type = type;
  return var;
}
AstNode *create_application(AstNode *function, AstNode *argument) {
  AstNode *app = (AstNode *)malloc(sizeof(AstNode));
  do { if ((app) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 187, __func__); abort(); } } while (0);
  app->type = APPLICATION;
  app->node.application = (Application *)malloc(sizeof(Application));
  app->node.application->function = function;
  app->node.application->argument = argument;
  return app;
}
AstNode *create_lambda(char *variable, AstNode *body, char *type) {
  AstNode *lambda = (AstNode *)malloc(sizeof(AstNode));
  do { if ((lambda) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 197, __func__); abort(); } } while (0);
  lambda->type = LAMBDA_EXPR;
  lambda->node.lambda_expr =
      (LambdaExpression *)malloc(sizeof(LambdaExpression));
  lambda->node.lambda_expr->parameter = variable;
  lambda->node.lambda_expr->body = body;
  lambda->node.lambda_expr->type = type;
  return lambda;
}
char *alpha_convert(char *old) {
  int digits = (int)log10(abs(n)) + 1;
  char *new = malloc(strlen(old) + digits + 2);
  do { if ((new) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 220, __func__); abort(); } } while (0);
  char num_str[digits + 1];
  strcpy(new, old);
  sprintf(num_str, "_%d", n);
  strcat(new, num_str);
  n++;
  return new;
}
_Bool is_used(HashTable *table, char *variable) {
  return table_exists(table, variable);
}
void parse_space_chars(FILE *in) {
  char c = peek(in);
  while (c == ' ' || c == '\n' || c == '\t') {
    next(in);
    c = peek(in);
  }
}
AstNode *parse_lambda(HashTable *table, FILE *in) {
  char parameter;
  tokens_t param;
  if (parse_token(peek(in)) != VARIABLE) {
    expect("A variable", parameter);
  }
  char *var = parse_variable(in);
  char *new_var = ((void*)0);
  if (is_used(table, var)) {
    if (search(table, var) != ((void*)0)) {
      const char * error_msg = format("A definition with name %s already exists. Cannot use same name for lambda abstraction.\n", var);
      error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 259, __func__);
    }
    new_var = alpha_convert(var);
    insert(table, new_var, ((void*)0));
  } else {
    insert(table, var, ((void*)0));
  }
  parse_space_chars(in);
  consume(COLON, in, ":");
  parse_space_chars(in);
  if (parse_token(peek(in)) != VARIABLE) {
    error("Lambda abstractions should be typed.", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 274, __func__);
  }
  char *type = parse_type(table, in);
  consume(DOT, in, ".");
  AstNode *body = parse_expression(table, in);
  if (new_var != ((void*)0)) {
    replace(body, var, new_var);
    print_verbose("Alpha converted %s to %s\n", var, new_var);
    return create_lambda(new_var, body, type);
  }
  return create_lambda(var, body, type);
}
AstNode *parse_expression(HashTable *table, FILE *in) {
  while (parse_token(peek(in)) == WHITESPACE || parse_token(peek(in)) == NEWLINE) {
    next(in);
  }
  tokens_t scanned = parse_token(peek(in));
  if (scanned == ERROR) {
    printf("Error: %c is  a valid token\n", peek(in));
    exit(1);
  }
  if (scanned == LAMBDA) {
    next(in);
    return parse_lambda(table, in);
  }
  else if (scanned == L_PAREN) {
    next(in);
    AstNode *expr = parse_expression(table, in);
    print_ast(expr);
    tokens_t next_token = parse_token(peek(in));
    if (next_token == WHITESPACE) {
      AstNode *expr_2 = parse_expression(table, in);
      AstNode *application = (AstNode *)malloc(sizeof(AstNode));
      application->type = APPLICATION;
      application->node.application =
          (Application *)malloc(sizeof(Application));
      application->node.application->function = expr;
      application->node.application->argument = expr_2;
      consume(R_PAREN, in, ")");
      return application;
    }
    consume(R_PAREN, in, ")");
    return expr;
  }
  else if (scanned == VARIABLE) {
    char *var_name = parse_variable(in);
    if (strcmp(var_name, "def") == 0) {
      parse_definition(table, in);
      if (peek(in) != (-1)) {
        return parse_expression(table, in);
      }
      return ((void*)0);
    } else if (strcmp(var_name, "import") == 0) {
      parse_import(table, in);
      if (peek(in) != (-1)) {
        return parse_expression(table, in);
      }
    } else if (strcmp(var_name, "type") == 0) {
      parse_type_definition(table, in);
      if (peek(in) != (-1)) {
        return parse_expression(table, in);
      }
    }
    char *type = ((void*)0);
    parse_space_chars(in);
    if (!table_exists(table, var_name)) {
      if (parse_token(peek(in)) != COLON) {
        const char *error_msg = format("Constant Variable %s is not typed. Please provide a type.\n", var_name);
        error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 363, __func__);
      }
      consume(COLON, in, ":");
      parse_space_chars(in);
      type = parse_type(table, in);
    }
    AstNode *variable = create_variable(var_name, type);
    if (search(table, var_name) != ((void*)0)) {
      variable->type = DEFINITION;
    }
    return variable;
  }
  return ((void*)0);
}
void parse_import(HashTable *table, FILE *in) {
    char next_token;
    tokens_t n;
    consume(WHITESPACE, in, "a whitespace");
    consume(QUOTE, in, "\"");
    char *file_path = malloc(100 * sizeof(char));
    do { if ((file_path) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 389, __func__); abort(); } } while (0);
    next_token = next(in);
    n = parse_token(next_token);
    file_path[0] = '\0';
    int current_length = 0;
    while (n != QUOTE) {
      if (current_length < 100 - 1) {
        file_path[current_length] = next_token;
        current_length++;
        file_path[current_length] = '\0';
      } else {
        const char *error_msg = "File path is too long. Please make sure it is less than 100 characters.";
        error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 405, __func__);
      }
      next_token = next(in);
      n = parse_token(next_token);
    }
    if (n != QUOTE) {
      expect("a closing quote", next_token);
    }
    FILE *imported_file = get_file(file_path, "r");
    do { if ((imported_file) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 417, __func__); abort(); } } while (0);
    char imported_tkn;
    while ((imported_tkn = peek(imported_file)) != (-1)) {
      tokens_t scanned = parse_token(imported_tkn);
      parse_space_chars(imported_file);
      if (scanned == VARIABLE) {
        char *var_name = parse_variable(imported_file);
        if (strcmp(var_name, "def") == 0) {
          parse_definition(table, imported_file);
        } else if (strcmp(var_name, "type") == 0) {
          parse_type_definition(table, imported_file);
        } else {
          const char *error_msg = format("Expected a definition in the imported file, but got %s\n", var_name);
          error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 431, __func__);
        }
      }
    }
    return;
}
void parse_definition(HashTable *table, FILE *in) {
  char next_token;
  tokens_t n;
  consume(WHITESPACE, in, "a whitespace");
  if (parse_token(peek(in)) != VARIABLE) {
    expect("a variable", next_token);
  }
  char *def_name = parse_variable(in);
  consume(WHITESPACE, in, "a whitespace");
  consume(EQ, in, "=");
  consume(WHITESPACE, in, "a whitespace");
  AstNode *definition = parse_expression(table, in);
  insert(table, def_name, definition);
}
_Bool is_uppercase(char c) {
  return c >= 'A' && c <= 'Z';
}
void parse_type_definition(HashTable *types_table, FILE *in) {
  char next_token = next(in);
  tokens_t n = parse_token(next_token);
  if (n != WHITESPACE) {
    expect(" ", next_token);
  }
  next_token = peek(in);
  n = parse_token(next_token);
  if (n != VARIABLE) {
    expect("a type definition", next_token);
  }
  if (!is_uppercase(next_token)) {
    error("Type names must start with an uppercase letter", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 480, __func__);
  }
  char *type_name = parse_variable(in);
  if (table_exists(types_table, type_name)) {
    const char *error_msg = format("Type %s was already defined.\n", type_name);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 486, __func__);
  }
  insert(types_table, type_name, ((void*)0));
}
char *parse_type(HashTable *types_table, FILE *in) {
  char *type_name = malloc(256 * sizeof(char));
  int index = 0;
  char token = next(in);
  if (!is_uppercase(token)) {
    error("Types should start with an uppercase letter.", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 498, __func__);
  }
  type_name[index] = token;
  index++;
  while (is_variable(peek(in))) {
    type_name[index] = next(in);
    index++;
  }
  if (!table_exists(types_table, type_name)) {
    const char *error_msg = format("Type %s was not defined.\n", type_name);
    error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c", 511, __func__);
  }
  return type_name;
}
char *parse_variable(FILE *in) {
  char *variable_name = malloc(256 * sizeof(char));
  int index = 0;
  while (is_variable(peek(in))) {
    variable_name[index] = next(in);
    index++;
  }
  return variable_name;
}
void expect(char *expected, char received) {
  printf("Syntax Error: Expected %s , received %c \n", expected, received);
  exit(1);
}
void free_ast(AstNode *node) {
  if (node == ((void*)0)) {
    return;
  }
  switch (node->type) {
  case LAMBDA_EXPR:
    if (node->node.lambda_expr != ((void*)0)) {
      free(node->node.lambda_expr->parameter);
      free_ast(node->node.lambda_expr->body);
      free(node->node.lambda_expr);
    }
    break;
  case APPLICATION:
    if (node->node.application != ((void*)0)) {
      free_ast(node->node.application->function);
      free_ast(node->node.application->argument);
      free(node->node.application);
    }
    break;
  case VAR:
    if (node->node.variable != ((void*)0)) {
      free(node->node.variable->name);
      free(node->node.variable);
    }
    break;
  default:
    break;
  }
  free(node);
}
static reduction_order_t reduction_order = APPLICATIVE;
void set_reduction_order(reduction_order_t t) {
  reduction_order = t;
}
void print_reduction_order(reduction_order_t t) {
  switch (t) {
    case APPLICATIVE:
      printf("Applicative");
      break;
    case NORMAL:
      printf("Normal");
      break;
  }
  printf("\n");
}
AstNode *reduce(HashTable *table, AstNode *n) {
  print_verbose("Order of reduction is: ");
  print_reduction_order(reduction_order);
  print_verbose("-------------------------------------------\n");
  expand_definitions(table, n);
  print_verbose("Expanded expression:\n");
  print_ast_verbose(n);
  AstNode *reduced = reduce_ast(table, n);
  print_verbose("Final reduced expression:\n");
  print_ast_verbose(reduced);
  print_verbose("-------------------------------------------\n");
  return reduced;
}
void expand_definitions(HashTable *table, AstNode *n) {
  if (n->type == LAMBDA_EXPR) {
    expand_definitions(table, n->node.lambda_expr->body);
  } else if (n->type == APPLICATION) {
    expand_definitions(table, n->node.application->function);
    expand_definitions(table, n->node.application->argument);
  } else if (n->type == DEFINITION) {
    char *def_name = n->node.variable->name;
    AstNode *expanded_def = search(table, def_name);
    do { if ((expanded_def) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/reducer.c", 48, __func__); abort(); } } while (0);
    print_verbose("Expanding definition of: %s . Term expanded to:\n", def_name);
    print_ast_verbose(expanded_def);
    n->type = expanded_def->type;
    n->node.variable = expanded_def->node.variable;
    n->node.lambda_expr = expanded_def->node.lambda_expr;
    n->node.application = expanded_def->node.application;
  }
}
void replace(AstNode *n, char *old, char *new_name) {
  if (n->type == LAMBDA_EXPR) {
    if (strcmp(n->node.lambda_expr->parameter, old) == 0) {
      n->node.lambda_expr->parameter = new_name;
    }
    replace(n->node.lambda_expr->body, old, new_name);
  }
  else if (n->type == APPLICATION) {
    replace(n->node.application->function, old, new_name);
    replace(n->node.application->argument, old, new_name);
  }
  else if (n->type == VAR) {
    if (strcmp(n->node.variable->name, old) == 0) {
      n->node.variable->name = new_name;
    }
  }
}
AstNode *reduce_ast(HashTable *table, AstNode *n) {
  if (n->type == LAMBDA_EXPR) {
    AstNode *body = n->node.lambda_expr->body;
    if (reduction_order == APPLICATIVE) {
      n->node.lambda_expr->body = reduce_ast(table, body);
    }
    return n;
  }
  else if (n->type == APPLICATION) {
    AstNode *function = n->node.application->function;
    AstNode *argument = n->node.application->argument;
    n->node.application->function = reduce_ast(table, function);
    if (reduction_order == APPLICATIVE) {
      n->node.application->argument = reduce_ast(table, argument);
    }
    if (n->node.application->function->type == LAMBDA_EXPR) {
      char *param = n->node.application->function->node.lambda_expr->parameter;
      AstNode *reduced = substitute(
          n->node.application->function->node.lambda_expr->body,
          param,
          n->node.application->argument);
      print_verbose("Applied substitution to lambda expr of parameter <%s> and resulted in:\n", param);
      print_ast_verbose(reduced);
      if (reduction_order == APPLICATIVE) {
        return reduced;
      }
      return reduce_ast(table, reduced);
    }
    return n;
  }
  return n;
}
AstNode *substitute(AstNode *expression, char *variable, AstNode *replacement) {
  if (expression->type == VAR) {
    if (strcmp(expression->node.variable->name, variable) == 0) {
      return deepcopy(replacement);
    }
    return expression;
  }
  else if (expression->type == LAMBDA_EXPR) {
    expression->node.lambda_expr->body =
        substitute(expression->node.lambda_expr->body, variable, replacement);
    if (expression->node.lambda_expr->parameter != variable) {
      return expression;
    }
    return expression->node.lambda_expr->body;
  }
  else if (expression->type == APPLICATION) {
    expression->node.application->function = substitute(
        expression->node.application->function, variable, replacement);
    expression->node.application->argument = substitute(
        expression->node.application->argument, variable, replacement);
    return expression;
  }
  return expression;
}
AstNode *deepcopy(AstNode *n) {
  if (n->type == VAR) {
    return deepcopy_var(n->node.variable->name, n->node.variable->type);
  }
  else if (n->type == LAMBDA_EXPR) {
    return deepcopy_lambda_expr(n->node.lambda_expr->parameter,
                                n->node.lambda_expr->body, n->node.lambda_expr->type);
  }
  else if (n->type == APPLICATION) {
    return deepcopy_application(n->node.application->function,
                                n->node.application->argument);
  }
  return ((void*)0);
}
AstNode *deepcopy_application(AstNode *function, AstNode *argument) {
  AstNode *application = (AstNode *)malloc(sizeof(AstNode));
  application->type = APPLICATION;
  application->node.application = (Application *)malloc(sizeof(Application));
  application->node.application->function = deepcopy(function);
  application->node.application->argument = deepcopy(argument);
  return application;
}
AstNode *deepcopy_lambda_expr(char *parameter, AstNode *body, char *type) {
  AstNode *lambda = (AstNode *)malloc(sizeof(AstNode));
  lambda->type = LAMBDA_EXPR;
  lambda->node.lambda_expr =
      (LambdaExpression *)malloc(sizeof(LambdaExpression));
  lambda->node.lambda_expr->parameter = parameter;
  lambda->node.lambda_expr->type = type;
  lambda->node.lambda_expr->body = deepcopy(body);
  return lambda;
}
AstNode *deepcopy_var(char *name, char *type) {
  AstNode *variable = (AstNode *)malloc(sizeof(AstNode));
  variable->type = VAR;
  variable->node.variable = (Variable *)malloc(sizeof(Variable));
  variable->node.variable->name = name;
  variable->node.variable->type = type;
  return variable;
}
void assert_(_Bool expr, char *error_msg) {
  if (expr) return;
  error(error_msg, "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/typechecker.c", 32, __func__);
}
Type *typecheck(AstNode *expr, TypeEnv *env) {
  if(expr->type == VAR) {
    char *type = get_type_from_expr(expr);
    Type *t = create_type(type, ((void*)0), expr);
    add_to_env(&env, t);
    return t;
  } else if (expr->type == APPLICATION) {
    Type *func_type = typecheck(expr->node.application->function, env);
    Type *arg_type = typecheck(expr->node.application->argument, env);
    assert_(type_equal(func_type, arg_type), "Type mismatch.");
    return func_type;
  } else if (expr->type == LAMBDA_EXPR) {
    char *type = get_type_from_expr(expr);
    Type *t = create_type(type, ((void*)0), expr);
    add_to_env(&env, t);
    return t;
  }
  return ((void*)0);
}
_Bool type_equal(Type *a, Type *b) {
  if (a == ((void*)0) || b == ((void*)0)) {
    return 0;
  }
  _Bool type_eql = strcmp(a->type, b->type) == 0;
  _Bool return_eql = 0;
  if (a->return_type == ((void*)0) && b->return_type == ((void*)0)) {
    return_eql = 1;
  } else if (a->return_type == ((void*)0) || b->return_type == ((void*)0)) {
    return_eql = 0;
  } else {
    return_eql = strcmp(a->return_type, b->return_type) == 0;
  }
  return type_eql && return_eql;
}
char *get_type_from_expr(AstNode *expr) {
  if (expr->type == VAR) {
    return expr->node.variable->type;
  } else if (expr->type == LAMBDA_EXPR) {
    return expr->node.lambda_expr->type;
  }
  return ((void*)0);
}
void p_print_type(Type *t) {
  if (t == ((void*)0)) {
    printf("(type null)\n");
    return;
  }
  if (t->type != ((void*)0)) {
    printf("Type: %s\n", t->type);
  }
  if (t->return_type != ((void*)0)) {
    printf("Return type: %s\n", t->return_type);
  }
}
Type *create_type(char *type, char *return_type, AstNode *expr) {
  Type *t = malloc(sizeof(Type));
  do { if ((t) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/typechecker.c", 100, __func__); abort(); } } while (0);
  t->return_type = return_type;
  t->type = type;
  t->expr = expr;
  return t;
}
Type *parse_function_type(char *type) {
  Type *t = malloc(sizeof(Type));
  do { if ((t) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/typechecker.c", 109, __func__); abort(); } } while (0);
  t->return_type = ((void*)0);
  t->type = type;
  t->expr = ((void*)0);
  return t;
}
_Bool expr_type_equal(Type *t, AstNode *expr) {
  if (t->expr != expr) {
    return 0;
  }
  char *type = get_type_from_expr(expr);
  do { if ((type) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/typechecker.c", 122, __func__); abort(); } } while (0);
  Type *parsed_type = parse_function_type(type);
  if (strcmp(t->type, parsed_type->type) != 0) {
    return 0;
  }
  if (parsed_type->return_type == ((void*)0)) {
    if (t->return_type == ((void*)0)) return 1;
    return 0;
  }
  if (strcmp(t->return_type, parsed_type->return_type) != 0) {
    return 0;
  }
  return 1;
}
void add_to_env(TypeEnv **env, Type *type) {
  TypeEnv *new_env = malloc(sizeof(TypeEnv));
  do { if ((new_env) == ((void*)0)) { fprintf(stderr, "ERROR: Null pointer encountered at %s:%d in %s\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/typechecker.c", 144, __func__); abort(); } } while (0);
  new_env->type = type;
  new_env->next = *env;
  *env = new_env;
}
Type *lookup_type(TypeEnv *env, AstNode *expr) {
  while (env != ((void*)0)) {
    if (expr_type_equal(env->type, expr)) {
      return env->type;
    }
    env = env->next;
  }
  return ((void*)0);
}

