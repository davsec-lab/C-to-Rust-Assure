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

void r_code_gen_init();
char *r_start_main();

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
typedef long unsigned int size_t;
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

struct RGenState {
    uint32_t registers_in_use;
    unsigned int sp_offset;
} RGEN_STATE;
void r_code_gen_init() {
    RGEN_STATE.registers_in_use = 0;
    RGEN_STATE.sp_offset = 0;
}
char *r_start_main() {
    static char start[256] = ".global _start\n_start:\n";
    return start;
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

typedef enum {
    TT_LITERAL,
    TT_IDENTIFIER,
    TT_OPAREN,
    TT_CPAREN,
    TT_OBRACE,
    TT_CBRACE,
    TT_OBRACKET,
    TT_CBRACKET,
    TT_SEMI,
    TT_NO_TOKEN,
    TT_EOF,
    TT_NEWLINE,
    TT_POUND,
    TT_PERIOD,
    TT_COMMA,
    TT_QMARK,
    TT_MINUS,
    TT_PLUS,
    TT_STAR,
    TT_SLASH,
    TT_ASSIGN,
    TT_COLON,
    TT_MOD,
    TT_BAND,
    TT_LAND,
    TT_BOR,
    TT_LOR,
    TT_DEC,
    TT_INC,
    TT_PLUSPLUS,
    TT_MINUSMINUS,
    TT_DIVEQ,
    TT_MULEQ,
    TT_MODEQ,
    TT_BANDEQ,
    TT_BOREQ,
    TT_LANDEQ,
    TT_LOREQ,
    TT_GREATER,
    TT_LESS,
    TT_LESSEQ,
    TT_GREATEREQ,
    TT_LEFTSHIFT,
    TT_RIGHTSHIFT,
    TT_LNOT,
    TT_BNOT,
    TT_EQUALS,
    TT_NOTEQ,
    TT_XOR,
    TT_XOREQ,
    TT_POINT,
    TT_LEFTSHIFTEQUALS,
    TT_RIGHTSHIFTEQUALS,
    TT_AUTO,
    TT_BREAK,
    TT_CHAR,
    TT_CONST,
    TT_CASE,
    TT_CONTINUE,
    TT_DOUBLE,
    TT_DO,
    TT_DEFAULT,
    TT_ENUM,
    TT_ELSE,
    TT_EXTERN,
    TT_FLOAT,
    TT_FOR,
    TT_GOTO,
    TT_IF,
    TT_INT,
    TT_LONG,
    TT_RETURN,
    TT_REGISTER,
    TT_STATIC,
    TT_SWITCH,
    TT_SHORT,
    TT_SIGNED,
    TT_STRUCT,
    TT_SIZEOF,
    TT_TYPEDEF,
    TT_UNSIGNED,
    TT_UNION,
    TT_VOID,
    TT_VOLATILE,
    TT_WHILE,
} TokenType;
typedef struct {
    TokenType type;
    char contents[256];
    unsigned length;
    char source_file[256];
    int line;
    int column;
} Token;
void testing_setup_internal(const char *func_name);
void testing_cleanup_internal(const char *func_name);
void testing_single_test_internal(const char *func_name);

enum Op { OP_ADD, OP_SUB, OP_MOV, OP_NOP };
enum Op ttype_to_op(TokenType t);
char *start_main();
char *end_main();
char *start_func();
char *end_main_custom_return(int val);
char *end_func();
char *init_int_literal(int val);
int test_init_int_literal();
int test_op_on_rax_with_rdi();
struct GenState {
    uint32_t registers_in_use;
    unsigned int rsp_offset;
} GEN_STATE;
void code_gen_init() {
    GEN_STATE.registers_in_use = 0;
    GEN_STATE.rsp_offset = 0;
}
enum Op ttype_to_op(TokenType t) {
    switch (t) {
    case TT_PLUS:
        return OP_ADD;
    case TT_MINUS:
        return OP_SUB;
 default:
  return OP_NOP;
    }
}
char *start_main() {
    static char start[256] = "global _start\nsection .text\n\n_start:\n";
    return start;
}
char *end_main() {
    static char end[256] = "	mov rax, 60	mov rdi, 0	syscall";
    return end;
}
char *end_main_custom_return(int val) {
    char *end;
    end = (char *)malloc(256 * sizeof(char));
    sprintf(end, "	mov rax, 60\n	mov rdi, %d\n	syscall\n", val);
    return end;
}
static char *op_strs[4] = {"add", "sub", "mov"};
char *op_on_rax_with_rdi(enum Op op) {
    char *end;
    end = (char *)malloc(256 * sizeof(char));
    char *op_str = op_strs[op];
    sprintf(end, "	%s rax, rdi\n", op_str);
    return end;
}
char *start_func() {
    static char start[256] = "	sub rsp, 32	mov [rsp], r12	mov [rsp+8], r13	mov [rsp+16], r14	mov [rsp+24], r15";
    return start;
}
char *end_func() {
    static char end[256] = "	mov r12, [rsp]	mov r13, [rsp+8]	mov r14, [rsp+16]	mov r15, [rsp+24]	add rsp, 32";
    return end;
}
char *init_int_literal(int val) {
    GEN_STATE.rsp_offset += 8;
    char *init;
    init = (char *)malloc(256 * sizeof(char));
    sprintf(init, "	mov [rsp+%d], %d", GEN_STATE.rsp_offset, val);
    return init;
}
int test_init_int_literal() {
    testing_single_test_internal(__func__);
    code_gen_init();
    ((void)((strcmp(init_int_literal(100), "	mov [rsp+8], 100") == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/codegen/x86/codegen.c", 110, "strcmp(init_int_literal(100), \"	mov [rsp+8], 100\") == 0"), 0)));
    return 0;
}
int test_op_on_rax_with_rdi() {
    testing_single_test_internal(__func__);
    char *out = op_on_rax_with_rdi(OP_ADD);
    ((void)((strcmp(out, "	add rax, rdi\n") == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/codegen/x86/codegen.c", 119, "strcmp(out, \"	add rax, rdi\\n\") == 0"), 0)));
    char *out2 = op_on_rax_with_rdi(OP_MOV);
    ((void)((strcmp(out2, "	mov rax, rdi\n") == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/codegen/x86/codegen.c", 122, "strcmp(out2, \"	mov rax, rdi\\n\") == 0"), 0)));
    return 0;
}
typedef struct {
    FILE *fp;
    char current_file[256];
    char buffer[1];
    long position;
    int last_column;
    int column;
    int line;
    Token unlexed[5];
    unsigned unlexed_count;
} Lexer;
int lex(Lexer *l, Token *token);
int lexer_getchar(Lexer *l);
int lexer_ungetchar(Lexer *l);
int unlex(Lexer *l, Token *token);
TokenType ttype_one_char(char c);
TokenType ttype_many_chars(const char *contents);
TokenType ttype_from_string(const char *contents);
int skip_to_token(Lexer *l);
const char *ttype_name(TokenType tt);
int test_ttype_from_string();
int test_ttype_many_chars();
int test_ttype_one_char();
int test_ttype_name();
int parse(const char *filename);

int lexer_dump(const char *filename) {
    Lexer lexer;
    FILE *fp = fopen(filename, "r");
    if (!fp) {
        do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "File %s not found" "\n" , filename); fprintf(stderr, "\033[0m"); } while (0);
        return 1;
    }
    lexer.fp = fp;
    lexer.unlexed_count = 0;
    lexer.column = lexer.line = 1;
    Token t;
    do {
        if (lex(&lexer, &t))
            return 1;
        printf("Contents: %20s, type: %20s, position: %d/%d\n", t.contents,
               ttype_name(t.type), t.line, t.column);
    } while (t.type != TT_EOF);
 fclose(fp);
    return 0;
}
int main(int argc, char **argv) {
    --argc, ++argv;
    if (argc == 0) {
        do { fprintf(stderr, "\033[%dm", 37); fprintf(stderr, "jccc: " "Usage: --token-dump <filename> to see all tokens" "\n"); fprintf(stderr, "\033[0m"); } while (0);
        return 0;
    }
    if (argc == 1) {
        do { fprintf(stderr, "\033[%dm", 37); fprintf(stderr, "jccc: " "default compilation not supported yet -- try 'jccc " "--token-dump %s' instead." "\n" , argv[0]); fprintf(stderr, "\033[0m"); } while (0);
        return 1;
    }
    if (argc > 2) {
        do { fprintf(stderr, "\033[%dm", 37); fprintf(stderr, "jccc: " "expected only two arguments!" "\n"); fprintf(stderr, "\033[0m"); } while (0);
        return 1;
    }
    if (strcmp(argv[0], "--token-dump") == 0) {
        return lexer_dump(argv[1]);
    } else if (strcmp(argv[0], "--test-parse") == 0) {
  parse(argv[1]);
  return 0;
 }
 do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "option %s not recognized." "\n" , argv[1]); fprintf(stderr, "\033[0m"); } while (0);
 return 1;
}
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
int in_string(char c, char s[]) {
    for (char *d = s; *d; ++d) {
        if (*d == c)
            return 1;
    }
    return 0;
}
char single_char_tokens[] = "(){}[];~#,.:?~";
char* operator_strings[] = {
    "-",
    "+",
    "*",
    "/",
    "=",
    ":",
    "%",
    "&",
    "&&",
    "|",
    "||",
    "-=",
    "+=",
    "++",
    "--",
    "/=",
    "*=",
    "%=",
    "&=",
    "|=",
    "&&=",
    "||=",
    ">",
    "<",
    "<=",
    ">=",
    "<<",
    ">>",
    "!",
    "==",
    "!=",
    "^",
    "^=",
    "->",
    "<<=",
    ">>=",
    ((void*)0),
};
int starts_operator(char c) {
    switch (c) {
    case '-': case '+': case '*': case '/': case '=': case ':': case '%':
    case '&': case '|': case '<': case '>': case '!': case '~': case '^':
        return 1;
    default:
        return 0;
    }
}
int valid_operator_sequence(char* op) {
    for (char** top = operator_strings; *top; ++top) {
        if ((!strcmp((*top), (op))))
            return 1;
    }
    return 0;
}
int is_valid_numeric_or_id_char(char c) {
    return ((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISalnum) || (c == '_') || (c == '.');
}
int lexer_getchar(Lexer* l) {
    l->position++;
    l->last_column = l->column;
    l->buffer[0] = getc(l->fp);
    if (l->buffer[0] == '\n') {
        l->line++;
        l->column = 0;
    } else {
        l->column++;
    }
    return l->buffer[0];
}
int lexer_ungetchar(Lexer *l) {
    ((void) sizeof ((l->position >= 0) ? 1 : 0), __extension__ ({ if (l->position >= 0) ; else __assert_fail ("l->position >= 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 103, __extension__ __PRETTY_FUNCTION__); }));
    l->position--;
    l->column = l->last_column;
    if (l->buffer[0] == '\n') {
        l->line--;
    }
    ungetc(l->buffer[0], l->fp);
    return 1;
}
int real_lex(Lexer*, Token*);
int lex(Lexer *l, Token *t) {
    for (;;) {
        real_lex(l, t);
        if (t->type != TT_NEWLINE)
            break;
    }
    return 0;
}
int real_lex(Lexer *l, Token *t) {
    if (l->unlexed_count > 0) {
        l->unlexed_count--;
        memcpy(t, &l->unlexed[l->unlexed_count], sizeof(Token));
        return 0;
    }
    skip_to_token(l);
    int init = lexer_getchar(l);
    memset(t->contents, 0, 256);
    memcpy(t->source_file, &l->current_file, 256);
    static char eof[] = "[end of file]";
    if (init == (-1)) {
        strcpy(t->contents, eof);
        t->length = strlen(eof);
        t->type = TT_EOF;
        t->line = l->line;
        t->column = l->column;
        return 0;
    }
    if (init == ' ' || init == '\t') {
        do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "internal error: did not skip whitespace correctly" "\n"); fprintf(stderr, "\033[0m"); } while (0);
        return -1;
    }
    static char nline[] = "[newline]";
    if (init == '\n') {
        strcpy(t->contents, nline);
        t->length = strlen(nline);
        t->type = TT_NEWLINE;
        t->line = l->line;
        t->column = l->column;
        return 0;
    }
    int pos = 0;
    t->contents[pos++] = init;
    if (in_string(init, single_char_tokens)) {
        t->length = pos;
        t->type = ttype_one_char(init);
        t->line = l->line;
        t->column = l->column;
        return 0;
    }
    int c;
    int starting_line;
    int starting_col;
    if (is_valid_numeric_or_id_char(init)) {
        starting_line = l->line;
        starting_col = l->column;
        for (;;) {
            c = lexer_getchar(l);
            if (!is_valid_numeric_or_id_char(c))
                break;
            if (pos >= 256 - 1) {
                do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "identifier too long, over %d characters" "\n" , 256); fprintf(stderr, "\033[0m"); } while (0);
                do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "identifier began with the following:" "\n"); fprintf(stderr, "\033[0m"); } while (0);
                do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "%.*s" "\n" , 256, t->contents); fprintf(stderr, "\033[0m"); } while (0);
                return -1;
            }
            t->contents[pos++] = c;
        }
        lexer_ungetchar(l);
        t->contents[pos] = '\0';
        t->type = ttype_many_chars(t->contents);
        t->length = pos;
        t->line = starting_line;
        t->column = starting_col;
        return 0;
    }
    if (starts_operator(init)) {
        while (valid_operator_sequence(t->contents)) {
            t->contents[pos++] = (c = lexer_getchar(l));
        }
        lexer_ungetchar(l);
        t->contents[pos - 1] = '\0';
        t->type = ttype_from_string(t->contents);
        t->length = pos;
        return 0;
    }
    do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "lexer unable to identify token starting with: %c" "\n" , init); fprintf(stderr, "\033[0m"); } while (0);
    return 0;
}
int unlex(Lexer *l, Token *t) {
    if (l->unlexed_count >= 5) {
        do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "internal: tried to unlex more than %d tokens at a time" "\n" , 5); fprintf(stderr, "\033[0m"); } while (0);
        return -1;
    }
    memcpy(&l->unlexed[l->unlexed_count], t, sizeof(Token));
    l->unlexed_count++;
    return 0;
}
int skip_to_token(Lexer *l) {
    char cur, prev;
    int in_block = 0, pass = 0;
    if ((cur = lexer_getchar(l)) != (-1)) {
        prev = cur;
        if (!(cur == ' ' || cur == '\t' || cur == '/')) {
            lexer_ungetchar(l);
            return 0;
        }
    } else {
        return -1;
    }
    while ((cur = lexer_getchar(l)) != (-1)) {
        if (cur == '/' && prev == '/' && in_block == 0) {
            in_block = 1;
        } else if (cur == '*' && prev == '/' && in_block == 0) {
            in_block = 2;
            pass = 2;
        } else if ((in_block == 1 && cur == '\n') ||
                   (in_block == 2 && cur == '/' && prev == '*' && pass <= 0)) {
            in_block = 0;
        } else if (prev == '/' && !(cur == '*' || cur == '/') &&
                   in_block == 0) {
            lexer_ungetchar(l);
            return 0;
        }
        if (!(cur == ' ' || cur == '\t' || cur == '/') && in_block == 0) {
            lexer_ungetchar(l);
            return 0;
        }
        pass -= 1;
        prev = cur;
    }
    return -1;
}
TokenType ttype_one_char(char c) {
    switch (c) {
    case '(':
        return TT_OPAREN;
    case ')':
        return TT_CPAREN;
    case '{':
        return TT_OBRACE;
    case '}':
        return TT_CBRACE;
    case '[':
        return TT_OBRACKET;
    case ']':
        return TT_CBRACKET;
    case ';':
        return TT_SEMI;
    case '.':
        return TT_PERIOD;
    case ',':
        return TT_COMMA;
    case '-':
        return TT_MINUS;
    case '+':
        return TT_PLUS;
    case '*':
        return TT_STAR;
    case '/':
        return TT_SLASH;
    case '=':
        return TT_ASSIGN;
    case ':':
        return TT_COLON;
    case '%':
        return TT_MOD;
    case '&':
        return TT_BAND;
    case '|':
        return TT_BOR;
    case '>':
        return TT_GREATER;
    case '<':
        return TT_LESS;
    case '!':
        return TT_LNOT;
    case '~':
        return TT_BNOT;
    case '^':
        return TT_XOR;
    case '#':
        return TT_POUND;
    case '?':
        return TT_QMARK;
    default:
  if (((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISdigit)) {
   return TT_LITERAL;
  } else {
   return TT_IDENTIFIER;
  }
    }
}
TokenType ttype_many_chars(const char *contents) {
    if ((!strcmp((contents), ("auto")))) {
        return TT_AUTO;
    } else if ((!strcmp((contents), ("break")))) {
        return TT_BREAK;
    } else if ((!strcmp((contents), ("continue")))) {
        return TT_CONTINUE;
    } else if ((!strcmp((contents), ("const")))) {
        return TT_CONST;
    } else if ((!strcmp((contents), ("case")))) {
        return TT_CASE;
    } else if ((!strcmp((contents), ("char")))) {
        return TT_CHAR;
    } else if ((!strcmp((contents), ("do")))) {
        return TT_DO;
    } else if ((!strcmp((contents), ("double")))) {
        return TT_DOUBLE;
    } else if ((!strcmp((contents), ("default")))) {
        return TT_DEFAULT;
    } else if ((!strcmp((contents), ("enum")))) {
        return TT_ENUM;
    } else if ((!strcmp((contents), ("else")))) {
        return TT_ELSE;
    } else if ((!strcmp((contents), ("extern")))) {
        return TT_EXTERN;
    } else if ((!strcmp((contents), ("float")))) {
        return TT_FLOAT;
    } else if ((!strcmp((contents), ("for")))) {
        return TT_FOR;
    } else if ((!strcmp((contents), ("goto")))) {
        return TT_GOTO;
    } else if ((!strcmp((contents), ("int")))) {
        return TT_INT;
    } else if ((!strcmp((contents), ("if")))) {
        return TT_IF;
    } else if ((!strcmp((contents), ("long")))) {
        return TT_LONG;
    } else if ((!strcmp((contents), ("return")))) {
        return TT_RETURN;
    } else if ((!strcmp((contents), ("register")))) {
        return TT_REGISTER;
    } else if ((!strcmp((contents), ("struct")))) {
        return TT_STRUCT;
    } else if ((!strcmp((contents), ("signed")))) {
        return TT_SIGNED;
    } else if ((!strcmp((contents), ("sizeof")))) {
        return TT_SIZEOF;
    } else if ((!strcmp((contents), ("static")))) {
        return TT_STATIC;
    } else if ((!strcmp((contents), ("short")))) {
        return TT_SHORT;
    } else if ((!strcmp((contents), ("switch")))) {
        return TT_SWITCH;
    } else if ((!strcmp((contents), ("typedef")))) {
        return TT_TYPEDEF;
    } else if ((!strcmp((contents), ("union")))) {
        return TT_UNION;
    } else if ((!strcmp((contents), ("unsigned")))) {
        return TT_UNSIGNED;
    } else if ((!strcmp((contents), ("void")))) {
        return TT_VOID;
    } else if ((!strcmp((contents), ("volatile")))) {
        return TT_VOLATILE;
    } else if ((!strcmp((contents), ("while")))) {
        return TT_WHILE;
    } else if ((!strcmp((contents), ("&&")))) {
        return TT_LAND;
    } else if ((!strcmp((contents), ("||")))) {
        return TT_LOR;
    } else if ((!strcmp((contents), ("-=")))) {
        return TT_DEC;
    } else if ((!strcmp((contents), ("+=")))) {
        return TT_INC;
    } else if ((!strcmp((contents), ("++")))) {
        return TT_PLUSPLUS;
    } else if ((!strcmp((contents), ("--")))) {
        return TT_MINUSMINUS;
    } else if ((!strcmp((contents), ("/=")))) {
        return TT_DIVEQ;
    } else if ((!strcmp((contents), ("*=")))) {
        return TT_MULEQ;
    } else if ((!strcmp((contents), ("%=")))) {
        return TT_MODEQ;
    } else if ((!strcmp((contents), ("&=")))) {
        return TT_BANDEQ;
    } else if ((!strcmp((contents), ("|=")))) {
        return TT_BOREQ;
    } else if ((!strcmp((contents), ("&&=")))) {
        return TT_LANDEQ;
    } else if ((!strcmp((contents), ("||=")))) {
        return TT_LOREQ;
    } else if ((!strcmp((contents), ("<=")))) {
        return TT_LESSEQ;
    } else if ((!strcmp((contents), (">=")))) {
        return TT_GREATEREQ;
    } else if ((!strcmp((contents), ("<<")))) {
        return TT_LEFTSHIFT;
    } else if ((!strcmp((contents), (">>")))) {
        return TT_RIGHTSHIFT;
    } else if ((!strcmp((contents), ("==")))) {
        return TT_EQUALS;
    } else if ((!strcmp((contents), ("^=")))) {
        return TT_XOREQ;
    } else if ((!strcmp((contents), ("->")))) {
        return TT_POINT;
    } else if ((!strcmp((contents), ("<<=")))) {
        return TT_LEFTSHIFTEQUALS;
    } else if ((!strcmp((contents), (">>=")))) {
        return TT_RIGHTSHIFTEQUALS;
    } else if ((!strcmp((contents), ("!=")))) {
        return TT_NOTEQ;
    }
    int all_numeric = 1;
    int count_fs = 0;
    int count_us = 0;
    int i;
    if (contents == ((void*)0)) {
        return TT_NO_TOKEN;
    }
    for (i = 0; contents[i] != '\0'; i++) {
        char c = contents[i];
        if (c == '.') {
            return TT_LITERAL;
        }
        if (c == 'f') {
            count_fs++;
        }
        if (c == 'u') {
            count_us++;
        }
        if ((c > '9' || c < '0') && c != 'u') {
            all_numeric = 0;
        }
        if (c == '\'' || c == '"') {
            return TT_LITERAL;
        }
    }
    if (all_numeric) {
        if (count_us == 1 && contents[i - 1] == 'u') {
            return TT_LITERAL;
        }
        if (count_us == 0) {
            return TT_LITERAL;
        }
    }
    return TT_IDENTIFIER;
}
TokenType ttype_from_string(const char *contents) {
    int len;
    len = strlen(contents);
    if (len == 1) {
        TokenType token = ttype_one_char(contents[0]);
  return token;
    }
    return ttype_many_chars(contents);
}
static const char *ttype_names[] = {
    "literal",
    "identifier",
    "open paren",
    "close paren",
    "open brace",
    "close brace",
    "open bracket",
    "close bracket",
    "semicolon",
    "no token",
    "end of file",
    "newline",
    "pound",
    ".",
    ",",
    "?",
    "-",
    "+",
    "*",
    "/",
    "=",
    ":",
    "%",
    "&",
    "&&",
    "|",
    "||",
    "-=",
    "+=",
    "++",
    "--",
    "/=",
    "*=",
    "%=",
    "&=",
    "|=",
    "&&=",
    "||=",
    ">",
    "<",
    "<=",
    ">=",
    "<<",
    ">>",
    "!",
    "~",
    "==",
    "!=",
    "^",
    "^=",
    "->",
    "<<=",
    ">>=",
    "auto",
    "break",
    "char",
    "const",
    "case",
    "continue",
    "double",
    "do",
    "default",
    "enum",
    "else",
    "extern",
    "float",
    "for",
    "goto",
    "if",
    "int",
    "long",
    "return",
    "register",
    "static",
    "switch",
    "short",
    "signed",
    "struct",
    "sizeof",
    "typedef",
    "unsigned",
    "union",
    "void",
    "volatile",
    "while",
};
const char *ttype_name(TokenType tt) { return ttype_names[tt]; }
int test_ttype_many_chars() {
    testing_single_test_internal(__func__);
    ((void)((ttype_many_chars("foo") == TT_IDENTIFIER) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 664, "ttype_many_chars(\"foo\") == TT_IDENTIFIER"), 0)));
    ((void)((ttype_many_chars("struct") == TT_STRUCT) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 665, "ttype_many_chars(\"struct\") == TT_STRUCT"), 0)));
    ((void)((ttype_many_chars("while") == TT_WHILE) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 666, "ttype_many_chars(\"while\") == TT_WHILE"), 0)));
    return 0;
}
int test_ttype_one_char() {
    testing_single_test_internal(__func__);
    ((void)((ttype_one_char('a') == TT_IDENTIFIER) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 675, "ttype_one_char('a') == TT_IDENTIFIER"), 0)));
    ((void)((ttype_one_char('1') == TT_LITERAL) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 676, "ttype_one_char('1') == TT_LITERAL"), 0)));
    ((void)((ttype_one_char('+') == TT_PLUS) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 678, "ttype_one_char('+') == TT_PLUS"), 0)));
    ((void)((ttype_one_char('-') == TT_MINUS) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 679, "ttype_one_char('-') == TT_MINUS"), 0)));
    ((void)((ttype_one_char('>') == TT_GREATER) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 680, "ttype_one_char('>') == TT_GREATER"), 0)));
    ((void)((ttype_one_char('~') == TT_BNOT) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 681, "ttype_one_char('~') == TT_BNOT"), 0)));
    return 0;
}
int test_ttype_name() {
    testing_single_test_internal(__func__);
    ((void)((strcmp(ttype_name(TT_LITERAL), "literal") == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 689, "strcmp(ttype_name(TT_LITERAL), \"literal\") == 0"), 0)));
    ((void)((strcmp(ttype_name(TT_PLUS), "+") == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 690, "strcmp(ttype_name(TT_PLUS), \"+\") == 0"), 0)));
    ((void)((strcmp(ttype_name(TT_SIZEOF), "sizeof") == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 691, "strcmp(ttype_name(TT_SIZEOF), \"sizeof\") == 0"), 0)));
    ((void)((strcmp(ttype_name(TT_WHILE), "while") == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 692, "strcmp(ttype_name(TT_WHILE), \"while\") == 0"), 0)));
    return 0;
}
int test_ttype_from_string() {
    testing_single_test_internal(__func__);
    ((void)((ttype_from_string("+") == TT_PLUS) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 700, "ttype_from_string(\"+\") == TT_PLUS"), 0)));
    ((void)((ttype_from_string("=") == TT_ASSIGN) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 701, "ttype_from_string(\"=\") == TT_ASSIGN"), 0)));
    ((void)((ttype_from_string("1") == TT_LITERAL) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 703, "ttype_from_string(\"1\") == TT_LITERAL"), 0)));
    ((void)((ttype_from_string("1.2") == TT_LITERAL) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 704, "ttype_from_string(\"1.2\") == TT_LITERAL"), 0)));
    ((void)((ttype_from_string("1u") == TT_LITERAL) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 706, "ttype_from_string(\"1u\") == TT_LITERAL"), 0)));
    ((void)((ttype_from_string("1.2f") == TT_LITERAL) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 707, "ttype_from_string(\"1.2f\") == TT_LITERAL"), 0)));
    ((void)((ttype_from_string("1.f") == TT_LITERAL) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 708, "ttype_from_string(\"1.f\") == TT_LITERAL"), 0)));
    ((void)((ttype_from_string("\"Planck\"") == TT_LITERAL) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 710, "ttype_from_string(\"\\\"Planck\\\"\") == TT_LITERAL"), 0)));
    ((void)((ttype_from_string("'Language'") == TT_LITERAL) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 711, "ttype_from_string(\"'Language'\") == TT_LITERAL"), 0)));
    ((void)((ttype_from_string("Jaba") == TT_IDENTIFIER) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 713, "ttype_from_string(\"Jaba\") == TT_IDENTIFIER"), 0)));
    ((void)((ttype_from_string("cat_") == TT_IDENTIFIER) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 714, "ttype_from_string(\"cat_\") == TT_IDENTIFIER"), 0)));
    ((void)((ttype_from_string("(") == TT_OPAREN) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 716, "ttype_from_string(\"(\") == TT_OPAREN"), 0)));
    ((void)((ttype_from_string("}") == TT_CBRACE) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 717, "ttype_from_string(\"}\") == TT_CBRACE"), 0)));
    ((void)((ttype_from_string(";") == TT_SEMI) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c", 719, "ttype_from_string(\";\") == TT_SEMI"), 0)));
    return 0;
}
struct List;
typedef
    struct List
    List;
