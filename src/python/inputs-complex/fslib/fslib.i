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
int main() {
    int shift = 0;
    int x [10] = {1,2,0,2,0,2,0,0,5,1};
    int i;
    for (i = 0; i < 10; ++i) {
        if (x[i] == 0)
            ++shift;
        else
            if (shift != 0)
                x[i-shift] = x[i];
    }
    for (i = 0; i < 10; ++i)
        printf("%d ", x[i]);
    printf("\n");
    return 0;
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
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));

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

typedef uint32_t word_t;
struct _bitset {
    word_t *words;
    int n_words;
};
struct _bitset * bitset_create(int nbits);
void bitset_remove(struct _bitset * bitset);
void bitset_set(struct _bitset * bitset, int b);
void bitset_clear(struct _bitset * bitset, int b);
int bitset_get(struct _bitset * bitset, int b);
void bitset_clear_all(struct _bitset * bitset);
void bitset_set_all();
void bitset_union(struct _bitset * a, const struct _bitset * b);
void bitset_intersect(struct _bitset * a, const struct _bitset * b);
struct _bitset * bitset_toggle_all(struct _bitset * bitset);

enum { WORD_SIZE = sizeof(word_t) * 8 };
static inline int bindex(int b) { return b / WORD_SIZE; }
static inline int boffset(int b) { return b % WORD_SIZE; }
struct _bitset * bitset_create(int nbits) {
    struct _bitset * bitset;
    bitset = malloc(sizeof(struct _bitset));
    bitset->n_words = (nbits / WORD_SIZE + 1);
    bitset->words = malloc(sizeof(*bitset->words) * bitset->n_words);
    bitset_clear_all(bitset);
    return bitset;
}
void bitset_remove(struct _bitset * bitset) {
    free(bitset->words);
    free(bitset);
}
void bitset_set(struct _bitset * bitset, int b) {
    bitset->words[bindex(b)] |= 1 << (boffset(b));
}
void bitset_clear(struct _bitset * bitset, int b) {
    bitset->words[bindex(b)] &= ~(1 << (boffset(b)));
}
int bitset_get(struct _bitset * bitset, int b) {
    return bitset->words[bindex(b)] & (1 << (boffset(b))) ? 1 : 0;
}
void bitset_clear_all(struct _bitset * bitset) {
    for(int i = 0; i < bitset->n_words; ++i)
        bitset->words[i] = 0;
}
void bitset_set_all(struct _bitset * bitset) {
    for(int i = 0; i < bitset->n_words; ++i)
        bitset->words[i] = ~0;
}
void bitset_union(struct _bitset * a, const struct _bitset * b) {
    ((void) sizeof ((a->n_words == b->n_words) ? 1 : 0), __extension__ ({ if (a->n_words == b->n_words) ; else __assert_fail ("a->n_words == b->n_words", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/bitset.c", 53, __extension__ __PRETTY_FUNCTION__); }));
    for(int i = 0; i < a->n_words; ++i)
        a->words[i] |= b->words[i];
}
void bitset_intersect(struct _bitset * a, const struct _bitset * b) {
    ((void) sizeof ((a->n_words == b->n_words) ? 1 : 0), __extension__ ({ if (a->n_words == b->n_words) ; else __assert_fail ("a->n_words == b->n_words", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/bitset.c", 60, __extension__ __PRETTY_FUNCTION__); }));
    for(int i = 0; i < a->n_words; ++i)
        a->words[i] &= b->words[i];
}
struct _bitset * bitset_toggle_all(struct _bitset * bitset) {
    for(int i = 0; i < bitset->n_words; ++i)
        bitset->words[i] ^= ~0;
    return bitset;
}
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
float real_sum(const float a, const float b);
float real_product(const float a, const float b);
float tropical_sum(const float a, const float b);
float tropical_product(const float a, const float b);
typedef float (*sr_sum)(const float a, const float b);
typedef float (*sr_prod)(const float a, const float b);
struct _sr {
    sr_sum sum;
    sr_prod prod;
    float zero;
    float one;
};
struct _sr sr_get(uint8_t sr_type);
extern struct _sr sr_types [];
typedef long int ptrdiff_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
struct _queue {
    struct _qnode * head;
    struct _qnode * tail;
    size_t item_size;
    size_t n_items;
};
struct _qnode {
    struct _qnode * next;
    char item[1];
};
struct _queue * queue_create(size_t item_size);
void queue_remove(struct _queue * q);
void queue_empty(struct _queue * q);
void queue_enque(struct _queue * q, void * item);
void * queue_deque(struct _queue * q, void * item);
struct _bitem {
    void * key;
    void * value;
    struct _bitem * next;
};
struct _bucket {
    struct _bitem * head;
    struct _bitem * tail;
};
typedef size_t (*hash_func)(void * key);
typedef int (*cmp_func)(void * key_a, void * key_b);
struct _hash {
    struct _bucket * buckets;
    size_t item_size;
    size_t key_size;
    size_t size;
    size_t n_items;
    hash_func hash_f;
    cmp_func cmp_f;
};
struct _hash * hash_create( hash_func hash_f,
                                    cmp_func cmp_f,
                                    size_t item_size,
                                    size_t key_size,
                                    size_t size);
void hash_remove(struct _hash *);
void hash_resize(struct _hash *);
void hash_add(struct _hash *, void * key, void * item);
void * hash_get(struct _hash *, void * key, void * item);
void empty_chain(struct _bitem *);
void hash_get_list(struct _hash * hash);
void hash_delete(struct _hash * hash, void * key, void * item);
size_t hash_ptr(void * ptr);
typedef char token_t[1024];
struct _symt {
    size_t n_items;
    size_t n_max;
    char ** sym;
    struct _hash * rev;
};
struct _symt * symt_create();
void symt_remove(struct _symt * st);
struct _hash * symt_reverse(struct _symt * st);
struct _symt * symt_read(struct _symt * st, FILE * fin);
struct _symt * symt_fread(struct _symt * st, const char * filename);
void symt_print(struct _symt * st);
char * symt_add(struct _symt * st, size_t id, const char * token);
size_t symt_getr(struct _symt * st, char * token);
char * symt_get(struct _symt * st, size_t id);
static const uint32_t _fst_header = 0x66733031;
struct _fst {
    uint32_t start;
    uint32_t n_states;
    uint32_t n_max;
    uint8_t sr_type;
    uint8_t flags;
    struct _state * states;
};
struct _state {
    uint32_t n_arcs;
    uint32_t n_max;
    float weight;
    int final;
    struct _arc * arcs;
};
struct _arc {
    uint32_t state;
    float weight;
    uint32_t ilabel;
    uint32_t olabel;
};
struct _spair {
    uint32_t a;
    uint32_t b;
};
struct _striple {
    uint32_t a;
    uint32_t b;
    uint32_t c;
};
struct _apair {
    uint32_t a;
    uint32_t b;
};
struct _arc_pair {
    struct _arc a;
    struct _arc b;
};
struct _match_item {
    struct _arc a;
    struct _arc b;
};
struct _fst * fst_create();
void fst_remove(struct _fst * fst);
void fst_empty(struct _fst * fst);
uint32_t fst_add_state(struct _fst * fst);
uint32_t fst_add_arc(
                                struct _fst * fst,
                                uint32_t src,
                                uint32_t dst,
                                uint32_t il,
                                uint32_t ol,
                                float weight
                                );
void fst_set_final(struct _fst * fst, uint32_t s, float w);
void fst_print(const struct _fst * fst);
void fst_print_sym(const struct _fst * fst,
                                    struct _symt * ist,
                                    struct _symt * ost,
                                    struct _symt * sst);
void fst_write(const struct _fst * fst, FILE * fout);
void fst_read(struct _fst * fst, FILE * fin);
void fst_fwrite(const struct _fst * fst, const char * filename);
void fst_fread(struct _fst * fst, const char * filename);
struct _fst * fst_compile(
                                    struct _fst * fst,
                                    FILE * fin,
                                    struct _symt * ist,
                                    struct _symt * ost,
                                    struct _symt * sst,
                                    int is_acc);
struct _fst * fst_compile_str(struct _fst * fst, const char * str);
uint32_t fst_get_n_arcs(const struct _fst * fst);
void fst_arc_sort(struct _fst * fst, int sort_outer);
void fst_stack(struct _fst * a, const struct _fst * b);
struct _fst * fst_union(struct _fst * a, const struct _fst * b);
int fst_draw(const struct _fst * fst, FILE * fout);
                        int fst_draw_sym( const struct _fst * fst,
                                            FILE * fout,
                                            struct _symt * ist,
                                            struct _symt * ost,
                                            struct _symt * sst);
void fst_copy(const struct _fst * orig, struct _fst * copy);
void fst_reverse(struct _fst * fst);
struct _fst * fst_shortest(const struct _fst * fst, struct _fst * path);
struct _fst * fst_rm_states(struct _fst * fst, struct _bitset * visited);
struct _fst * fst_trim(struct _fst * fst);
struct _fst * fst_compose( const struct _fst * fst_a,
                                        const struct _fst * fst_b,
                                        struct _fst * fst_c );
void match_unsorted(
                                        struct _arc * a,
                                        struct _arc * b,
                                        uint32_t m,
                                        uint32_t n,
                                        struct _queue * q);
void match_half_sorted(
                                        struct _arc * a,
                                        struct _arc * b,
                                        uint32_t m,
                                        uint32_t n,
                                        struct _queue * q);
void match_half_sorted_rev(
                                        struct _arc * a,
                                        struct _arc * b,
                                        uint32_t m,
                                        uint32_t n,
                                        struct _queue * q);
void match_full_sorted(
                                        struct _arc * a,
                                        struct _arc * b,
                                        uint32_t m,
                                        uint32_t n,
                                        struct _queue * q);
void fst_relabel(struct _fst * fst, uint32_t old, uint32_t new, int dir);
void match_arcs(
                                        const struct _fst * fst_a,
                                        const struct _fst * fst_b,
                                        const struct _spair * pair,
                                        struct _sr * sr,
                                        struct _queue * mq);
typedef size_t (*trans_f)(char * token, struct _symt * st);
static size_t trn__src_compile(char * token, struct _symt * st) {
    char * end;
    long dig = strtol(token, &end, 10);
    if (!*end)
        return (size_t)dig;
    fprintf(stderr, "Incorrect token: %s\n", token);
    return -1;
}
static size_t trt__src_compile(char * token, struct _symt * st) {
    size_t t = symt_getr(st, token);
    if (-1 == t) {
        fprintf(stderr, "Unknown token: %s\n", token);
    }
    return t;
}
static void _add_arc(
        struct _fst * fst,
        size_t sa,
        size_t sb,
        size_t li,
        size_t lo,
        float w
) {
    while((sa + 1 > fst->n_states) || (sb + 1> fst->n_states))
        fst_add_state(fst);
    fst_add_arc(fst, sa, sb, (uint32_t)li, (uint32_t)lo, w);
}
static void _add_final(
        struct _fst * fst,
        size_t s,
        float w
) {
    while(s + 1 > fst->n_states)
        fst_add_state(fst);
    fst_set_final(fst, s, w);
}
static int _parse_line(struct _fst * fst, char * buf) {
    size_t sa, sb, sf, li, lo;
    float w;
    struct _sr sr = sr_get(fst->sr_type);
    if (sscanf(buf, "%zd\t%zd\t%zd\t%zd\t%f",
           &sa, &sb, &li, &lo, &w) == 5) {
        _add_arc(fst, sa, sb, li, lo, w);
    } else {
        if (sscanf(buf, "%zd\t%zd\t%zd\t%zd",
               &sa, &sb, &li, &lo) == 4) {
            _add_arc(fst, sa, sb, li, lo, sr.one);
        } else {
            if (sscanf(buf, "%zd\t%f", &sf, &w) == 2) {
                _add_final(fst, sf, w);
            } else {
                if (sscanf(buf, "%zd", &sf) == 1)
                    _add_final(fst, sf, sr.one);
                else
                    return -1;
            }
        }
    }
    return 0;
}
static int _parse_line_sym(
                                struct _fst * fst,
                                char * buf,
                                struct _symt * ist,
                                struct _symt * ost,
                                struct _symt * sst )
{
    trans_f strans, itrans, otrans;
    token_t sa, sb, sf, li, lo;
    size_t _sa, _sb, _sf, _li, _lo;
    float w;
    struct _sr sr = sr_get(fst->sr_type);
    itrans = (ist == ((void*)0) ? trn__src_compile:trt__src_compile);
    otrans = (ost == ((void*)0) ? trn__src_compile:trt__src_compile);
    strans = (sst == ((void*)0) ? trn__src_compile:trt__src_compile);
    if (sscanf(buf, "%s\t%s\t%s\t%s\t%f",
           sa, sb, li, lo, &w) == 5) {
        _sa = strans(sa, sst);
        _sb = strans(sb, sst);
        _li = itrans(li, ist);
        _lo = otrans(lo, ost);
        if ( _sa == -1 || _sb == -1 || _li == -1 || _lo == -1 )
            return -1;
        _add_arc(fst, _sa, _sb, _li, _lo, w);
    } else {
        if (sscanf(buf, "%s\t%s\t%s\t%s",
               sa, sb, li, lo) == 4) {
            _sa = strans(sa, sst);
            _sb = strans(sb, sst);
            _li = itrans(li, ist);
            _lo = otrans(lo, ost);
            if ( _sa == -1 || _sb == -1 || _li == -1 || _lo == -1 )
                return -1;
            _add_arc(fst, _sa, _sb, _li, _lo, sr.one);
        } else {
            if (sscanf(buf, "%s\t%f", sf, &w) == 2) {
                _sf = strans(sf, sst);
                if( -1 == _sf)
                    return -1;
                _add_final(fst, _sf, w);
            } else {
                if (sscanf(buf, "%s", sf) == 1) {
                    _sf = strans(sf, sst);
                    if( -1 == _sf )
                        return -1;
                    _add_final(fst, _sf, sr.one);
                } else
                    return -1;
            }
        }
    }
    return 0;
}
static int _parse_line_sym_acc(
                                struct _fst * fst,
                                char * buf,
                                struct _symt * ist,
                                struct _symt * sst )
{
    trans_f strans, itrans;
    token_t sa, sb, sf, li;
    size_t _sa, _sb, _sf, _li;
    float w = -1.0;
    struct _sr sr = sr_get(fst->sr_type);
    itrans = (ist == ((void*)0) ? trn__src_compile:trt__src_compile);
    strans = (sst == ((void*)0) ? trn__src_compile:trt__src_compile);
    if (sscanf(buf, "%s\t%s\t%s\t%f",
           sa, sb, li, &w) == 4) {
        _sa = strans(sa, sst);
        _sb = strans(sb, sst);
        _li = itrans(li, ist);
        if ( _sa == -1 || _sb == -1 || _li == -1 )
            return -1;
        _add_arc(fst, _sa, _sb, _li, _li, w);
    } else {
        if (sscanf(buf, "%s\t%s\t%s",
               sa, sb, li) == 3) {
            _sa = strans(sa, sst);
            _sb = strans(sb, sst);
            _li = itrans(li, ist);
            if ( _sa == -1 || _sb == -1 || _li == -1 )
                return -1;
            _add_arc(fst, _sa, _sb, _li, _li, sr.one);
        } else {
            if (sscanf(buf, "%s\t%f", sf, &w) == 2) {
                _sf = strans(sf, sst);
                if( -1 == _sf)
                    return -1;
                _add_final(fst, _sf, w);
            } else {
                if (sscanf(buf, "%s", sf) == 1) {
                    _sf = strans(sf, sst);
                    if( -1 == _sf )
                        return -1;
                    _add_final(fst, _sf, sr.one);
                } else
                    return -1;
            }
        }
    }
    return 0;
}
struct _fst * fst_compile(
                            struct _fst * fst,
                            FILE * fin,
                            struct _symt * ist,
                            struct _symt * ost,
                            struct _symt * sst,
                            int is_acc)
{
    char p[0xffff];
    size_t line = 1;
    int res = 0;
    while (fgets(p, sizeof(p), fin) != ((void*)0)) {
        ++line;
        if (is_acc == 0)
            res = _parse_line_sym(fst, p, ist, ost, sst);
        else
            res = _parse_line_sym_acc(fst, p, ist, sst);
        if (res != 0) {
                fprintf(stderr, "Invalid input line %zd: %s", line, p);
                exit(1);
        }
    }
    size_t start_state;
    if (sst != ((void*)0)) {
        if ( (start_state = symt_getr(sst, "<start>")) != -1)
            fst->start = start_state;
    }
    return fst;
}
struct _fst * fst_compile_str(struct _fst * fst, const char * str) {
    char p[0xffff];
    char * tok;
    size_t line = 1;
    strcpy(p, str);
    do {
        if (line == 1)
            tok = strtok(p, "\n");
        else {
            tok = strtok(((void*)0), "\n");
        }
        if (tok)
            if ( _parse_line(fst, tok) != 0) {
                    fprintf(stderr, "Invalid input line %zd: %s\n", line, tok);
                    exit(1);
            }
        ++line;
    } while (tok);
    return fst;
}
static int cmp_pair(void * a, void * b) {
    return memcmp(a, b, sizeof(struct _spair)) == 0 ? 1 : 0;
}
static size_t hash_pair(void * p) {
    size_t hash = 17;
    hash = hash*31 + ((struct _spair *)p)->a;
    hash = hash*31 + ((struct _spair *)p)->b;
    return hash;
}
void match_arcs(
                    const struct _fst * fst_a,
                    const struct _fst * fst_b,
                    const struct _spair * pair,
                    struct _sr * sr,
                    struct _queue * mq)
{
    struct _state * state_a = &fst_a->states[pair->a];
    struct _state * state_b = &fst_b->states[pair->b];
    int osort = fst_a->flags & 0x02;
    int isort = fst_b->flags & 0x01;
    size_t asize = sizeof(struct _arc);
    uint32_t m = state_a->n_arcs + 1;
    uint32_t n = state_b->n_arcs + 1;
    struct _arc * arcs_a = malloc(asize * m);
    struct _arc * arcs_b = malloc(asize * n);
    memcpy(arcs_a + 1, state_a->arcs, asize * (m-1));
    memcpy(arcs_b + 1, state_b->arcs, asize * (n-1));
    struct _arc loop_arc_a = {
            .state = pair->a,
            .ilabel = 0,
            .olabel = 0,
            .weight = sr->one
    };
    struct _arc loop_arc_b = {
            .state = pair->b,
            .ilabel = 0,
            .olabel = 0,
            .weight = sr->one
    };
    arcs_a[0] = loop_arc_a;
    arcs_b[0] = loop_arc_b;
    if (isort && osort)
        match_full_sorted(arcs_a, arcs_b, m, n, mq);
    else
        if (isort || osort) {
            if (isort) {
                match_half_sorted(arcs_a, arcs_b, m, n, mq);
            } else {
                match_half_sorted_rev(arcs_a, arcs_b, m, n, mq);
            }
        } else {
            match_unsorted(arcs_a, arcs_b, m, n, mq);
        }
    free(arcs_a);
    free(arcs_b);
}
struct _fst * fst_compose(
    const struct _fst * fst_a,
    const struct _fst * fst_b,
    struct _fst * fst_c )
{
    struct _sr sr = sr_get(fst_a->sr_type);
    struct _queue * q = queue_create(sizeof(struct _spair));
    struct _queue * mq = queue_create(sizeof(struct _arc_pair));
    struct _hash * marked = hash_create(
                    hash_pair,
                    cmp_pair,
                    sizeof(struct _spair),
                    sizeof(uint32_t),
                    1000 );
    struct _spair pair;
    struct _arc_pair mi;
    uint32_t sc, dst_sc;
    struct _state * state_a, * state_b;
    struct _state * dst_state_a, * dst_state_b;
    struct _arc * arc_a, * arc_b;
    pair.a = fst_a->start;
    pair.b = fst_b->start;
    queue_enque(q, &pair);
    while( (queue_deque(q, &pair)) != ((void*)0) ) {
        state_a = &fst_a->states[pair.a];
        state_b = &fst_b->states[pair.b];
        if (hash_get(marked, &pair, &sc) == ((void*)0)) {
            sc = fst_add_state(fst_c);
            if (state_a->final && state_b->final)
                fst_set_final(fst_c, sc, sr.one);
            if (pair.a == fst_a->start && pair.b == fst_b->start)
                fst_c->start = sc;
            hash_add(marked, &pair, &sc);
        }
        match_arcs( fst_a, fst_b,
                        &pair,
                        &sr,
                        mq );
        while ( queue_deque(mq, &mi) != ((void*)0) ) {
            arc_a = &mi.a;
            arc_b = &mi.b;
            pair.a = arc_a->state;
            pair.b = arc_b->state;
            if (hash_get(marked, &pair, &dst_sc) == ((void*)0)) {
                dst_state_a = &fst_a->states[pair.a];
                dst_state_b = &fst_b->states[pair.b];
                dst_sc = fst_add_state(fst_c);
                if (dst_state_a->final && dst_state_b->final) {
                    fst_set_final(fst_c, dst_sc, sr.one);
                }
                queue_enque(q, &pair);
                hash_add(marked, &pair, &dst_sc);
            }
            fst_add_arc(
                fst_c,
                sc,
                dst_sc,
                arc_a->ilabel,
                arc_b->olabel,
                sr.prod(arc_a->weight, arc_b->weight));
        }
    }
    queue_remove(q);
    queue_remove(mq);
    hash_remove(marked);
    return fst_c;
}
static const char * header =
    "digraph T {\n"
    "\trankdir = LR;\n"
    "\torientation = Landscape;\n";
static const char * footer = "}\n";
int fst_draw(const struct _fst * fst, FILE * fout) {
    struct _state * state;
    struct _arc * arc;
    fprintf(fout, "%s", header);
    for(uint32_t s=0; s < fst->n_states; ++s) {
        state = &fst->states[s];
        if (!state->final) {
            fprintf(fout, "\t%""u"" [label = \"%""u""\", shape = circle, style = %s ];\n",
                s, s, s == fst->start ? "filled" : "solid");
        } else {
            fprintf(fout, "\t%""u"" [label = \"%""u""\", shape = doublecircle, style = filled ];\n",
                s, s);
        }
        for(uint32_t a=0; a < state->n_arcs; ++a) {
            arc = &state->arcs[a];
            fprintf(fout,
                "\t\t%""u"" -> %""u"" [ label = \"%""u"":%""u""/%g\" ];\n",
                s, arc->state,
                arc->ilabel, arc->olabel,
                arc->weight);
        }
    }
    fprintf(fout, "%s", footer);
    return 0;
}
typedef char * (*rtrans_f)(struct _symt * st, size_t id, char * token);
static char * trn__src_draw(struct _symt * st, size_t id, char * token) {
    sprintf(token, "%zu", id);
    return token;
}
static char * trt__src_draw(struct _symt * st, size_t id, char * token) {
    char * t = symt_get(st, id);
    if (t == ((void*)0)) {
        token = ((void*)0);
        fprintf(stderr, "Unknown token: %s\n", token);
    } else {
        strcpy(token, t);
    }
    return token;
}
int fst_draw_sym( const struct _fst * fst,
                    FILE * fout,
                    struct _symt * ist,
                    struct _symt * ost,
                    struct _symt * sst)
{
    struct _state * state;
    struct _arc * arc;
    token_t sa, sb, li, lo;
    rtrans_f strans, itrans, otrans;
    itrans = (ist == ((void*)0) ? trn__src_draw:trt__src_draw);
    otrans = (ost == ((void*)0) ? trn__src_draw:trt__src_draw);
    strans = (sst == ((void*)0) ? trn__src_draw:trt__src_draw);
    fprintf(fout, "%s", header);
    for(uint32_t s=0; s < fst->n_states; ++s) {
        state = &fst->states[s];
        strans(sst, s, sa);
        if (sa == ((void*)0)) {
            fprintf(stderr, "Invalid symbol\n");
            exit(1);
        }
        if (!state->final) {
            fprintf(fout, "\t%s [label = \"%s\", shape = circle, style = %s ];\n",
                sa, sa, s == fst->start ? "filled" : "solid");
        } else {
            fprintf(fout, "\t%s [label = \"%s\", shape = doublecircle, style = filled ];\n",
                sa, sa);
        }
        for(uint32_t a=0; a < state->n_arcs; ++a) {
            arc = &state->arcs[a];
            strans(sst, arc->state, sb);
            itrans(ist, arc->ilabel, li);
            otrans(ost, arc->olabel, lo);
            if (sb == ((void*)0) || li == ((void*)0) || lo == ((void*)0)) {
                fprintf(stderr, "Invalid symbol\n");
                exit(1);
            }
            fprintf(fout,
                "\t\t%s -> %s [ label = \"%s:%s/%g\" ];\n",
                sa, sb, li, lo, arc->weight);
        }
    }
    fprintf(fout, "%s", footer);
    return 0;
}
struct _fst * fst_create() {
    struct _fst * fst;
    fst = malloc(sizeof(struct _fst));
    fst->sr_type = 0;
    fst->n_states = 0;
    fst->n_max = 0;
    fst->start = 0;
    fst->flags = 0;
    fst->states = ((void*)0);
    return fst;
}
uint32_t fst_add_state(struct _fst * fst) {
    struct _state * state;
    ++fst->n_states;
    if (fst->n_states > fst->n_max) {
        fst->n_max = fst->n_states * 2;
        fst->states = realloc(fst->states,
            sizeof(struct _state) * fst->n_max);
    }
    state = &fst->states[fst->n_states - 1];
    state->n_arcs = 0;
    state->n_max = 0;
    state->final = 0;
    state->weight = 0;
    state->arcs = ((void*)0);
    return fst->n_states - 1;
}
uint32_t fst_add_arc(
            struct _fst * fst,
            uint32_t src,
            uint32_t dst,
            uint32_t il,
            uint32_t ol,
            float weight)
{
    struct _arc * arc;
    struct _state * state = &fst->states[src];
    ++state->n_arcs;
    if (state->n_arcs > state->n_max) {
        state->n_max = state->n_arcs * 2;
        state->arcs = realloc(state->arcs,
            sizeof(struct _arc) * state->n_max);
    }
    arc = &state->arcs[state->n_arcs - 1];
    arc->state = dst;
    arc->ilabel = il;
    arc->olabel = ol;
    arc->weight = weight;
    return state->n_arcs - 1;
}
void fst_remove(struct _fst * fst) {
    fst_empty(fst);
    free(fst);
}
void fst_empty(struct _fst * fst) {
    struct _state * state;
    for(uint32_t s=0; s < fst->n_states; ++s) {
        state = fst->states + s;
        if (state->arcs != ((void*)0))
            free(state->arcs);
    }
    if ( fst->states != ((void*)0) )
        free(fst->states);
    fst->n_states = 0;
    fst->n_max = 0;
    fst->states = ((void*)0);
    fst->start = 0;
}
void fst_set_final(struct _fst * fst, uint32_t s, float w) {
    (&fst->states[s])->final = 1;
    (&fst->states[s])->weight = w;
}
void fst_write(const struct _fst * fst, FILE * fout) {
    struct _state * state;
    fwrite( &_fst_header, sizeof(_fst_header), 1, fout);
    fwrite( &fst->start, sizeof(uint32_t), 1, fout);
    fwrite( &fst->n_states, sizeof(uint32_t), 1, fout);
    fwrite( &fst->sr_type, sizeof(uint8_t), 1, fout);
    fwrite( &fst->flags, sizeof(uint8_t), 1, fout);
    for (int s=0; s < fst->n_states; ++s) {
        state = &fst->states[s];
        fwrite( &state->weight, sizeof(float), 1, fout);
        fwrite( &state->n_arcs, sizeof(uint32_t), 1, fout);
        fwrite( &state->final, sizeof(int), 1, fout);
        fwrite( state->arcs, sizeof(struct _arc), state->n_arcs, fout);
    }
}
void fst_read(struct _fst * fst, FILE * fin) {
    struct _state * state;
    uint32_t header = 0;
    fread( &header, sizeof(header), 1, fin);
    if (header != _fst_header) {
        printf("Wrong file format\n");
        exit(1);
    }
    fread( &fst->start, sizeof(uint32_t), 1, fin);
    fread( &fst->n_states, sizeof(uint32_t), 1, fin);
    fread( &fst->sr_type, sizeof(uint8_t), 1, fin);
    fread( &fst->flags, sizeof(uint8_t), 1, fin);
    fst->n_max = fst->n_states;
    fst->states = malloc(sizeof(struct _state) * fst->n_states);
    for (int s=0; s < fst->n_states; ++s) {
        state = &fst->states[s];
        fread ( &state->weight, sizeof(float), 1, fin);
        fread ( &state->n_arcs, sizeof(uint32_t), 1, fin);
        fread ( &state->final, sizeof(int), 1, fin);
        state->n_max = state->n_arcs;
        state->arcs = malloc(sizeof(struct _arc) * state->n_arcs);
        fread ( state->arcs, sizeof(struct _arc), state->n_arcs, fin);
    }
}
void fst_fwrite(const struct _fst * fst, const char * filename) {
    FILE * fout = ((void*)0);
    if (( fout = fopen(filename, "wb")) == ((void*)0) ) {
        fprintf(stderr, "Error opening file: %s", filename);
        exit(1);
    }
    fst_write(fst, fout);
    fclose(fout);
}
void fst_fread(struct _fst * fst, const char * filename) {
    FILE * fin = ((void*)0);
    if (( fin = fopen(filename, "rb")) == ((void*)0) ) {
        fprintf(stderr, "Error opening file: %s", filename);
        exit(1);
    }
    fst_read(fst, fin);
    fclose(fin);
}
uint32_t fst_get_n_arcs(const struct _fst * fst) {
    uint32_t n = 0;
    for (uint32_t s = 0; s < fst->n_states; ++s) {
        n += fst->states[s].n_arcs;
    }
    return n;
}
void fst_stack(struct _fst * a, const struct _fst * b) {
    struct _state * state;
    struct _arc * arc_tmp;
    uint32_t offset = a->n_states;
    a->n_states = a->n_states + b->n_states;
    if (a->n_max < a->n_states) {
        a->n_max = a->n_states;
        a->states = realloc(a->states, a->n_max * sizeof(struct _state));
    }
    memcpy(&a->states[offset], b->states, b->n_states * sizeof(struct _state));
    for(uint32_t i=offset; i < a->n_states; ++i) {
        state = &a->states[i];
        arc_tmp = state->arcs;
        state->arcs = malloc(state->n_max * sizeof(struct _arc));
        memcpy(state->arcs, arc_tmp, state->n_arcs * sizeof(struct _arc));
        for (uint32_t j=0; j < state->n_arcs; ++j)
            (&state->arcs[j])->state += offset;
    }
}
void fst_copy(const struct _fst * orig, struct _fst * copy) {
    struct _state * so, * sc;
    memcpy(copy, orig, sizeof(struct _fst));
    copy->states = malloc(sizeof(struct _state) * orig->n_max);
    memcpy(copy->states, orig->states, sizeof(struct _state) * orig->n_states);
    for(uint32_t s=0; s < copy->n_states; ++s) {
        sc = &copy->states[s];
        so = &orig->states[s];
        sc->arcs = malloc(sizeof(struct _arc) * sc->n_max);
        memcpy(sc->arcs, so->arcs, sizeof(struct _arc) * sc->n_arcs);
    }
}
void fst_relabel(struct _fst * fst, uint32_t old, uint32_t new, int dir) {
    struct _state * state;
    struct _arc * arc;
    for (uint32_t s = 0; s < fst->n_states; ++s) {
        state = &fst->states[s];
        for (uint32_t a = 0; a < state->n_arcs; ++a) {
            arc = &state->arcs[a];
            if (dir == 0) {
                if (arc->ilabel == old) arc->ilabel = new;
            } else {
                if (arc->olabel == old) arc->olabel = new;
            }
        }
    }
}

struct _hash * hash_create( hash_func hash_f,
                            cmp_func cmp_f,
                            size_t key_size,
                            size_t item_size,
                            size_t size)
{
    struct _hash * hash = (struct _hash *) malloc(sizeof(struct _hash));
    struct _bucket * buckets = (struct _bucket *)malloc(
                size * sizeof(struct _bucket));
    for (size_t i = 0; i < size; i++) {
        buckets[i].head = buckets[i].tail = ((void*)0);
    }
    hash->key_size = key_size;
    hash->item_size = item_size;
    hash->size = size;
    hash->buckets = buckets;
    hash->hash_f = hash_f;
    hash->cmp_f = cmp_f;
    hash->n_items = 0;
    return hash;
}
void hash_resize(struct _hash * hash) {
    size_t old_size = hash->size;
    struct _bucket * old_buckets = hash->buckets;
    hash->size *= 2;
    hash->n_items = 0;
    hash->buckets = (struct _bucket *)malloc(
                hash->size * sizeof(struct _bucket));
    for (size_t i = 0; i < hash->size; i++)
        hash->buckets[i].head = hash->buckets[i].tail = ((void*)0);
    for (size_t i = 0; i < old_size; i++) {
        for ( struct _bitem * bi = old_buckets[i].head;
                bi != ((void*)0);
                bi = bi->next
        ) {
            hash_add(hash, bi->key, bi->value);
        }
    }
    for (size_t i = 0; i < old_size; ++i)
        empty_chain(old_buckets[i].head);
    free(old_buckets);
}
void hash_remove(struct _hash * hash) {
    for (size_t i = 0; i < hash->size; ++i) {
        empty_chain(hash->buckets[i].head);
    }
    free(hash->buckets);
    free(hash);
}
void empty_chain(struct _bitem * bitem) {
    struct _bitem * t_bitem = ((void*)0);
    while(bitem != ((void*)0)) {
        t_bitem = bitem;
        bitem = bitem->next;
        if (t_bitem->value) {
            free(t_bitem->key);
            free(t_bitem->value);
        }
        free(t_bitem);
    }
}
void hash_add( struct _hash * hash,
                void * key,
                void * value)
{
    size_t bnum = hash->hash_f(key) % hash->size;
    struct _bucket * bucket = &hash->buckets[bnum];
    for (
                struct _bitem * bi = bucket->head;
                bi != ((void*)0);
                bi = bi->next
    ) {
        if ( hash->cmp_f(key, bi->key) ) {
            memcpy(bi->key, key, hash->key_size);
            memcpy(bi->value, value, hash->item_size);
            return;
        }
    }
    struct _bitem * bitem = malloc(sizeof(struct _bitem));
    bitem->key = key;
    bitem->value = value;
    bitem->next = ((void*)0);
    bitem->key = malloc(hash->key_size);
    memcpy(bitem->key, key, hash->key_size);
    bitem->value = malloc(hash->item_size);
    memcpy(bitem->value, value, hash->item_size);
    if ( bucket->tail == ((void*)0) ) {
        bucket->tail = bucket->head = bitem;
    } else {
        bucket->tail->next = bitem;
        bucket->tail = bitem;
    }
    ++hash->n_items;
    if ( ( ((float)hash->n_items) / hash->size) > 0.75) {
        hash_resize(hash);
    }
}
void * hash_get( struct _hash * hash,
                    void * key,
                    void * item)
{
    struct _bucket bucket = hash->buckets[hash->hash_f(key) % hash->size];
    for (
                struct _bitem * bi = bucket.head;
                bi != ((void*)0);
                bi = bi->next
    ) {
        if ( hash->cmp_f(key, bi->key) ) {
            memcpy(item, bi->value, hash->item_size);
            return bi->value;
        }
    }
    return ((void*)0);
}
void hash_delete(struct _hash * hash, void * key, void * item) {
    struct _bucket * bucket = &hash->buckets[hash->hash_f(key) % hash->size];
    struct _bitem * bi = bucket->head;
    struct _bitem * bi_prev = ((void*)0);
    struct _bitem * bi_next;
    while(bi != ((void*)0)) {
        bi_next = bi->next;
        if ( hash->cmp_f(key, bi->key) ) {
            if (bi_prev == ((void*)0)) {
                bucket->head = bi_next;
            } else {
                bi_prev->next = bi_next;
            }
            if (bi_next == ((void*)0)) {
                bucket->tail = bi_prev;
            }
            if (bi->value)
                free(bi->value);
            free(bi->key);
            free(bi);
            --hash->n_items;
            break;
        }
        bi_prev = bi;
        bi = bi_next;
    }
}
typedef int (*heap_cmp) (const void * a, const void * b);
typedef int (*heap_key_eq) (const void * a, const void * b);
struct _heap {
    size_t n_items;
    size_t n_max;
    size_t item_size;
    size_t limit;
    heap_cmp cmp;
    struct _hash * ht;
    char * items;
};
struct _heap * heap_create(
                            heap_cmp cmp,
                            size_t item_size,
                            size_t init_size,
                            size_t limit);
struct _hash * heap_index(struct _heap * heap, hash_func hsh, cmp_func hcmp);
void heap_remove(struct _heap * heap);
void * heap_pop(struct _heap * heap, void * item);
void heap_heapify(struct _heap * heap, size_t i);
void heap_insert(struct _heap * heap, void * item);
void heap_update(struct _heap * heap, void * item, size_t i);
void * heap_find(struct _heap * heap, void * item, size_t * pi);
static void heap_items_swap(struct _heap * heap, size_t i, size_t j) {
    char * items = heap->items;
    size_t s = heap->item_size;
    char * tmp = malloc(s);
    memcpy(tmp, items + i*s, s);
    memcpy(items + i*s, items + j*s, s);
    memcpy(items + j*s, tmp, s);
    if (heap->ht != ((void*)0)) {
        hash_add(heap->ht, items + i*s, &i);
        hash_add(heap->ht, items + j*s, &j);
    }
    free(tmp);
}
struct _heap * heap_create( heap_cmp cmp,
                                    size_t item_size,
                                    size_t init_size,
                                    size_t limit) {
    struct _heap * heap;
    heap = malloc(sizeof(struct _heap));
    heap->n_items = 0;
    heap->item_size = item_size;
    heap->limit = limit;
    heap->cmp = cmp;
    if (limit != 0) {
        heap->n_max = limit + 1;
    } else {
        if (init_size == 0)
            heap->n_max = 0xff;
        else
            heap->n_max = init_size;
    }
    heap->items = malloc(heap->item_size * heap->n_max);
    heap->ht = ((void*)0);
    return heap;
}
struct _hash * heap_index(struct _heap * heap, hash_func hsh, cmp_func hcmp) {
    if (heap->ht != ((void*)0))
        hash_remove(heap->ht);
    heap->ht = hash_create( hsh,
                            hcmp,
                            heap->item_size,
                            sizeof(size_t),
                            heap->n_max
                        );
    for (size_t i = 0; i < heap->n_items; ++i)
        hash_add(heap->ht, heap->items + i*heap->item_size, &i);
    return heap->ht;
}
void heap_remove(struct _heap * heap) {
    ((void) sizeof ((heap != ((void*)0)) ? 1 : 0), __extension__ ({ if (heap != ((void*)0)) ; else __assert_fail ("heap != NULL", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/heap.c", 95, __extension__ __PRETTY_FUNCTION__); }));
    ((void) sizeof ((heap->items != ((void*)0)) ? 1 : 0), __extension__ ({ if (heap->items != ((void*)0)) ; else __assert_fail ("heap->items != NULL", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/heap.c", 96, __extension__ __PRETTY_FUNCTION__); }));
    if (heap->ht != ((void*)0)) {
        hash_remove(heap->ht);
    }
    free(heap->items);
    free(heap);
}
void * heap_pop(struct _heap * heap, void * item) {
    char * items = heap->items;
    size_t s = heap->item_size;
    if (heap->n_items == 0)
        return ((void*)0);
    memcpy(item, items, s);
    --heap->n_items;
    if (heap->n_items > 0) {
        memcpy(items, items + heap->n_items * s, s);
        size_t i=0;
        if (heap->ht != ((void*)0))
            hash_add(heap->ht, items, &i);
    }
    if (heap->n_items > 1)
        heap_heapify(heap, 0);
    return item;
}
void heap_heapify(struct _heap * heap, size_t i) {
    char * items = heap->items;
    size_t s = heap->item_size;
    size_t l, r, mx;
    int done = 0;
    ((void) sizeof ((i < heap->n_items) ? 1 : 0), __extension__ ({ if (i < heap->n_items) ; else __assert_fail ("i < heap->n_items", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/heap.c", 151, __extension__ __PRETTY_FUNCTION__); }));
    while (!done) {
        l = (((i + 1) << 1) - 1);
        r = ((i + 1) << 1);
        mx = ( l < heap->n_items && heap->cmp(items + l*s, items + i*s))
            ? l : i;
        mx = ( r < heap->n_items && heap->cmp(items + r*s, items + mx*s))
            ? r : mx;
        if (mx != i) {
            heap_items_swap(heap, i, mx);
            i = mx;
        } else {
            done=1;
        }
    }
}
static void heap_delete_max(struct _heap * heap) {
    char * items = heap->items;
    size_t s = heap->item_size;
    size_t m = 0;
    for (size_t i = 1; i < heap->n_items + 1; ++i) {
        if ( heap->cmp(items +m*s, items + i*s)) m = i;
    }
    if (m != heap->n_items) {
        memcpy(items + m*s, items + heap->n_items*s, s);
        if (heap->ht != ((void*)0))
            hash_add(heap->ht, items + m*s, &m);
        heap_update(heap, ((void*)0), m);
    }
}
void heap_insert(struct _heap * heap, void * item) {
    size_t s = heap->item_size;
    if (heap->limit == 0 && heap->n_max == heap->n_items) {
        heap->n_max *= 2;
        heap->items = realloc(heap->items, heap->n_max * s);
    }
    memcpy(heap->items + heap->n_items * s, item, s);
    if (heap->ht != ((void*)0))
        hash_add(heap->ht, item, &heap->n_items);
    if (heap->limit == 0 || heap->n_items < heap->limit) {
        heap_update(heap, ((void*)0), heap->n_items++);
    } else {
        heap_delete_max(heap);
    }
}
void heap_update(struct _heap * heap, void * item, size_t i) {
    char * items = heap->items;
    size_t s = heap->item_size;
    size_t j;
    ((void) sizeof ((i < heap->n_items) ? 1 : 0), __extension__ ({ if (i < heap->n_items) ; else __assert_fail ("i < heap->n_items", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/heap.c", 238, __extension__ __PRETTY_FUNCTION__); }));
    if (item != ((void*)0)) {
        ((void) sizeof ((heap->cmp(item, items + i*s)) ? 1 : 0), __extension__ ({ if (heap->cmp(item, items + i*s)) ; else __assert_fail ("heap->cmp(item, items + i*s)", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/heap.c", 243, __extension__ __PRETTY_FUNCTION__); }));
        memcpy(items + i*s, item, s);
        if (heap->ht != ((void*)0))
            hash_add(heap->ht, item, &i);
    }
    while (i > 0 && heap->cmp(items + i*s, items + (((i + 1) >> 1) - 1)*s)) {
        j = (((i + 1) >> 1) - 1);
        heap_items_swap(heap, i, j);
        i = j;
    }
}
void * heap_find(struct _heap * heap, void * item, size_t * pi) {
    ((void) sizeof ((heap->ht != ((void*)0)) ? 1 : 0), __extension__ ({ if (heap->ht != ((void*)0)) ; else __assert_fail ("heap->ht != NULL", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/heap.c", 261, __extension__ __PRETTY_FUNCTION__); }));
    return hash_get(heap->ht, item, pi);
}
struct _fst_iter {
    const struct _fst * fst;
    struct _bitset * marked;
    struct _queue * queue;
    uint32_t state;
};
struct _fst_iter * fst_iter_create(const struct _fst * fst);
uint32_t fst_iter_next(struct _fst_iter * iter);
void fst_iter_remove(struct _fst_iter * iter);
int fst_iter_visited(
                        struct _fst_iter * iter, uint32_t state);
struct _fst_iter * fst_iter_create(const struct _fst * fst) {
    struct _fst_iter * iter;
    iter = malloc(sizeof(struct _fst_iter));
    iter->fst = fst;
    iter->state = fst->start;
    iter->marked = bitset_create(fst->n_states);
    iter->queue = queue_create(sizeof(uint32_t));
    queue_enque(iter->queue, &iter->state);
    bitset_set(iter->marked, iter->state);
    return iter;
}
void fst_iter_remove(struct _fst_iter * iter) {
    bitset_remove(iter->marked);
    queue_remove(iter->queue);
    iter->fst = ((void*)0);
    free(iter);
}
uint32_t fst_iter_next(struct _fst_iter * iter) {
    struct _arc * arc;
    struct _state * state;
    uint32_t s;
    uint32_t a;
    if((queue_deque(iter->queue, &s)) != ((void*)0)) {
        iter->state = s;
        state = &iter->fst->states[s];
        for(a=0; a < state->n_arcs; ++a) {
            arc = &state->arcs[a];
            if (bitset_get(iter->marked, arc->state) == 0) {
                queue_enque(iter->queue, &arc->state);
                bitset_set(iter->marked, arc->state);
            }
        }
    } else {
        iter->state = -1;
    }
    return iter->state;
}
int fst_iter_visited(struct _fst_iter * iter, uint32_t s) {
    return bitset_get(iter->marked, s);
}
static int _match(struct _arc * a, struct _arc * b, uint32_t i, uint32_t j) {
    uint32_t al = a[i].olabel;
    if (al == 0)
        if ( (i != 0 && j != 0) || (i == 0 && j == 0)) {
            return 0;
        }
    return 1;
}
void match_unsorted(
                struct _arc * a,
                struct _arc * b,
                uint32_t M,
                uint32_t N,
                struct _queue * q)
{
    struct _match_item mi;
    for (uint32_t i = 0; i < M; ++i)
        for (uint32_t j = 0; j < N; ++j)
            if ( a[i].olabel == b[j].ilabel && _match(a, b, i, j)) {
                mi.a = a[i];
                mi.b = b[j];
                queue_enque(q, &mi);
            }
}
void match_half_sorted(
                struct _arc * a,
                struct _arc * b,
                uint32_t M,
                uint32_t N,
                struct _queue * q)
{
    uint32_t l, h, ll, hh;
    uint32_t i,m;
    struct _match_item mi;
    for (i=0; i < M; ++i) {
        l = 0;
        h = N-1;
        while ( l <= h ) {
            m = (l + h) >> 1;
            if (a[i].olabel > b[m].ilabel) l = m + 1;
            else
                if (a[i].olabel < b[m].ilabel) {
                    if (m == 0) break;
                    h = m - 1;
                }
                else {
                    ll = hh = m;
                    while ((ll > l) && (a[i].olabel == b[ll-1].ilabel)) --ll;
                    while ((hh < h) && (a[i].olabel == b[hh+1].ilabel)) ++hh;
                    while (ll <= hh ) {
                        mi.a = a[i];
                        mi.b = b[ll];
                        if (_match(a, b, i, ll))
                            queue_enque(q, &mi);
                        ++ll;
                    }
                    break;
                }
        }
    }
}
void match_half_sorted_rev(
                struct _arc * a,
                struct _arc * b,
                uint32_t M,
                uint32_t N,
                struct _queue * q)
{
    uint32_t l, h, ll, hh;
    uint32_t i,m;
    struct _match_item mi;
    for (i=0; i < N; ++i) {
        l = 0;
        h = M-1;
        while ( l <= h ) {
            m = (l + h) >> 1;
            if (b[i].ilabel > a[m].olabel) l = m + 1;
            else
                if (b[i].ilabel < a[m].olabel) {
                    if (m == 0) break;
                    h = m - 1;
                }
                else {
                    ll = hh = m;
                    while ((ll > l) && (b[i].ilabel == a[ll-1].olabel)) --ll;
                    while ((hh < h) && (b[i].ilabel == a[hh+1].olabel)) ++hh;
                    while (ll <= hh ) {
                        mi.a = a[ll];
                        mi.b = b[i];
                        if (_match(a, b, ll, i))
                            queue_enque(q, &mi);
                        ++ll;
                    }
                    break;
                }
        }
    }
}
void match_full_sorted(
                struct _arc * a,
                struct _arc * b,
                uint32_t M,
                uint32_t N,
                struct _queue * q)
{
    uint32_t i = 0;
    uint32_t j = 0;
    uint32_t t;
    struct _match_item mi;
    while (i < M && j < N) {
        if ( a[i].olabel < b[j].ilabel ) ++i;
        else
            if ( a[i].olabel > b[j].ilabel ) ++j;
            else {
                for (t=j; a[i].olabel == b[t].ilabel; ++t ) {
                    mi.a = a[i];
                    mi.b = b[t];
                    if (_match(a, b, i, t))
                        queue_enque(q, &mi);
                }
                ++i;
            }
    }
}
void fst_print(const struct _fst * fst) {
    struct _state state;
    struct _arc arc;
    uint32_t s;
    uint32_t a;
    struct _queue *finals = queue_create(sizeof(uint32_t));
    for(s=0; s < fst->n_states; ++s) {
        state = fst->states[s];
        for(a=0; a < state.n_arcs; ++a) {
            arc = state.arcs[a];
            printf("%""u""\t%""u""\t%""u""\t%""u""\t%.5f\n",
                s,
                arc.state,
                arc.ilabel,
                arc.olabel,
                arc.weight);
        }
        if(state.final == 1) {
            queue_enque(finals, &s);
        }
    }
    while(queue_deque(finals, &s) != ((void*)0)) {
        state = fst->states[s];
        printf("%""u""\t%f\n", s, state.weight);
    }
    queue_remove(finals);
}
typedef char * (*rtrans_f)(struct _symt * st, size_t id, char * token);
static char * trn__src_print(struct _symt * st, size_t id, char * token) {
    sprintf(token, "%zu", id);
    return token;
}
static char * trt__src_print(struct _symt * st, size_t id, char * token) {
    char * t = symt_get(st, id);
    if (t == ((void*)0)) {
        token = ((void*)0);
        fprintf(stderr, "Unknown token: %s\n", token);
    } else {
        strcpy(token, t);
    }
    return token;
}
void fst_print_sym(
                    const struct _fst * fst,
                    struct _symt * ist,
                    struct _symt * ost,
                    struct _symt * sst)
{
    struct _state state;
    struct _arc arc;
    token_t sa, sb, li, lo;
    rtrans_f strans, itrans, otrans;
    uint32_t s;
    uint32_t a;
    itrans = (ist == ((void*)0) ? trn__src_print:trt__src_print);
    otrans = (ost == ((void*)0) ? trn__src_print:trt__src_print);
    strans = (sst == ((void*)0) ? trn__src_print:trt__src_print);
    struct _queue *finals = queue_create(sizeof(uint32_t));
    for(s=0; s < fst->n_states; ++s) {
        state = fst->states[s];
        for(a=0; a < state.n_arcs; ++a) {
            arc = state.arcs[a];
            strans(sst, s, sa);
            strans(sst, arc.state, sb);
            itrans(ist, arc.ilabel, li);
            otrans(ost, arc.olabel, lo);
            if (sa == ((void*)0) || sb == ((void*)0) || li == ((void*)0) || lo == ((void*)0)) {
                fprintf(stderr, "Invalid symbol\n");
                exit(1);
            }
            printf("%s\t%s\t%s\t%s\t%.5f\n",
                sa,
                sb,
                li,
                lo,
                arc.weight);
        }
        if(state.final == 1) {
            queue_enque(finals, &s);
        }
    }
    while(queue_deque(finals, &s) != ((void*)0)) {
        state = fst->states[s];
        strans(sst, s, sa);
        if (sa == ((void*)0)) {
            fprintf(stderr, "Invalid symbol\n");
            exit(1);
        }
        printf("%s\t%f\n", sa, state.weight);
    }
    queue_remove(finals);
}

struct _queue * queue_create(size_t item_size) {
    struct _queue * q;
    q = (struct _queue *) malloc(sizeof(struct _queue));
    q->item_size = item_size;
    q->n_items = 0;
    q->head = ((void*)0);
    q->tail = ((void*)0);
    return q;
}
void queue_enque(struct _queue * q, void * item) {
    struct _qnode * node;
    ((void) sizeof ((q != ((void*)0)) ? 1 : 0), __extension__ ({ if (q != ((void*)0)) ; else __assert_fail ("q != NULL", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/queue.c", 28, __extension__ __PRETTY_FUNCTION__); }));
    node = (struct _qnode *)malloc(sizeof(struct _qnode) - 1 + q->item_size);
    node->next = ((void*)0);
    memcpy(node->item, item, q->item_size);
    if (q->head == ((void*)0))
        q->head = q->tail = node;
    else {
        q->tail->next = node;
        q->tail = node;
    }
    ++q->n_items;
}
void * queue_deque(struct _queue * q, void * item) {
    struct _qnode * t_node;
    ((void) sizeof ((q != ((void*)0)) ? 1 : 0), __extension__ ({ if (q != ((void*)0)) ; else __assert_fail ("q != NULL", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/queue.c", 48, __extension__ __PRETTY_FUNCTION__); }));
    if (q->head == ((void*)0))
        return ((void*)0);
    t_node = q->head;
    memcpy(item, t_node->item, q->item_size);
    q->head = t_node->next;
    free(t_node);
    --q->n_items;
    return item;
}
void queue_empty(struct _queue * q) {
    void * item = malloc(q->item_size);
    while( queue_deque(q, item) != ((void*)0) );
    q->n_items = 0;
    free (item);
}
void queue_remove(struct _queue * q) {
    queue_empty(q);
    free (q);
}
static struct _sr sr;
static float * W = ((void*)0);
static struct _arc * B = ((void*)0);
static int states_cmp(const void * a, const void * b) {
    return W[*(uint32_t*)a] == sr.sum(
                    W[*(uint32_t*)a],
                    W[*(uint32_t*)b]
    ) ? 1:0;
}
static size_t states_hash(void * a) { return *(int*)a; }
static int states_key_eq(void * a, void * b) {
    return *(uint32_t*)a == *(uint32_t*)b;
}
static void backtrace(struct _fst * path, uint32_t f) {
    struct _arc arc;
    uint32_t s;
    uint32_t n=0;
    fst_add_state(path);
    for(s=f; s != 0; s=B[s].state, ++n)
        fst_add_state(path);
    fst_set_final(path, n, sr.one);
    for(s=f; s != 0; s=B[s].state, --n) {
        arc=B[s];
        fst_add_arc(path, n-1, n, arc.ilabel, arc.olabel, arc.weight);
    }
}
struct _fst * fst_shortest(const struct _fst * fst, struct _fst * path) {
    struct _state * state;
    struct _arc * arc;
    struct _arc r_arc;
    uint32_t p,q;
    size_t i;
    ((void) sizeof ((fst->sr_type == 0) ? 1 : 0), __extension__ ({ if (fst->sr_type == 0) ; else __assert_fail ("fst->sr_type == SR_TROPICAL", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/shortest.c", 55, __extension__ __PRETTY_FUNCTION__); }));
    sr = sr_get(fst->sr_type);
    struct _heap * Q = heap_create(states_cmp, sizeof(uint32_t), 0, 0);
    heap_index(Q, states_hash, states_key_eq);
    W = malloc(sizeof(float) * fst->n_states);
    B = malloc(sizeof(struct _arc) * fst->n_states);
    for (uint32_t i=0; i < fst->n_states; ++i)
        W[i] = sr.zero;
    q = fst->start;
    W[q] = sr.one;
    heap_insert(Q, &q);
    while( ( heap_pop(Q, &p)) !=((void*)0) ) {
        state = &fst->states[p];
        if (state->final == 1) {
            backtrace(path, p);
            break;
        }
        for (uint32_t a=0; a < state->n_arcs; ++a) {
            arc = &state->arcs[a];
            q = arc->state;
            if (arc->weight == sr.zero)
                continue;
            if (W[q] == sr.zero) {
                heap_insert(Q, &q);
            }
            if (W[q] != sr.sum(
                    W[q], sr.prod(W[p], arc->weight) ) ) {
                W[q] = sr.prod(W[p], arc->weight);
                r_arc = *arc;
                r_arc.state = p;
                B[q] = r_arc;
                if ((heap_find(Q, &q, &i)) != ((void*)0)) {
                    heap_update(Q, &q, i);
                }
            }
        }
    }
    heap_remove(Q);
    free(W);
    free(B);
    return path;
}
static int icomp(const void *a, const void *b)
{
  return (int) ( ((struct _arc *)a)->ilabel - ((struct _arc *)b)->ilabel );
}
static int ocomp(const void *a, const void *b)
{
  return (int) ( ((struct _arc *)a)->olabel - ((struct _arc *)b)->olabel );
}
void fst_arc_sort(struct _fst * fst, int sort_outer) {
    struct _state * state;
    int (*comp)(const void *, const void *);
    if (sort_outer == 0) {
        comp=icomp;
        fst->flags |= 0x01;
    } else {
        comp=ocomp;
        fst->flags |= 0x02;
    }
    for(uint32_t s = 0; s < fst->n_states; ++s) {
        state = &fst->states[s];
        qsort( state->arcs,
                state->n_arcs,
                sizeof(struct _arc),
                comp );
    }
}
float real_sum(const float a, const float b) { return a+b; }
float real_product(const float a, const float b) { return a*b; }
float tropical_sum(const float a, const float b) { return a < b ? a : b; }
float tropical_product(const float a, const float b) { return a + b; }
const struct _sr sr_real = {
    .sum = real_sum,
    .prod = real_product,
    .zero = 0,
    .one = 1
};
const struct _sr sr_tropical = {
    .sum = tropical_sum,
    .prod = tropical_product,
    .zero = 3.40282347e+38F,
    .one = 0
};
struct _sr sr_get(uint8_t sr_type) {
    switch (sr_type) {
        case 1:
            return sr_real;
        case 0:
            return sr_tropical;
        default:
            return sr_tropical;
    }
}
static size_t fnv32(void * str) {
    const char * s = str;
    uint32_t hsh = 2166136261U, i;
    for(i = 0; i < strlen(s); i++) {
        hsh = hsh ^ (s[i]);
        hsh = hsh * 16777619;
    }
    return hsh;
}
static int str_cmp(void * a, void * b) {
    return strcmp((const char *)a, (const char *)b) == 0 ? 1: 0;
}
struct _symt * symt_read(struct _symt * st, FILE * fin) {
    char p[0xffff];
    char token[1024];
    size_t line = 1;
    size_t token_id;
    while (fgets(p, sizeof(p), fin) != ((void*)0)) {
        if (sscanf(p, "%s\t%zu", token, &token_id) == 2) {
            symt_add(st, token_id, token);
        }
        else {
                printf("Invalid input line %zd: %s", line, p);
                exit(1);
        }
        ++line;
    }
    return st;
}
struct _symt * symt_compile(struct _symt * st, const char * str) {
    char p[0xffff];
    char token[1024];
    char * tok;
    size_t line = 1;
    size_t token_id;
    strcpy(p, str);
    do {
        if (line == 1)
            tok = strtok(p, "\n");
        else {
            tok = strtok(((void*)0), "\n");
        }
        if (tok) {
            if (sscanf(p, "%s\t%zd", token, &token_id) == 2) {
                symt_add(st, token_id, token);
            }
            else {
                    printf("Invalid input line %zd: %s", line, p);
                    exit(1);
            }
        }
        ++line;
    } while (tok);
    return st;
}
struct _symt * symt_fread(struct _symt * st, const char * filename) {
    FILE * fin = ((void*)0);
    if (( fin = fopen(filename, "r")) == ((void*)0) ) {
        fprintf(stderr, "Error opening file: %s\n", filename);
        exit(1);
    }
    st = symt_read(st, fin);
    if (fin != ((void*)0))
        fclose(fin);
    return st;
}
struct _symt * symt_create() {
    struct _symt * st = malloc(sizeof(struct _symt));
    st->rev = ((void*)0);
    st->sym = malloc(1024 * sizeof(char *));
    st->n_items = 0;
    st->n_max = 1024;
    for(size_t i=0; i < st->n_max; ++i)
        st->sym[i] = ((void*)0);
    return st;
}
void symt_remove(struct _symt * st) {
    for(size_t i=0; i < st->n_max; ++i)
        if(st->sym[i] != ((void*)0))
            free(st->sym[i]);
    if (st->rev != ((void*)0))
        hash_remove(st->rev);
    free(st->sym);
    free(st);
}
char * symt_add(
                        struct _symt * st,
                        size_t id,
                        const char * token) {
    size_t s = st->n_max;
    char ** p;
    ((void) sizeof ((st->sym != ((void*)0)) ? 1 : 0), __extension__ ({ if (st->sym != ((void*)0)) ; else __assert_fail ("st->sym != NULL", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/symt.c", 125, __extension__ __PRETTY_FUNCTION__); }));
    ((void) sizeof ((st->n_max != 0) ? 1 : 0), __extension__ ({ if (st->n_max != 0) ; else __assert_fail ("st->n_max != 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/symt.c", 126, __extension__ __PRETTY_FUNCTION__); }));
    while (st->n_max <= id) {
        st->n_max *= 2;
    }
    if( st->n_max > s) {
        p = realloc(st->sym, st->n_max * sizeof(char *));
        st->sym = p;
    }
    for(size_t i = s; i < st->n_max; ++i)
        st->sym[i] = ((void*)0);
    char * t = malloc(strlen(token) + 1);
    strcpy(t, token);
    st->sym[id] = t;
    ++st->n_items;
    return st->sym[id];
}
void symt_print(struct _symt * st) {
    for(size_t i=0; i < st->n_max; ++i) {
        if ( st->sym[i] != ((void*)0) )
            printf("%s\t%zd\n", st->sym[i], i);
    }
}
struct _hash * symt_reverse(struct _symt * st) {
    if(st->rev != ((void*)0))
        hash_remove(st->rev);
    st->rev = hash_create(
                    fnv32,
                    str_cmp,
                    1024,
                    sizeof(size_t),
                    st->n_items * 2);
    char token[1024] = {0};
    for(size_t i=0; i < st->n_max; ++i) {
        if ( st->sym[i] != ((void*)0) ) {
            strncpy(token, st->sym[i], 1024 - 1);
            hash_add(st->rev, token, &i);
        }
    }
    return st->rev;
}
size_t symt_getr(struct _symt * st, char * token) {
    size_t id = -1;
    if (st->rev == ((void*)0))
       symt_reverse(st);
    hash_get(st->rev, token, &id);
    return id;
}
char * symt_get(struct _symt * st, size_t id) {
    if ( id > st->n_items )
        return ((void*)0);
    return st->sym[id];
}

void fst_close(struct _fst * fst, struct _queue * finals) {
    if ( finals->n_items < 2)
        return;
    struct _state * state;
    struct _sr sr = sr_get(fst->sr_type);
    uint32_t final;
    uint32_t s;
    final = fst_add_state(fst);
    fst_set_final(fst, final, sr.one);
    while(queue_deque(finals, &s) != ((void*)0)) {
        state = &fst->states[s];
        state->final = 0;
        fst_add_arc( fst,
                        s,
                        final,
                        0,
                        0,
                        state->weight);
    }
}
void fst_reverse(struct _fst * fst) {
    struct _sr sr = sr_get(fst->sr_type);
    struct _state * state;
    struct _arc * arc;
    struct _fst * orig = fst_create();
    uint32_t s;
    uint32_t start_s = fst->start;
    fst_copy(fst, orig);
    for(s=0; s < fst->n_states; ++s ) {
        state = &fst->states[s];
        state->n_arcs = 0;
        if (state->final) {
            fst->start = s;
            state->final = 0;
        }
    }
    fst_set_final(fst, start_s, sr.one);
    for(s=0; s < orig->n_states; ++s) {
        state = &orig->states[s];
        for(uint32_t a=0; a < state->n_arcs; ++a) {
            arc = &state->arcs[a];
            fst_add_arc( fst,
                            arc->state,
                            s,
                            arc->ilabel,
                            arc->olabel,
                            arc->weight);
        }
    }
    fst_remove(orig);
}
struct _fst * fst_rm_states(struct _fst * fst, struct _bitset * mask) {
    struct _state * state;
    struct _arc * arc;
    uint32_t idx[sizeof(uint32_t) * fst->n_states];
    uint32_t shift = 0;
    for(uint32_t s=0; s < fst->n_states; ++s) {
        if (bitset_get(mask, s) ) {
            ++shift;
        }
        else {
            idx[s] = shift;
            fst->states[s - shift] = fst->states[s];
        }
    }
    fst->n_states -= shift;
    for(uint32_t s=0; s < fst->n_states; ++s) {
        state = &fst->states[s];
        uint32_t sh = 0;
        for(uint32_t a=0; a < state->n_arcs; ++a) {
            arc = &state->arcs[a];
            arc->state -= idx[arc->state];
            if (arc->state >= fst->n_states) {
                ++sh;
            } else {
                state->arcs[a - sh] = state->arcs[a];
            }
        }
        state->n_arcs -= sh;
    }
    return fst;
}
static void fst_get_finals(struct _fst * fst, struct _queue * finals) {
    struct _state * state;
    for (uint32_t s=0; s < fst->n_states; ++s) {
        state = fst->states + s;
        if (state->final)
            queue_enque(finals, &s);
    }
}
struct _fst * fst_trim(struct _fst * fst) {
    struct _queue * finals = queue_create(sizeof(uint32_t));
    fst_get_finals(fst, finals);
    if (finals->n_items == 0) {
        fst_empty(fst);
    } else {
        if (finals->n_items > 1) {
            fst_close(fst, finals);
        }
        struct _fst_iter * iter = fst_iter_create(fst);
        while ( fst_iter_next(iter) != -1 )
            ;
        fst_reverse(fst);
        struct _fst_iter * iter_rev = fst_iter_create(fst);
        while ( fst_iter_next(iter_rev) != -1 )
            ;
        fst_reverse(fst);
        bitset_intersect(iter->marked, iter_rev->marked);
        bitset_toggle_all(iter->marked);
        fst_rm_states(fst, iter->marked);
        fst_iter_remove(iter_rev);
        fst_iter_remove(iter);
    }
    queue_remove(finals);
    return fst;
}