struct List* create_list(int blocksize);
int destroy_list(List* l);
void* lget_element(List* l, int index);
int ladd_element(List* l, void* element);
int lset_element(List* l, int index, void* value);
int literate(List* l, int (*fn)(void*));
typedef enum {
    NT_STMT,
    NT_EXPR,
    NT_BLOCK_STMT,
    NT_RETURN_STMT,
    NT_FUNCDECL,
    NT_FUNCCALL,
    NT_LITERAL,
} NodeType;
typedef struct {
    List* stmts;
} BlockStatement;
typedef struct {
    BlockStatement body;
    char name[256];
} FunctionDeclaration;
typedef struct {
    union {
        FunctionDeclaration fd;
    } u;
    NodeType type;
} TopLevelDeclaration;
typedef struct {
    char name[256];
} FunctionCall;
typedef struct {
    union {
        FunctionCall fc;
        char literal[256];
    } u;
    NodeType type;
} Expression;
typedef struct {
    List* decls;
} ConcreteFileTree;
int parse(const char *filename) {
    Lexer lexer;
    FILE *fp = fopen(filename, "r");
    if (!fp) {
        do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "File %s not found" "\n" , filename); fprintf(stderr, "\033[0m"); } while (0);
        return 1;
    }
    lexer.fp = fp;
    lexer.unlexed_count = 0;
    lexer.column = lexer.line = 1;
    Token t;
    int i = 0;
    int buffer_size = 16;
    Token *tokens = calloc(buffer_size, sizeof(Token));
    do {
        if (lex(&lexer, &t)) {
            return 1;
        }
        if (buffer_size <= i) {
            buffer_size *= 2;
            tokens = calloc(buffer_size, sizeof(Token));
        }
        tokens[i] = t;
        printf("Contents: %20s, type: %20s, position: %d/%d\n", t.contents,
               ttype_name(t.type), t.line, t.column);
        i++;
    } while (t.type != TT_EOF);
    if (tokens[0].type == TT_INT && tokens[1].type == TT_IDENTIFIER &&
        (strcmp(tokens[1].contents, "main") == 0)) {
        if (tokens[2].type == TT_OPAREN && tokens[3].type == TT_CPAREN &&
            tokens[4].type == TT_OBRACE) {
            if (tokens[5].type == TT_RETURN && tokens[6].type == TT_LITERAL &&
                ((*__ctype_b_loc ())[(int) ((tokens[6].contents[0]))] & (unsigned short int) _ISdigit) && tokens[7].type == TT_SEMI) {
                if (tokens[8].type == TT_CBRACE) {
                    printf("\n");
                    char *code_start = start_main();
                    printf(code_start);
                    char *code_end =
                        end_main_custom_return(atoi(tokens[6].contents));
                    printf(code_end);
                } else {
                    do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "Wrong closing brace.\n" "\n"); fprintf(stderr, "\033[0m"); } while (0);
                }
            } else {
                do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "Return value is wrong.\n" "\n"); fprintf(stderr, "\033[0m"); } while (0);
            }
        } else {
            do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "Wrong main function body.\n" "\n"); fprintf(stderr, "\033[0m"); } while (0);
        }
    } else {
        do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "Not correct main function.\n" "\n"); fprintf(stderr, "\033[0m"); } while (0);
    }
    fclose(fp);
    return 0;
}
int parse_simple_main_func() {}
int parse_expr(Lexer* l, Expression* ex) {
}
int parse_funccall(Lexer* l, Expression* ex) {
}
int parse_blockstmt(Lexer* l, BlockStatement* bs) {
}
int parse_funcdecl(Lexer* l, FunctionDeclaration* fd) {
}
int make_cst(Lexer* l, ConcreteFileTree* tree) {
}
struct BucketNode {
    char *key;
    void *value;
    struct BucketNode *next;
};
struct Hashmap {
    struct BucketNode **buckets;
    int size;
    int cap;
    unsigned (*hash)(char *);
    unsigned (*equals)(char *, char *);
};
struct Hashmap *create_hashmap(int capacity);
void destroy_hashmap(struct Hashmap *h);
struct BucketNode *create_bucket(char *key, void *value);
struct BucketNode *hm_get(struct Hashmap *h, char *key);
int hm_set(struct Hashmap *h, char *key, void *value);
void double_cap(struct Hashmap *h);
int test_hash_init();
int test_hash_init_and_store();
int test_hash_set_and_get();
int test_hash_set_and_double_get();
unsigned fnva1(char *value) {
    unsigned long h = 16777619;
    long int prime = 2166136261;
    while (*value != '\0') {
        h ^= *value;
        h *= prime;
        ++value;
    }
    return h;
}
unsigned equal_key(char *a, char *b) { return strcmp(a, b) == 0; }
struct Hashmap *create_hashmap(int capacity) {
    struct Hashmap *h = malloc(sizeof(struct Hashmap));
    h->buckets = calloc(capacity, sizeof(struct BucketNode *));
    h->size = 0;
    h->cap = capacity;
    h->hash = fnva1;
    h->equals = equal_key;
    return h;
}
void destroy_hashmap(struct Hashmap *h) {
    free(h->buckets);
    free(h);
}
struct BucketNode *create_bucket(char *key, void *value) {
    struct BucketNode *b = malloc(sizeof(struct BucketNode));
    b->key = key;
    b->value = value;
    b->next = ((void*)0);
    return b;
}
struct BucketNode *hm_get(struct Hashmap *h, char *key) {
    unsigned a = h->hash(key) % h->cap;
    struct BucketNode *b = h->buckets[a];
    if (b == ((void*)0)) {
        return ((void*)0);
    }
    if (h->equals(b->key, key)) {
        return b;
    }
    return ((void*)0);
}
int hm_set(struct Hashmap *h, char *key, void *value) {
    unsigned a = h->hash(key) % h->cap;
    struct BucketNode *b = h->buckets[a];
    if (b == ((void*)0)) {
        if (h->size == h->cap) {
            double_cap(h);
        }
        h->size++;
        h->buckets[a] = malloc(sizeof(struct BucketNode *));
        h->buckets[a]->key = key;
        h->buckets[a]->value = value;
        h->buckets[a]->next = ((void*)0);
        return 0;
    } else {
        return -1;
    }
}
void double_cap(struct Hashmap *h) {
    struct BucketNode **new_buckets =
        calloc(h->cap * 2, sizeof(struct BucketNode *));
    for (int i = 0; i < h->cap; i++) {
        if (h->buckets[i] != ((void*)0)) {
            struct BucketNode *b = h->buckets[i];
            unsigned a = h->hash(b->key) % h->cap;
            new_buckets[a] = b;
        }
    }
    h->buckets = new_buckets;
    h->cap = h->cap * 2;
}
int test_hash_init() {
    testing_single_test_internal(__func__);
    struct Hashmap *h = create_hashmap(100);
    ((void)((h->size == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 117, "h->size == 0"), 0)));
    ((void)((h->cap == 100) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 118, "h->cap == 100"), 0)));
}
int test_hash_init_and_store() {
    testing_single_test_internal(__func__);
    struct Hashmap *h = create_hashmap(100);
    ((void)((h->size == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 125, "h->size == 0"), 0)));
    ((void)((h->cap == 100) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 126, "h->cap == 100"), 0)));
    char name[5] = "jake";
    char key[5] = "test";
    int ret = hm_set(h, key, name);
    ((void)((ret != -1) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 132, "ret != -1"), 0)));
    uint64_t ind = h->hash(key) % h->cap;
    struct BucketNode *b = h->buckets[ind];
    ((void)((strcmp(b->key, key) == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 136, "strcmp(b->key, key) == 0"), 0)));
    ((void)((h->size == 1) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 138, "h->size == 1"), 0)));
    ((void)((h->cap == 100) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 139, "h->cap == 100"), 0)));
}
int test_hash_set_and_get() {
    testing_single_test_internal(__func__);
    struct Hashmap *h = create_hashmap(100);
    char name[100] = "jake";
    char key[10] = "test";
    int ret = hm_set(h, key, name);
    ((void)((ret != -1) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 150, "ret != -1"), 0)));
    struct BucketNode *got = hm_get(h, "test");
    ((void)((strcmp(got->value, "jake") == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 153, "strcmp(got->value, \"jake\") == 0"), 0)));
    return 0;
}
int test_hash_set_and_double_get() {
    testing_single_test_internal(__func__);
    struct Hashmap *h = create_hashmap(100);
    char name[100] = "jake";
    char key[10] = "test";
    int ret = hm_set(h, key, name);
    ((void)((ret != -1) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 166, "ret != -1"), 0)));
    double_cap(h);
    struct BucketNode *got = hm_get(h, "test");
    ((void)((strcmp(got->value, "jake") == 0) ? 0 : ((void)printf("%s:%u: failed assertion `%s'\n", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c", 171, "strcmp(got->value, \"jake\") == 0"), 0)));
    return 0;
}
typedef struct ListBlock {
    void* * array;
    int size, full;
    struct ListBlock* next;
} ListBlock;
struct List {
    ListBlock *head, *tail;
    int blocksize;
};
List* create_list(int blocksize) {
    List* l = malloc(sizeof(List));
    if (!l) {
        do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "internal: failed to allocate memory" "\n"); fprintf(stderr, "\033[0m"); } while (0);
        return ((void*)0);
    }
    l->blocksize = blocksize;
    l->head = l->tail = ((void*)0);
    return l;
}
int destroy_list(List* l) {
    ListBlock *lb = l->head, *next;
    while (lb) {
        next = lb->next;
        free(lb->array);
        free(lb);
        lb = next;
    }
    free(l);
    return 0;
}
static int lfind_index(List* l, ListBlock** lb, int* i) {
    *lb = l->head;
    if (*i < 0) {
        do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "internal: list index was negative (%d)" "\n" , *i); fprintf(stderr, "\033[0m"); } while (0);
        return -1;
    }
    while (*i >= (*lb)->size) {
        if (lb) {
            *lb = (*lb)->next;
            *i -= (*lb)->size;
        } else {
            do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "internal: list index %d out of bounds" "\n" , *i); fprintf(stderr, "\033[0m"); } while (0);
            return -1;
        }
    }
    return 0;
}
void* lget_element(List* l, int index) {
    int i = index;
    ListBlock* lb;
    lfind_index(l, &lb, &i);
    if (i >= lb->full) {
        do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "internal: list index %d out of bounds" "\n" , index); fprintf(stderr, "\033[0m"); } while (0);
        return ((void*)0);
    }
    return lb->array[i];
}
int lset_element(List* l, int index, void* value) {
    int i = index, ret;
    ListBlock* lb;
    if ((ret = lfind_index(l, &lb, &i))) return ret;
    if (i >= lb->full) {
        do { fprintf(stderr, "\033[%dm", 31); fprintf(stderr, "Error: jccc: " "internal: list index %d out of bounds" "\n" , index); fprintf(stderr, "\033[0m"); } while (0);
        return -1;
    }
    lb->array[i] = value;
    return 0;
}
static ListBlock* new_block(List* l) {
    ListBlock* lb = malloc(sizeof(ListBlock));
    if (lb == ((void*)0)) return ((void*)0);
    lb->array = malloc(l->blocksize * sizeof(void *));
    if (lb->array == ((void*)0)) {
        free(lb);
        return ((void*)0);
    }
    lb->full = 0;
    lb->size = l->blocksize;
    lb->next = ((void*)0);
    return lb;
}
int ladd_element(List* l, void* element) {
    if (l->head == ((void*)0)) {
        l->tail = new_block(l);
        l->head = l->tail;
    }
    ListBlock* lb = l->tail;
    if (lb->full < lb->size) {
        lb->array[lb->full++] = element;
    } else {
        l->tail = new_block(l);
        lb->next = l->tail;
        lb = lb->next;
        lb->array[lb->full++] = element;
    }
    return 0;
}
int literate(List* l, int (*fn)(void*)) {
    ListBlock* lb = l->head;
    int acc = 0;
    while (lb != ((void*)0)) {
        for (int i = 0; i < lb->full; ++i) {
            acc += fn(lb->array[i]);
        }
        lb = lb->next;
    }
    return acc;
}

