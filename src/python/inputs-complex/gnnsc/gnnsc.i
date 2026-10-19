typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
typedef struct InputPop {
    int cols;
    int rows;
    float **S;
}InputPop;
typedef struct Pop {
    float **pop;
    float **S;
    int cols;
    int rows;
}Pop;
void createStructure(struct InputPop *input, struct Pop *pop);
void clearPopulation(struct Pop* population);
void createInputPop(struct InputPop *inputPop, float* max, float* min, int* size);
void placePartOfPop(struct Pop *pop, struct Pop *source, int *indexes);
void generateRandomPopulation(struct Pop *population);
typedef struct Matrix{
    float** matrix;
    int* sizes;
}Matrix;
void createMatrix(struct Matrix *matrix, int *sizes);
void matrixMultiply(struct Matrix *A, struct Matrix *B, struct Matrix *output);
void matrixSubstAdd(struct Matrix *A, struct Matrix *B, struct Matrix *output, int type);
void matrixAllValuesFormula(struct Matrix *matrix, float (*func_ptr)(float));
void createMatrixFromPointer(struct Matrix *output, float *input, int *size);
void matrixDelete(struct Matrix *matrix);
void matrixDeleteOnlyData(struct Matrix *matrix);
void fullyCopyMatrix(struct Matrix *input, struct Matrix *output);
void quickSort(float *fit, int *result, int length);

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
int main(){
  srand(time(0));
}
float createRandomFloat(float min, float max);

float createRandomFloat(float min, float max){
  float random = ((float) rand()) / (float) 2147483647;
  float diff = max - min;
  float r = random * diff;
  return min + r;
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

void matrixDelete(struct Matrix *matrix){
    if(matrix){
      for(int i=0; i<matrix->sizes[0]; i++){
        free(matrix->matrix[i]);
      }
      free(matrix->matrix);
      free(matrix->sizes);
      free(matrix);
    }
}
void matrixDeleteOnlyData(struct Matrix *matrix){
    if(matrix){
        for(int i=0; i<matrix->sizes[0]; i++){
            free(matrix->matrix[i]);
        }
        free(matrix->matrix);
        free(matrix->sizes);
        matrix->matrix = ((void*)0);
        matrix->sizes = ((void*)0);
    }
}
void createMatrix(struct Matrix *matrix, int *sizes){
    matrix->matrix = (float**)malloc(sizes[0] * sizeof(float*));
    for(int i=0; i<sizes[0]; i++){
        matrix->matrix[i] = (float*)malloc(sizes[1] * sizeof(float));
    }
    matrix->sizes = (int*)malloc(2 * sizeof(int));
    matrix->sizes[0] = sizes[0];
    matrix->sizes[1] = sizes[1];
    free(sizes);
}
void createMatrixFromPointer(struct Matrix *output, float *input, int *size){
    createMatrix(output, size);
    int globalIndex = 0;
    for(int i=0; i<output->sizes[0]; i++){
        for(int y=0; y<output->sizes[1]; y++){
            output->matrix[i][y] = input[globalIndex];
            globalIndex++;
        }
    }
}
void matrixMultiply(struct Matrix *A, struct Matrix *B, struct Matrix *output){
    if(A->sizes[1] != B->sizes[0]){
        fprintf(stderr, "Error: Sizes of matrixes are incorect\n");
        exit(1);
    }
    int *sizes = (int*)malloc(2 * sizeof(int));
    sizes[0] = A->sizes[0];
    sizes[1] = B->sizes[1];
    createMatrix(output, sizes);
    for(int i=0; i<B->sizes[1]; i++){
        for(int y=0; y<A->sizes[0]; y++){
            output->matrix[y][i] = 0;
            for(int x=0; x<A->sizes[1]; x++){
                output->matrix[y][i] += A->matrix[y][x] * B->matrix[x][i];
            }
        }
    }
}
void fullyCopyMatrix(struct Matrix *input, struct Matrix *output){
    int *size = (int*)malloc(2*sizeof(int));
    size[0] = input->sizes[0];
    size[1] = input->sizes[1];
    createMatrix(output, size);
    for(int i=0; i < output->sizes[0]; i++){
        memcpy(output->matrix[i], input->matrix[i], output->sizes[1] * sizeof(float));
    }
}
void matrixSubstAdd(struct Matrix *A, struct Matrix *B, struct Matrix *output, int type){
    int *sizes = (int *)malloc(2 * sizeof(int));
    sizes[0] = A->sizes[0];
    sizes[1] = B->sizes[1];
    createMatrix(output, sizes);
    for(int i=0; i<output->sizes[0]; i++){
        for(int y=0; y<output->sizes[1]; y++){
            if(type == 0){
                output->matrix[i][y] = A->matrix[i][y] - B->matrix[i][y];
            } else{
                output->matrix[i][y] = A->matrix[i][y] + B->matrix[i][y];
            }
        }
    }
}
void matrixAllValuesFormula(struct Matrix *matrix, float (*func_ptr)(float)){
    for(int i=0; i<matrix->sizes[0]; i++){
        for(int y=0; y<matrix->sizes[1]; y++){
            matrix->matrix[i][y] = func_ptr(matrix->matrix[i][y]);
        }
    }
}
typedef struct Signal {
    float *signal;
    float dt;
    int length;
}Signal;
void deleteSignal(struct Signal *signal);
void cliSignalSelector(struct Signal *signal);
typedef struct PID {
  float Kp;
  float Ki;
  float Kd;
  float tauI;
  float tauD;
  float prevError;
  float proportiError;
  float integralError;
  float differenError;
  struct Signal *signal;
  float (*func_system)(float*);
  struct Signal *output;
  float *dataSystem;
  int sizeDataSystem;
  float limMaxInt;
  float limMinInt;
  float limMax;
  float limMin;
  float fit;
  int steadyRiseCheck;
  int maxCounter;
}PID;
void createNewPidController(struct PID *pid);
void deletePid(struct PID *pid);
void makeSimulationOfSignal(struct PID *pid, FILE *csvFile, int csv);
int selectSystem(float (**func_ptr)(float*));
void createNewPidController(struct PID *pid){
    pid->Kp = 0.0;
    pid->Ki = 0.0;
    pid->Kd = 0.0;
    pid->tauD = 1.0;
    pid->tauI = 1.0;
    pid->signal = (struct Signal*)malloc(sizeof(struct Signal));
    cliSignalSelector(pid->signal);
    int size = selectSystem(&pid->func_system);
    pid->dataSystem = (float*)malloc(size * sizeof(float));
    for(int i=0; i<size; i++){
        pid->dataSystem[i] = 0.0;
    }
    pid->sizeDataSystem = size;
    pid->output = (struct Signal*)malloc(sizeof(struct Signal));
    pid->output->length = pid->signal->length;
    pid->output->dt = pid->signal->dt;
    pid->output->signal = (float*)malloc(pid->signal->length * sizeof(float));
    pid->prevError = 0.0;
    pid->integralError = 0.0;
}
void deletePid(struct PID *pid){
    deleteSignal(pid->signal);
    deleteSignal(pid->output);
    free(pid->dataSystem);
    free(pid);
}
static void resetOutputMemoryPid(struct PID *pid){
    for(int i=0; i < pid->signal->length; i++){
        pid->output->signal[i] = 0.0;
    }
    for(int i=0; i<pid->sizeDataSystem; i++){
        pid->dataSystem[i] = 0.0;
    }
    pid->dataSystem[1] = pid->signal->dt;
    pid->proportiError = 0.0;
    pid->integralError = 0.0;
    pid->differenError = 0.0;
    pid->prevError = 0.0;
    pid->steadyRiseCheck = 1;
    pid->maxCounter = 0;
}
void makeSimulationOfSignal(struct PID *pid, FILE *csvFile, int csv){
    resetOutputMemoryPid(pid);
    pid->fit = 0.0;
    float error;
    if(csv == 1){
        fprintf(csvFile, "%f,%f,%f,%f,%f\n", pid->proportiError, pid->integralError, pid->differenError, pid->output->signal[0], pid->signal->signal[0]);
    }
    for(int i=2; i<pid->signal->length; i++){
        error = pid->signal->signal[i] - pid->output->signal[i-1];
        pid->proportiError = pid->Kp * error;
        pid->integralError = pid->integralError + 0.5f * pid->Ki * (error - pid->prevError) * pid->signal->dt;
        pid->differenError = -(2.0f * pid->Kd * (pid->output->signal[i-1] - pid->output->signal[i-2]) + (2.0f * pid->tauD - pid->signal->dt) * pid->differenError)
                                / (2.0f * pid->tauD + pid->signal->dt);
        if(pid->integralError > pid->limMaxInt){
            pid->integralError =pid->limMaxInt;
        } else if(pid->integralError < pid->limMinInt){
            pid->integralError = pid->limMinInt;
        }
        pid->dataSystem[0] = pid->proportiError + pid->integralError + pid->differenError;
        pid->output->signal[i] = pid->func_system(pid->dataSystem);
        if(pid->output->signal[i] > pid->limMax){
            pid->output->signal[i] = pid->limMax;
            pid->maxCounter++;
        } else if(pid->output->signal[i] < pid->limMin){
            pid->output->signal[i] = pid->limMin;
            pid->maxCounter++;
        }
        if(csv == 1){
            fprintf(csvFile, "%f,%f,%f,%f,%f\n", pid->proportiError, pid->integralError, pid->differenError, pid->output->signal[i], pid->signal->signal[i]);
        }
        pid->prevError = error;
        float diff = pid->signal->signal[i] - pid->output->signal[i];
        pid->fit += diff > 0 ? diff : diff * (-1);
        if(pid->output->signal[i-1] > pid->output->signal[i]){
            pid->steadyRiseCheck = 0;
        }
    }
    if(pid->steadyRiseCheck == 1){
        pid->fit = 3.40282347e+38F;
    } else if(pid->maxCounter > pid->signal->length * 1 / 100){
        pid->fit = 3.40282347e+38F;
    }
}
static void selectStepSignal(struct Signal *signal){
    signal->length = 1000;
    signal->dt = 0.01;;
    signal->signal = (float*)malloc(signal->length * sizeof(float));
    int globalIndex = 0;
    for(float i = 0.0; i < 0.3; i += signal->dt){
        signal->signal[globalIndex] = 0.0;
        globalIndex++;
    } for(float i = 0.3 + signal->dt; i < 10.0; i += signal->dt){
        signal->signal[globalIndex] = 1.0;
        globalIndex++;
    }
    signal->length = globalIndex;
}
static void selectCustomASignal(struct Signal *signal){
    signal->length = 1002;
    signal->dt = 0.01;;
    signal->signal = (float*)malloc(signal->length * sizeof(float));
    int globalIndex = 0;
    for(float i = 0.0; i < 1.0; i += signal->dt){
        signal->signal[globalIndex] = 0.0;
        globalIndex++;
    } for(float i = 1.0; i < 3.0; i += signal->dt){
        signal->signal[globalIndex] = 30.0;
        globalIndex++;
    } for(float i = 3.0; i < 5.0; i += signal->dt){
        signal->signal[globalIndex] = 15.0;
        globalIndex++;
    } for(float i = 5.0; i < 8.0; i += signal->dt){
        signal->signal[globalIndex] = 5.0;
        globalIndex++;
    } for(float i = 8.0; i < 9.0; i += signal->dt){
        signal->signal[globalIndex] = 25.0;
        globalIndex++;
    } for(float i = 9.0; i < 10.0; i += signal->dt){
        signal->signal[globalIndex] = 0.0;
        globalIndex++;
    }
    signal->length = globalIndex;
}
void deleteSignal(struct Signal *signal){
    free(signal->signal);
    free(signal);
}
void cliSignalSelector(struct Signal *signal){
    printf("Please select the Signal:\n");
    printf("1 - step\n");
    printf("2 - customa\n");
    printf("Select: ");
    int userChoice;
    scanf("%d", &userChoice);
    if (userChoice == 1) {
        selectStepSignal(signal);
    } else if(userChoice == 2){
        selectCustomASignal(signal);
    }
}

void quickSort(float *fit, int *input, int length){
  int index = length / 2;
  int indexMore = 0;
  int indexLess = 0;
  int *arrayMore = (int*)malloc(length* sizeof(int));
  int *arrayLess = (int*)malloc(length* sizeof(int));
  for(int i=0; i<length; i++){
    if(i != index){
      if(fit[input[i]] >= fit[input[index]]){
        arrayMore[indexMore] = input[i];
        indexMore++;
      } else if(fit[input[i]] < fit[input[index]]){
        arrayLess[indexLess] = input[i];
        indexLess++;
      }
    }
  }
  arrayMore = (int*)realloc(arrayMore, indexMore*sizeof(int));
  arrayLess = (int*)realloc(arrayLess, indexLess*sizeof(int));
  if(indexMore > 1){
    quickSort(fit, arrayMore, indexMore);
  }
  if(indexLess > 1){
    quickSort(fit, arrayLess, indexLess);
  }
  int midle = input[index];
  int indexGlobal = 0;
  for(int i=0; i<indexLess; i++){
    input[indexGlobal] = arrayLess[i];
    indexGlobal++;
  }
  input[indexGlobal] = midle;
  indexGlobal++;
  for(int i=0; i<indexMore; i++){
    input[indexGlobal] = arrayMore[i];
    indexGlobal++;
  }
  free(arrayLess);
  free(arrayMore);
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

float linear(float *data){
    return data[0];
}
float complexYDot(float *data){
    data[2] = data[2] + data[0] * data[1];
    return data[2];
}
float complexYDddot(float *data){
    data[5] = data[0] - 2 * data[2] - 3 * data[3] - 4 * data[4];
    data[2] = data[2] + data[5] * data[1];
    data[3] = data[3] + data[2] * data[1];
    data[4] = data[4] + data[3] * data[1];
    return data[4];
}
int selectSystem(float (**func_ptr)(float*)){
    printf("Please select the system:\n");
    printf("1 - linear\n");
    printf("2 - complexYDddot\n");
    printf("3 - complexYDot\n");
    printf("Select: ");
    int userChoice;
    scanf("%d", &userChoice);
    if (userChoice == 1) {
        *func_ptr = linear;
        return 2;
    } else if (userChoice == 2){
        *func_ptr = complexYDddot;
        return 6;
    } else if (userChoice == 3){
        *func_ptr = complexYDot;
        return 4;
    } else{
        exit(0);
    }
}
typedef struct NN{
    struct Matrix **AW;
    struct Matrix **BW;
    int *neuronsSize;
    int layerNumber;
    int countOfValues;
    float **normalizationMatrix;
    float **denormalizationMatrix;
    float (*func_ptr)(float);
    int *layerType;
    int **sdNeuronsTypes;
    struct Matrix **SDMemory;
}NN;
typedef struct NNInput{
    int *neuronsSize;
    int layerNumber;
    float **normalizationMatrix;
    float **denormalizationMatrix;
    int *layerType;
    int sdNumber;
}NNInput;
void createNeuralNetwork(struct NNInput *input, struct NN *neuralNetwork);
void clearNeuralNetwork(struct NN *neuralNetwork);
void oneCalculation(struct NN *neuralNetwork, struct Matrix *input, struct Matrix *output);
void fillMatrixesNN(struct NN *neuralNetwork, float *population);
void deNormalizationProcess(struct NN *neuralNetwork, struct Matrix *input, int way);
void clearSDMemory(struct NN *neuralNetwork);
typedef struct SystemNN {
  struct NN *neuralNetwork;
  struct Signal *signal;
  float (*func_system)(float*);
  struct Signal *output;
  float *dataSystem;
  int sizeDataSystem;
  float (*input_sys)(float*);
  float *inputData;
  int *inputDataSize;
  int *inputTypes;
  float maxSys;
  float minSys;
  float fit;
  int steadyRiseCheck;
  int maxCounter;
}SystemNN;
void createNNSystem(struct SystemNN *systemNN, struct NNInput *input);
void clearNNSystem(struct SystemNN *systemNN);
void makeSimulationOfSignalNN(struct SystemNN *systemNN, FILE *csvFile, int csv);
void pidFitFunction(struct Pop *population, float *fit, struct PID *pid);
void nnFitFunction(struct Pop *population, float *fit, struct SystemNN *systemNN);
void pidFitFunction(struct Pop *population, float *fit, struct PID *pid){
  int csv = 0;
  FILE *trash;
  for(int i=0; i<population->rows; i++){
    for(int j=0; j<pid->sizeDataSystem; j++){
      pid->dataSystem[j] = 0.0;
    }
    pid->Kp = population->pop[i][0];
    pid->Ki = population->pop[i][1];
    pid->Kd = population->pop[i][2];
    pid->tauD = population->pop[i][3];
    makeSimulationOfSignal(pid, trash, csv);
    fit[i] = pid->fit;
  }
}
void nnFitFunction(struct Pop *population, float *fit, struct SystemNN *systemNN){
  FILE *trash;
  for(int i=0; i<population->rows; i++){
    for(int j=0; j<systemNN->sizeDataSystem; j++){
      systemNN->dataSystem[j] = 0.0;
    }
    fillMatrixesNN(systemNN->neuralNetwork, population->pop[i]);
    makeSimulationOfSignalNN(systemNN, trash, 0);
    fit[i] = systemNN->fit;
  }
}
void selbest(float *fit, int fitLength, struct Pop *population, struct Pop *newPopulation, int *selects, int selectsLength, int way);
void selrand(struct Pop *population, struct Pop *newPopulation, int rows);
void selturn(struct Pop *population, float* fit, struct Pop *newPopulation, int rows);
void crosov(struct Pop *population, int *selects, int selectsLength);
void mutx(struct Pop *population, float chance);
static void create_input_pop_custom(struct InputPop *inputPop, int rows, struct Pop *population){
  inputPop->cols = population->cols;
  inputPop->rows = rows;
  inputPop->S = (float**)malloc(2 * sizeof(float*));
  inputPop->S[0] = (float *)malloc(inputPop->cols * sizeof(float));
  inputPop->S[1] = (float *)malloc(inputPop->cols * sizeof(float));
  memcpy(inputPop->S[0], population->S[0], inputPop->cols * sizeof(float));
  memcpy(inputPop->S[1], population->S[1], inputPop->cols * sizeof(float));
}
void selbest(float *fit, int fitLength, struct Pop *population, struct Pop *newPopulation, int *selects, int selectsLength, int way){
  int rows = 0;
  for(int i=0; i<selectsLength; i++){
    rows += selects[i];
  }
  int* result = (int*)malloc(fitLength * sizeof(int));
  for(int i=0; i<fitLength; i++){
    result[i] = i;
  }
  quickSort(fit, result, fitLength);
  int resultIndex = 0;
  if(way == 0){
    resultIndex = fitLength -1;
  } else if(way == 1){
    resultIndex = 0;
  } else{
    fprintf(stderr, "Error: way should be 0 or 1\n");
    exit(1);
  }
  struct InputPop *inputPop = (struct InputPop*)malloc(sizeof(struct InputPop));
  create_input_pop_custom(inputPop, rows, population);
  createStructure(inputPop, newPopulation);
  int globalIndex = 0;
  for(int i=0; i<selectsLength; i++){
    int num = selects[i];
    for(int y=0; y<num; y++){
      memcpy(newPopulation->pop[globalIndex], population->pop[result[resultIndex]], newPopulation->cols * sizeof(float));
      globalIndex++;
    }
    if(way == 0){
      resultIndex--;
    } else{
      resultIndex++;
    }
  }
  free(result);
}
void selrand(struct Pop *population, struct Pop *newPopulation, int rows){
  struct InputPop *inputPop = (struct InputPop*)malloc(sizeof(struct InputPop));
  create_input_pop_custom(inputPop, rows, population);
  createStructure(inputPop, newPopulation);
  int index;
  for(int i=0; i<rows; i++){
    index = rand() % population->rows;
    memcpy(newPopulation->pop[i], population->pop[index], population->cols * sizeof(float));
  }
}
void selturn(struct Pop *population, float* fit, struct Pop *newPopulation, int rows){
  struct InputPop *inputPop = (struct InputPop*)malloc(sizeof(struct InputPop));
  create_input_pop_custom(inputPop, rows, population);
  createStructure(inputPop, newPopulation);
  for(int i=0; i<rows; i++){
    int j = rand() % population->rows;
    int k = rand() % population->rows;
    if(j == k){
      memcpy(newPopulation->pop[i], population->pop[j], population->cols * sizeof(float));
    } else if (fit[j] <= fit[k]){
      memcpy(newPopulation->pop[i], population->pop[j], population->cols * sizeof(float));
    } else{
      memcpy(newPopulation->pop[i], population->pop[k], population->cols * sizeof(float));
    }
  }
}
void crosov(struct Pop *population, int *selects, int selectsLength){
  if(selectsLength % 2 != 0){
    selects = (int *)realloc(selects, (selectsLength + 1) * sizeof(int));
    selects[selectsLength] = population->cols;
    selectsLength++;
  }
  int start, end, globalIndex;
  float *additionaSaving = (float*)malloc(sizeof(float));
  for(int index = 0; index < population->rows - 1; index += 2){
    for(int i = 0; i<selectsLength; i+=2){
      start = selects[i];
      end = selects[i + 1];
      additionaSaving = (float *)realloc(additionaSaving, (end - start) * sizeof(float));
      globalIndex = 0;
      for(int x = start; x<end; x++){
        additionaSaving[globalIndex] = population->pop[index][x];
        globalIndex++;
      }
      globalIndex = 0;
      for(int x = start; x<end; x++){
        population->pop[index][x] = population->pop[index+1][x];
        population->pop[index+1][x] = additionaSaving[globalIndex];
        globalIndex++;
      }
    }
  }
  free(additionaSaving);
  free(selects);
}
void mutx(struct Pop *population, float chance){
  float randomFloat;
  for(int x=0; x<population->rows; x++){
    for(int y=0; y<population->cols; y++){
      randomFloat = (float)rand() / 2147483647;
      if(randomFloat < chance){
        randomFloat = createRandomFloat(population->S[1][y], population->S[0][y]);
        population->pop[x][y] = randomFloat;
      }
    }
  }
}
static void clearInputPop(struct InputPop* input){
  if(input){
    free(input->S[0]);
    free(input->S[1]);
    free(input->S);
    free(input);
  }
}
void createInputPop(struct InputPop *inputPop, float* max, float* min, int* size){
  inputPop->cols = size[1];
  inputPop->rows = size[0];
  inputPop->S = (float**)malloc(2 * sizeof(float*));
  inputPop->S[0] = (float* )malloc(inputPop->cols * sizeof(float));
  inputPop->S[1] = (float* )malloc(inputPop->cols * sizeof(float));
  memcpy(inputPop->S[0], max, inputPop->cols * sizeof(float));
  memcpy(inputPop->S[1], min, inputPop->cols * sizeof(float));
}
static void alocatePopulation(struct InputPop* input, struct Pop* population){
  population->cols = input->cols;
  population->rows = input->rows;
  population->pop = (float **)malloc(population->rows * sizeof(float *));
  for (int i = 0; i < population->rows; i++) {
    population->pop[i] = (float *)malloc(population->cols * sizeof(float));
  }
  population->S = (float**)malloc(2 * sizeof(float*));
  population->S[0] = (float* )malloc(population->cols * sizeof(float));
  population->S[1] = (float* )malloc(population->cols * sizeof(float));
  memcpy(population->S[0], input->S[0], population->cols * sizeof(float));
  memcpy(population->S[1], input->S[1], population->cols * sizeof(float));
  clearInputPop(input);
}
void clearPopulation(struct Pop* population) {
  if (population) {
    for (int i = 0; i < population->rows; i++) {
      free(population->pop[i]);
    }
    free(population->pop);
    free(population->S[0]);
    free(population->S[1]);
    free(population->S);
    free(population);
  }
}
void createStructure(struct InputPop *input, struct Pop *population) {
  alocatePopulation(input, population);
  generateRandomPopulation(population);
}
void generateRandomPopulation(struct Pop *population){
  float newValue;
  for(int y = 0; y < population->rows; y++){
    for(int i=0; i < population->cols; i++ ){
      newValue = createRandomFloat(population->S[1][i], population->S[0][i]);
      population->pop[y][i] = newValue;
    }
  }
}
void placePartOfPop(struct Pop *pop, struct Pop *source, int *indexes){
  int globalIndex = 0;
  for(int i=indexes[0]; i<indexes[1]; i++){
    memcpy(pop->pop[i], source->pop[globalIndex], source->cols * sizeof(float));
    globalIndex++;
  }
}
void selectActivationFunction(float (**func_ptr)(float));
void selectTangActivationFunction(float (**func_ptr)(float));
void selectSigmActivationFunction(float (**func_ptr)(float));
float tangenth(float x){
    return tanh(5*x);
}
float sigmoid(float x) {
    return 1.0 / (1.0 + exp(-x));
}
void selectTangActivationFunction(float (**func_ptr)(float)){
    *func_ptr = tangenth;
}
void selectSigmActivationFunction(float (**func_ptr)(float)){
    *func_ptr = sigmoid;
}
void selectActivationFunction(float (**func_ptr)(float)){
    printf("Please select the AF:\n1 - tanh\n2 - sigmoid\nSelect: ");
    int userChoice;
    scanf("%d", &userChoice);
    if (userChoice == 1) {
        *func_ptr = tangenth;
    } else if (userChoice == 2) {
        *func_ptr = sigmoid;
    }
}
void selectInputNNFunction(void (**func_ptr)(float*), struct SystemNN *systemInput);
void typeOne(float *data) {
  data[4] = (data[1] - data[9])/data[0];
  data[5] += data[1];
  data[9] = data[1];
  data[8] = (data[2] - data[10])/data[0];
  data[10] = data[2];
  data[6] = (data[3] - data[11])/data[0];
  data[7] = (data[6] - data[12])/data[0];
  data[11] = data[3];
  data[12] = data[6];
}
void typeTwo(float *data) {
}
static void makeInputDataSystem(struct SystemNN *systemNN, int size, int full){
  systemNN->inputData = (float*)malloc(full * sizeof(float));
  for(int i=0; i<full; i++){
      systemNN->inputData[i] = 0.0;
  }
  systemNN->inputDataSize = (int*)malloc(3 * sizeof(int));
  systemNN->inputDataSize[0] = full;
  systemNN->inputDataSize[1] = 1;
  systemNN->inputDataSize[2] = size + 1;
  systemNN->inputTypes = (int*)malloc(size * sizeof(int));
  systemNN->inputTypes[0] = 0;
  systemNN->inputTypes[1] = 1;
  systemNN->inputTypes[2] = 2;
  systemNN->inputTypes[3] = 4;
  systemNN->inputTypes[4] = 5;
  systemNN->inputTypes[5] = 9;
  systemNN->inputTypes[6] = 10;
  systemNN->inputTypes[7] = 6;
}
static void makeInputDataSystemTwo(struct SystemNN *systemNN, int size, int full){
  systemNN->inputData = (float*)malloc(full * sizeof(float));
  for(int i=0; i<full; i++){
      systemNN->inputData[i] = 0.0;
  }
  systemNN->inputDataSize = (int*)malloc(3 * sizeof(int));
  systemNN->inputDataSize[0] = full;
  systemNN->inputDataSize[1] = 1;
  systemNN->inputDataSize[2] = size + 1;
  systemNN->inputTypes = (int*)malloc(size * sizeof(int));
  systemNN->inputTypes[0] = 0;
  systemNN->inputTypes[1] = 1;
  systemNN->inputTypes[2] = 2;
}
void selectInputNNFunction(void (**func_ptr)(float*), struct SystemNN *systemNN){
    printf("Please select the AF:\n1 - typeOne\n");
    printf("2 - typeTwo (SD)\n");
    printf("Select: ");
    int userChoice;
    scanf("%d", &userChoice);
    if (userChoice == 1) {
        *func_ptr = typeOne;
        makeInputDataSystem(systemNN, 8, 13);
    } else if(userChoice == 2){
      *func_ptr = typeTwo;
      makeInputDataSystemTwo(systemNN, 3, 4);
    }
}
typedef __useconds_t useconds_t;
typedef __intptr_t intptr_t;
typedef __socklen_t socklen_t;
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ ));
extern int close (int __fd);
extern void closefrom (int __lowfd) __attribute__ ((__nothrow__ ));
extern ssize_t read (int __fd, void *__buf, size_t __nbytes)
                                                  ;
extern ssize_t write (int __fd, const void *__buf, size_t __n)
                                         ;
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset)
                                                  ;
extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset)
                                         ;
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ )) ;
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ ));
extern unsigned int sleep (unsigned int __seconds);
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ ));
extern int usleep (__useconds_t __useconds);
extern int pause (void);
extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ )) ;
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
extern int chdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int fchdir (int __fd) __attribute__ ((__nothrow__ )) ;
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ )) ;
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__))
                                       ;
extern int dup (int __fd) __attribute__ ((__nothrow__ )) ;
extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ ));
extern char **__environ;
extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int nice (int __inc) __attribute__ ((__nothrow__ )) ;
extern void _exit (int __status) __attribute__ ((__noreturn__));
enum
  {
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS
  };
enum
  {
    _SC_ARG_MAX,
    _SC_CHILD_MAX,
    _SC_CLK_TCK,
    _SC_NGROUPS_MAX,
    _SC_OPEN_MAX,
    _SC_STREAM_MAX,
    _SC_TZNAME_MAX,
    _SC_JOB_CONTROL,
    _SC_SAVED_IDS,
    _SC_REALTIME_SIGNALS,
    _SC_PRIORITY_SCHEDULING,
    _SC_TIMERS,
    _SC_ASYNCHRONOUS_IO,
    _SC_PRIORITIZED_IO,
    _SC_SYNCHRONIZED_IO,
    _SC_FSYNC,
    _SC_MAPPED_FILES,
    _SC_MEMLOCK,
    _SC_MEMLOCK_RANGE,
    _SC_MEMORY_PROTECTION,
    _SC_MESSAGE_PASSING,
    _SC_SEMAPHORES,
    _SC_SHARED_MEMORY_OBJECTS,
    _SC_AIO_LISTIO_MAX,
    _SC_AIO_MAX,
    _SC_AIO_PRIO_DELTA_MAX,
    _SC_DELAYTIMER_MAX,
    _SC_MQ_OPEN_MAX,
    _SC_MQ_PRIO_MAX,
    _SC_VERSION,
    _SC_PAGESIZE,
    _SC_RTSIG_MAX,
    _SC_SEM_NSEMS_MAX,
    _SC_SEM_VALUE_MAX,
    _SC_SIGQUEUE_MAX,
    _SC_TIMER_MAX,
    _SC_BC_BASE_MAX,
    _SC_BC_DIM_MAX,
    _SC_BC_SCALE_MAX,
    _SC_BC_STRING_MAX,
    _SC_COLL_WEIGHTS_MAX,
    _SC_EQUIV_CLASS_MAX,
    _SC_EXPR_NEST_MAX,
    _SC_LINE_MAX,
    _SC_RE_DUP_MAX,
    _SC_CHARCLASS_NAME_MAX,
    _SC_2_VERSION,
    _SC_2_C_BIND,
    _SC_2_C_DEV,
    _SC_2_FORT_DEV,
    _SC_2_FORT_RUN,
    _SC_2_SW_DEV,
    _SC_2_LOCALEDEF,
    _SC_PII,
    _SC_PII_XTI,
    _SC_PII_SOCKET,
    _SC_PII_INTERNET,
    _SC_PII_OSI,
    _SC_POLL,
    _SC_SELECT,
    _SC_UIO_MAXIOV,
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
    _SC_PII_INTERNET_STREAM,
    _SC_PII_INTERNET_DGRAM,
    _SC_PII_OSI_COTS,
    _SC_PII_OSI_CLTS,
    _SC_PII_OSI_M,
    _SC_T_IOV_MAX,
    _SC_THREADS,
    _SC_THREAD_SAFE_FUNCTIONS,
    _SC_GETGR_R_SIZE_MAX,
    _SC_GETPW_R_SIZE_MAX,
    _SC_LOGIN_NAME_MAX,
    _SC_TTY_NAME_MAX,
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
    _SC_THREAD_KEYS_MAX,
    _SC_THREAD_STACK_MIN,
    _SC_THREAD_THREADS_MAX,
    _SC_THREAD_ATTR_STACKADDR,
    _SC_THREAD_ATTR_STACKSIZE,
    _SC_THREAD_PRIORITY_SCHEDULING,
    _SC_THREAD_PRIO_INHERIT,
    _SC_THREAD_PRIO_PROTECT,
    _SC_THREAD_PROCESS_SHARED,
    _SC_NPROCESSORS_CONF,
    _SC_NPROCESSORS_ONLN,
    _SC_PHYS_PAGES,
    _SC_AVPHYS_PAGES,
    _SC_ATEXIT_MAX,
    _SC_PASS_MAX,
    _SC_XOPEN_VERSION,
    _SC_XOPEN_XCU_VERSION,
    _SC_XOPEN_UNIX,
    _SC_XOPEN_CRYPT,
    _SC_XOPEN_ENH_I18N,
    _SC_XOPEN_SHM,
    _SC_2_CHAR_TERM,
    _SC_2_C_VERSION,
    _SC_2_UPE,
    _SC_XOPEN_XPG2,
    _SC_XOPEN_XPG3,
    _SC_XOPEN_XPG4,
    _SC_CHAR_BIT,
    _SC_CHAR_MAX,
    _SC_CHAR_MIN,
    _SC_INT_MAX,
    _SC_INT_MIN,
    _SC_LONG_BIT,
    _SC_WORD_BIT,
    _SC_MB_LEN_MAX,
    _SC_NZERO,
    _SC_SSIZE_MAX,
    _SC_SCHAR_MAX,
    _SC_SCHAR_MIN,
    _SC_SHRT_MAX,
    _SC_SHRT_MIN,
    _SC_UCHAR_MAX,
    _SC_UINT_MAX,
    _SC_ULONG_MAX,
    _SC_USHRT_MAX,
    _SC_NL_ARGMAX,
    _SC_NL_LANGMAX,
    _SC_NL_MSGMAX,
    _SC_NL_NMAX,
    _SC_NL_SETMAX,
    _SC_NL_TEXTMAX,
    _SC_XBS5_ILP32_OFF32,
    _SC_XBS5_ILP32_OFFBIG,
    _SC_XBS5_LP64_OFF64,
    _SC_XBS5_LPBIG_OFFBIG,
    _SC_XOPEN_LEGACY,
    _SC_XOPEN_REALTIME,
    _SC_XOPEN_REALTIME_THREADS,
    _SC_ADVISORY_INFO,
    _SC_BARRIERS,
    _SC_BASE,
    _SC_C_LANG_SUPPORT,
    _SC_C_LANG_SUPPORT_R,
    _SC_CLOCK_SELECTION,
    _SC_CPUTIME,
    _SC_THREAD_CPUTIME,
    _SC_DEVICE_IO,
    _SC_DEVICE_SPECIFIC,
    _SC_DEVICE_SPECIFIC_R,
    _SC_FD_MGMT,
    _SC_FIFO,
    _SC_PIPE,
    _SC_FILE_ATTRIBUTES,
    _SC_FILE_LOCKING,
    _SC_FILE_SYSTEM,
    _SC_MONOTONIC_CLOCK,
    _SC_MULTI_PROCESS,
    _SC_SINGLE_PROCESS,
    _SC_NETWORKING,
    _SC_READER_WRITER_LOCKS,
    _SC_SPIN_LOCKS,
    _SC_REGEXP,
    _SC_REGEX_VERSION,
    _SC_SHELL,
    _SC_SIGNALS,
    _SC_SPAWN,
    _SC_SPORADIC_SERVER,
    _SC_THREAD_SPORADIC_SERVER,
    _SC_SYSTEM_DATABASE,
    _SC_SYSTEM_DATABASE_R,
    _SC_TIMEOUTS,
    _SC_TYPED_MEMORY_OBJECTS,
    _SC_USER_GROUPS,
    _SC_USER_GROUPS_R,
    _SC_2_PBS,
    _SC_2_PBS_ACCOUNTING,
    _SC_2_PBS_LOCATE,
    _SC_2_PBS_MESSAGE,
    _SC_2_PBS_TRACK,
    _SC_SYMLOOP_MAX,
    _SC_STREAMS,
    _SC_2_PBS_CHECKPOINT,
    _SC_V6_ILP32_OFF32,
    _SC_V6_ILP32_OFFBIG,
    _SC_V6_LP64_OFF64,
    _SC_V6_LPBIG_OFFBIG,
    _SC_HOST_NAME_MAX,
    _SC_TRACE,
    _SC_TRACE_EVENT_FILTER,
    _SC_TRACE_INHERIT,
    _SC_TRACE_LOG,
    _SC_LEVEL1_ICACHE_SIZE,
    _SC_LEVEL1_ICACHE_ASSOC,
    _SC_LEVEL1_ICACHE_LINESIZE,
    _SC_LEVEL1_DCACHE_SIZE,
    _SC_LEVEL1_DCACHE_ASSOC,
    _SC_LEVEL1_DCACHE_LINESIZE,
    _SC_LEVEL2_CACHE_SIZE,
    _SC_LEVEL2_CACHE_ASSOC,
    _SC_LEVEL2_CACHE_LINESIZE,
    _SC_LEVEL3_CACHE_SIZE,
    _SC_LEVEL3_CACHE_ASSOC,
    _SC_LEVEL3_CACHE_LINESIZE,
    _SC_LEVEL4_CACHE_SIZE,
    _SC_LEVEL4_CACHE_ASSOC,
    _SC_LEVEL4_CACHE_LINESIZE,
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
    _SC_RAW_SOCKETS,
    _SC_V7_ILP32_OFF32,
    _SC_V7_ILP32_OFFBIG,
    _SC_V7_LP64_OFF64,
    _SC_V7_LPBIG_OFFBIG,
    _SC_SS_REPL_MAX,
    _SC_TRACE_EVENT_NAME_MAX,
    _SC_TRACE_NAME_MAX,
    _SC_TRACE_SYS_MAX,
    _SC_TRACE_USER_EVENT_MAX,
    _SC_XOPEN_STREAMS,
    _SC_THREAD_ROBUST_PRIO_INHERIT,
    _SC_THREAD_ROBUST_PRIO_PROTECT,
    _SC_MINSIGSTKSZ,
    _SC_SIGSTKSZ
  };
enum
  {
    _CS_PATH,
    _CS_V6_WIDTH_RESTRICTED_ENVS,
    _CS_GNU_LIBC_VERSION,
    _CS_GNU_LIBPTHREAD_VERSION,
    _CS_V5_WIDTH_RESTRICTED_ENVS,
    _CS_V7_WIDTH_RESTRICTED_ENVS,
    _CS_LFS_CFLAGS = 1000,
    _CS_LFS_LDFLAGS,
    _CS_LFS_LIBS,
    _CS_LFS_LINTFLAGS,
    _CS_LFS64_CFLAGS,
    _CS_LFS64_LDFLAGS,
    _CS_LFS64_LIBS,
    _CS_LFS64_LINTFLAGS,
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
    _CS_XBS5_ILP32_OFF32_LIBS,
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LIBS,
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
    _CS_XBS5_LP64_OFF64_CFLAGS,
    _CS_XBS5_LP64_OFF64_LDFLAGS,
    _CS_XBS5_LP64_OFF64_LIBS,
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LIBS,
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LIBS,
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,
    _CS_V6_ENV,
    _CS_V7_ENV
  };
extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ ));
extern long int sysconf (int __name) __attribute__ ((__nothrow__ ));
extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ ))
                                                  ;
extern __pid_t getpid (void) __attribute__ ((__nothrow__ ));
extern __pid_t getppid (void) __attribute__ ((__nothrow__ ));
extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ ));
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));
extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));
extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ ));
extern int setpgrp (void) __attribute__ ((__nothrow__ ));
extern __pid_t setsid (void) __attribute__ ((__nothrow__ ));
extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ ));
extern __uid_t getuid (void) __attribute__ ((__nothrow__ ));
extern __uid_t geteuid (void) __attribute__ ((__nothrow__ ));
extern __gid_t getgid (void) __attribute__ ((__nothrow__ ));
extern __gid_t getegid (void) __attribute__ ((__nothrow__ ));
extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ ))
                                                  ;
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;
extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ )) ;
extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;
extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ )) ;
extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;
extern __pid_t fork (void) __attribute__ ((__nothrow__));
extern __pid_t vfork (void) __attribute__ ((__nothrow__ ));
extern char *ttyname (int __fd) __attribute__ ((__nothrow__ ));
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)))
                                                   ;
extern int isatty (int __fd) __attribute__ ((__nothrow__ ));
extern int ttyslot (void) __attribute__ ((__nothrow__ ));
extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4))) ;
extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)))
                                                   ;
extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3))) ;
extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)))
                                                   ;
extern int unlink (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int rmdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ ));
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ ));
extern char *getlogin (void);
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)))
                                                  ;
extern int setlogin (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)))
                                                  ;
extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int sethostid (long int __id) __attribute__ ((__nothrow__ )) ;
extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)))
                                                   ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int vhangup (void) __attribute__ ((__nothrow__ ));
extern int revoke (const char *__file) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int acct (const char *__name) __attribute__ ((__nothrow__ ));
extern char *getusershell (void) __attribute__ ((__nothrow__ ));
extern void endusershell (void) __attribute__ ((__nothrow__ ));
extern void setusershell (void) __attribute__ ((__nothrow__ ));
extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ )) ;
extern int chroot (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));
extern int fsync (int __fd);
extern long int gethostid (void);
extern void sync (void) __attribute__ ((__nothrow__ ));
extern int getpagesize (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int getdtablesize (void) __attribute__ ((__nothrow__ ));
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ )) ;
extern int brk (void *__addr) __attribute__ ((__nothrow__ )) ;
extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ ));
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ ));
extern int lockf (int __fd, int __cmd, __off_t __len) ;
extern int fdatasync (int __fildes);
extern char *crypt (const char *__key, const char *__salt)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
int getentropy (void *__buffer, size_t __length)
                                          ;

void createNNSystem(struct SystemNN *systemNN, struct NNInput *input){
  selectInputNNFunction(&systemNN->input_sys, systemNN);
  input->neuronsSize[0] = systemNN->inputDataSize[2] - 1;
  input->normalizationMatrix = (float**)malloc(2 * sizeof(float*));
  input->denormalizationMatrix = (float**)malloc(2 * sizeof(float*));
  input->normalizationMatrix[0] = (float*)malloc(input->neuronsSize[0] * sizeof(float));
  input->normalizationMatrix[1] = (float*)malloc(input->neuronsSize[0] * sizeof(float));
  input->denormalizationMatrix[0] = (float*)malloc(sizeof(float));
  input->denormalizationMatrix[1] = (float*)malloc(sizeof(float));
  systemNN->neuralNetwork = (struct NN*)malloc(sizeof(struct NN));
  createNeuralNetwork(input, systemNN->neuralNetwork);
  systemNN->signal = (struct Signal *)malloc(sizeof(struct Signal));
  cliSignalSelector(systemNN->signal);
  int size = selectSystem(&systemNN->func_system);
  systemNN->dataSystem = (float*)malloc(size * sizeof(float));
  for(int i=0; i<size; i++){
      systemNN->dataSystem[i] = 0.0;
  }
  systemNN->sizeDataSystem = size;
  systemNN->output = (struct Signal*)malloc(sizeof(struct Signal));
  systemNN->output->length = systemNN->signal->length;
  systemNN->output->dt = systemNN->signal->dt;
  systemNN->output->signal = (float*)malloc(systemNN->signal->length * sizeof(float));
}
void clearNNSystem(struct SystemNN *systemNN){
  clearNeuralNetwork(systemNN->neuralNetwork);
  deleteSignal(systemNN->signal);
  deleteSignal(systemNN->output);
  free(systemNN->dataSystem);
  free(systemNN->inputData);
  free(systemNN->inputDataSize);
  free(systemNN);
}
static void cleanNNSystem(struct SystemNN *systemNN){
  for(int i=0; i < systemNN->signal->length; i++){
      systemNN->output->signal[i] = 0.0;
  }
  for(int i=0; i<systemNN->sizeDataSystem; i++){
      systemNN->dataSystem[i] = 0.0;
  }
  systemNN->dataSystem[1] = systemNN->signal->dt;
  for(int i=0; i<systemNN->inputDataSize[0]; i++){
      systemNN->inputData[i] = 0.0;
  }
  systemNN->inputData[0] = systemNN->signal->dt;
  systemNN->steadyRiseCheck = 0;
  systemNN->maxCounter = 0;
  systemNN->fit = 0.0;
}
static void getMaxMinSignalValues(struct Signal *signal, float *max, float *min){
  *max = 0.0;
  *min = 0.0;
  for(int i=0; i<signal->length; i++){
    if(signal->signal[i] > *max){
      *max = signal->signal[i];
    } else if (signal->signal[i] < *min){
      *min = signal->signal[i];
    }
  }
}
static void findUOneRound(struct SystemNN *systemNN, float *forValues, float *Data){
  float analyzedValue, maxY, maxDDY, maxE, maxDY;
  float finValue, sysOutput, dy, ddy, iy, preY, preDY;
  float du, ddu, iu, preU, preDU, min, penalty;
  float de, dde, ie, preE, preDE, maxDE, maxDDE, sum;
  int count;
  float maxSig, minSig;
  min = 3.40282347e+38F;
  getMaxMinSignalValues(systemNN->signal, &maxSig, &minSig);
  for(float curValue = forValues[0]; curValue < forValues[1]; curValue += forValues[2]){
    maxY = 0;
    maxDY = 0;
    maxDDY = 0;
    maxE = 0;
    maxDE = 0;
    maxDDE = 0;
    count = 0;
    preY = 0;
    preDY = 0;
    iy = 0;
    preU = 0;
    preDU = 0;
    iu = 0;
    preE = 0;
    preDE = 0;
    ie = 0;
    penalty = 0;
    sum = 0;
    for(int j=0; j<systemNN->sizeDataSystem; j++){
        systemNN->dataSystem[j] = 0.0;
    }
    systemNN->dataSystem[1] = systemNN->signal->dt;
    for(float j=0.0; j< systemNN->signal->length; j += systemNN->signal->dt){
      if(j < 1.0){
        systemNN->dataSystem[0] = 0;
      } else {
        systemNN->dataSystem[0] = curValue;
      }
      sysOutput = systemNN->func_system(systemNN->dataSystem);
      if(sysOutput > systemNN->maxSys){
        penalty = 50000;
      } else if(sysOutput < systemNN->minSys){
        penalty = 50000;
      }
      dy = (sysOutput - preY ) / systemNN->output->dt;
      ddy = (dy - preDY) / systemNN->output->dt;
      de = (maxSig - sysOutput - preE ) / systemNN->output->dt;
      dde = (de - preDE) / systemNN->output->dt;
      preY = sysOutput;
      preDY = dy;
      preE = maxSig - sysOutput;
      preDE = de;
      if(sysOutput > maxY ) { maxY = sysOutput; }
      if(preE > maxE ) { maxE = preE; }
      if(dy > maxDY ) { maxDY = dy; }
      if(ddy > maxDDY) { maxDDY = ddy; }
      if(de > maxDE ) { maxDE = de; }
      if(dde > maxDDE) { maxDDE = dde; }
      iy += sysOutput;
      iu += curValue;
      ie += preE;
      if(j>systemNN->signal->length - 1.0){
        sum += sysOutput;
        count++;
      }
    }
    analyzedValue = maxSig - (sum / count) + penalty;
    if(analyzedValue < 0){
      analyzedValue *= (-1);
    }
    if(iy < 0){
      iy *= (-1);
    } if(iu < 0){
      iu *= (-1);
    } if(ie < 0){
      ie *= (-1);
    }
    if(analyzedValue < min){
      min = analyzedValue;
      Data[0] = maxE;
      Data[1] = curValue;
      Data[2] = maxY;
      Data[3] = maxDE;
      Data[4] = maxDDE;
      Data[5] = ie;
      Data[6] = curValue / systemNN->output->dt;
      Data[7] = Data[7] / systemNN->output->dt;
      Data[8] = iu;
      Data[9] = maxDY;
      Data[10] = maxDDY;
      Data[11] = iy;
    }
  }
}
static void findUForSystemAndSignal(struct SystemNN *systemNN, float *Data){
  float forValueOne[] = {0.0, 10000.0, 1000.0};
  findUOneRound(systemNN, &forValueOne, Data);
  float forValueTwo[] = {Data[1] - 100.0, Data[1] + 100.0, 10.0};
  findUOneRound(systemNN, &forValueTwo, Data);
  float forValueThree[] = {Data[1] - 10.0, Data[1] + 10.0, 1.0};
  findUOneRound(systemNN, &forValueThree, Data);
}
static float makeDerivation(float *x, float *x_t, float *dt){
  return (*x - *x_t) / *dt;
}
void createDeNormalization(struct SystemNN *systemNN){
  float **normalization = (float**)malloc(2 * sizeof(float*));
  normalization[0] = (float*)malloc(12 * sizeof(float));
  normalization[1] = (float*)malloc(12 * sizeof(float));
  float *Data = (float*)malloc(12 * sizeof(float));
  findUForSystemAndSignal(systemNN, Data);
  normalization[0][0] = Data[0];
  normalization[1][0] = Data[0] * (-1);
  printf("E - %f\n", Data[0]);
  normalization[0][1] = Data[1];
  normalization[1][1] = Data[1] * (-1);
  printf("U - %f\n", Data[1]);
  normalization[0][2] = Data[2];
  normalization[1][2] = Data[2] * (-1);
  printf("Y - %f\n", Data[2]);
  normalization[0][3] = Data[3];
  normalization[1][3] = Data[3] * (-1);
  printf("dE - %f\n", Data[3]);
  normalization[0][4] = Data[4];
  normalization[1][4] = Data[4] * (-1);
  printf("dE2 - %f\n", Data[4]);
  normalization[0][5] = Data[5];
  normalization[1][5] = Data[5] * (-1);
  printf("iE - %f\n", Data[5]);
  normalization[0][6] = Data[6];
  normalization[1][6] = Data[6] * (-1);
  printf("dU - %f\n", Data[6]);
  normalization[0][7] = Data[7];
  normalization[1][7] = Data[7] * (-1);
  printf("dU2 - %f\n", Data[7]);
  normalization[0][8] = Data[8];
  normalization[1][8] = Data[8] * (-1);
  printf("iU - %f\n", Data[8]);
  normalization[0][9] = Data[9];
  normalization[1][9] = Data[9] * (-1);
  printf("dY - %f\n", Data[9]);
  normalization[0][10] = Data[10];
  normalization[1][10] = Data[10] * (-1);
  printf("dY2 - %f\n", Data[10]);
  normalization[0][11] = Data[11];
  normalization[1][11] = Data[11] * (-1);
  printf("iY - %f\n", Data[11]);
  normalization[0][1] *= 10.0;
  normalization[1][1] *= 10.0;
  for(int i = 0; i < systemNN->inputDataSize[2] - 1; i++){
    systemNN->neuralNetwork->normalizationMatrix[0][i] = normalization[0][systemNN->inputTypes[i]];
    systemNN->neuralNetwork->normalizationMatrix[1][i] = normalization[1][systemNN->inputTypes[i]];
    printf("%d - MAX: %f MIN: %f\n", i, systemNN->neuralNetwork->normalizationMatrix[0][i], systemNN->neuralNetwork->normalizationMatrix[1][i]);
  }
  systemNN->neuralNetwork->denormalizationMatrix[0][0] = normalization[0][1];
  systemNN->neuralNetwork->denormalizationMatrix[1][0] = normalization[1][1];
  free(normalization[0]);
  free(normalization[1]);
  free(normalization);
  free(Data);
  free(systemNN->inputTypes);
}
void makeSimulationOfSignalNN(struct SystemNN *systemNN, FILE *csvFile, int csv){
  cleanNNSystem(systemNN);
  clearSDMemory(systemNN->neuralNetwork);
  float error, diff;
  float neuralOutput = 0.0;
  float systemOutput = 0.0;
  int matrixIndex;
  float max = 0.0;
  for(int i=1; i<systemNN->signal->length; i++){
    error = systemNN->signal->signal[i] - systemNN->output->signal[i-1];
    systemNN->inputData[1] = error;
    systemNN->inputData[2] = neuralOutput;
    systemNN->inputData[3] = systemOutput;
    systemNN->input_sys(systemNN->inputData);
    struct Matrix *inputMatrix = (struct Matrix*)malloc(sizeof(struct Matrix));
    struct Matrix *outputMatrix = (struct Matrix*)malloc(sizeof(struct Matrix));
    int *inputSize = (int *)malloc(2 * sizeof(int));
    inputSize[0] = systemNN->neuralNetwork->neuronsSize[0];
    inputSize[1] = 1;
    createMatrix(inputMatrix, inputSize);
    matrixIndex = 0;
    for(int j=systemNN->inputDataSize[1]; j<systemNN->inputDataSize[2]; j++){
      inputMatrix->matrix[matrixIndex][0] = systemNN->inputData[j];
      matrixIndex++;
    }
    oneCalculation(systemNN->neuralNetwork, inputMatrix, outputMatrix);
    if(outputMatrix->matrix[0][0] > max){
      max = outputMatrix->matrix[0][0];
    }
    systemNN->dataSystem[0] = outputMatrix->matrix[0][0];
    neuralOutput = systemNN->dataSystem[0];
    systemNN->output->signal[i] = systemNN->func_system(systemNN->dataSystem);
    if(systemNN->output->signal[i] > systemNN->maxSys){
        systemNN->output->signal[i] = systemNN->maxSys;
        systemNN->maxCounter++;
    } else if(systemNN->output->signal[i] < systemNN->minSys){
        systemNN->output->signal[i] = systemNN->minSys;
        systemNN->maxCounter++;
    }
    systemOutput = systemNN->output->signal[i];
    if(csv == 1){
      fprintf(csvFile, "%f,%f,%f,%f\n", systemNN->output->signal[i], systemNN->signal->signal[i], outputMatrix->matrix[0][0], systemNN->output->signal[i]);
    }
    diff = fabs(systemNN->signal->signal[i] - systemNN->output->signal[i]);
    systemNN->fit += diff;
    if(systemNN->output->signal[i-1] > systemNN->output->signal[i]){
        systemNN->steadyRiseCheck++;
    }
    matrixDelete(outputMatrix);
  }
  if(csv == 1){
    printf("%f\n", max);
  }
}
static void clearNNInput(struct NNInput *input){
  free(input->neuronsSize);
  for(int i = 0; i < 2; i++){
    free(input->normalizationMatrix[i]);
    free(input->denormalizationMatrix[i]);
  }
  free(input->normalizationMatrix);
  free(input->denormalizationMatrix);
  free(input->layerType);
  free(input);
}
void createNeuralNetwork(struct NNInput *input, struct NN *neuralNetwork) {
  neuralNetwork->layerNumber = input->layerNumber;
  neuralNetwork->neuronsSize = (int*)malloc(input->layerNumber * sizeof(int));
  memcpy(neuralNetwork->neuronsSize, input->neuronsSize, neuralNetwork->layerNumber * sizeof(int));
  neuralNetwork->layerType = (int*)malloc(neuralNetwork->layerNumber * sizeof(int));
  memcpy(neuralNetwork->layerType, input->layerType, neuralNetwork->layerNumber * sizeof(int));
  neuralNetwork->sdNeuronsTypes = (int**)malloc(input->sdNumber * sizeof(int*));
  neuralNetwork->SDMemory = (struct Matrix **)malloc(input->sdNumber * sizeof(struct Matrix *));
  int globalIndexSD = 0;
  for(int i=0; i<neuralNetwork->layerNumber; i++){
    if(neuralNetwork->layerType[i] == 1){
      neuralNetwork->sdNeuronsTypes[globalIndexSD] = (int*)malloc(neuralNetwork->neuronsSize[i] * sizeof(int));
      for(int j=0; j<neuralNetwork->neuronsSize[i]/2; j++){
        neuralNetwork->sdNeuronsTypes[globalIndexSD][j] = 0;
      }
      int midIndexSlice = neuralNetwork->neuronsSize[i]/2 + (neuralNetwork->neuronsSize[i] - neuralNetwork->neuronsSize[i]/2)/2;
      for(int j=neuralNetwork->neuronsSize[i]/2; j < midIndexSlice; j++){
        neuralNetwork->sdNeuronsTypes[globalIndexSD][j] = 1;
      } for(int j=midIndexSlice; j<neuralNetwork->neuronsSize[i]; j++){
        neuralNetwork->sdNeuronsTypes[globalIndexSD][j] = 2;
      }
      neuralNetwork->SDMemory[globalIndexSD] = (struct Matrix *)malloc(sizeof(struct Matrix));
      int *sizesSDMatrix = (int*)malloc(2*sizeof(int));
      sizesSDMatrix[0] = neuralNetwork->neuronsSize[i];
      sizesSDMatrix[1] = 1;
      createMatrix(neuralNetwork->SDMemory[globalIndexSD], sizesSDMatrix);
      for(int j=0; j<neuralNetwork->neuronsSize[i]; j++){
        neuralNetwork->SDMemory[globalIndexSD]->matrix[j][0] = .0;
      }
      globalIndexSD++;
    }
  }
  neuralNetwork->normalizationMatrix = (float**)malloc(2 * sizeof(float*));
  neuralNetwork->denormalizationMatrix = (float**)malloc(2 * sizeof(float*));
  for(int i = 0; i < 2; i++){
    neuralNetwork->normalizationMatrix[i] = (float*)malloc(neuralNetwork->neuronsSize[0] * sizeof(float));
    neuralNetwork->denormalizationMatrix[i] = (float*)malloc(neuralNetwork->neuronsSize[neuralNetwork->layerNumber - 1] * sizeof(float));
    memcpy(neuralNetwork->normalizationMatrix[i], input->normalizationMatrix[i], neuralNetwork->neuronsSize[0] * sizeof(float));
    memcpy(neuralNetwork->denormalizationMatrix[i], input->denormalizationMatrix[i], neuralNetwork->neuronsSize[neuralNetwork->layerNumber - 1] * sizeof(float));
  }
  selectActivationFunction(&neuralNetwork->func_ptr);
  clearNNInput(input);
  neuralNetwork->AW = (struct Matrix **)malloc((neuralNetwork->layerNumber - 1) * sizeof(struct Matrix *));
  neuralNetwork->BW = (struct Matrix **)malloc((neuralNetwork->layerNumber - 1) * sizeof(struct Matrix *));
  int layerIndex = 0;
  neuralNetwork->countOfValues = 0;
  for(int i=0; i<neuralNetwork->layerNumber - 1; i++){
    neuralNetwork->AW[i] = (struct Matrix*)malloc(sizeof(struct Matrix));
    neuralNetwork->BW[i] = (struct Matrix*)malloc(sizeof(struct Matrix));
    int *sizesAW = (int*)malloc(2*sizeof(int));
    int *sizesBW = (int*)malloc(2*sizeof(int));
    sizesAW[0] = neuralNetwork->neuronsSize[layerIndex + 1];
    sizesAW[1] = neuralNetwork->neuronsSize[layerIndex];
    sizesBW[0] = neuralNetwork->neuronsSize[layerIndex + 1];
    sizesBW[1] = 1;
    neuralNetwork->countOfValues += neuralNetwork->neuronsSize[layerIndex + 1] * neuralNetwork->neuronsSize[layerIndex] + neuralNetwork->neuronsSize[layerIndex + 1];
    createMatrix(neuralNetwork->AW[i], sizesAW);
    createMatrix(neuralNetwork->BW[i], sizesBW);
    layerIndex += 1;
  }
  neuralNetwork->countOfValues -= neuralNetwork->neuronsSize[layerIndex];
  int indexBWLast = neuralNetwork->layerNumber - 2;
  for(int i=0; i<neuralNetwork->BW[indexBWLast]->sizes[0]; i++){
    for(int j=0; j<neuralNetwork->BW[indexBWLast]->sizes[0]; j++){
      neuralNetwork->BW[indexBWLast]->matrix[i][j] = 0.0;
    }
  }
}
void clearNeuralNetwork(struct NN *neuralNetwork) {
  for(int i=0; i<neuralNetwork->layerNumber - 1; i++){
     matrixDelete(neuralNetwork->AW[i]);
     matrixDelete(neuralNetwork->BW[i]);
  }
  free(neuralNetwork->AW);
  free(neuralNetwork->BW);
  for(int i = 0; i < 2; i++){
    free(neuralNetwork->normalizationMatrix[i]);
    free(neuralNetwork->denormalizationMatrix[i]);
  }
  free(neuralNetwork->normalizationMatrix);
  free(neuralNetwork->denormalizationMatrix);
  free(neuralNetwork->neuronsSize);
  int indexSD = 0;
  for(int i=0; i<neuralNetwork->layerNumber; i++){
    if(neuralNetwork->layerType[i] == 1){
      free(neuralNetwork->sdNeuronsTypes[indexSD]);
      matrixDelete(neuralNetwork->SDMemory[indexSD]);
      indexSD++;
    }
  }
  free(neuralNetwork->sdNeuronsTypes);
  free(neuralNetwork->SDMemory);
  free(neuralNetwork->layerType);
  free(neuralNetwork);
}
void fillMatrixesNN(struct NN *neuralNetwork, float *population){
  int globalIndex = 0;
  for(int i=0; i<neuralNetwork->layerNumber - 1; i++){
    for(int x=0; x<neuralNetwork->AW[i]->sizes[0]; x++){
      for(int y=0; y<neuralNetwork->AW[i]->sizes[1]; y++){
        neuralNetwork->AW[i]->matrix[x][y] = population[globalIndex];
        globalIndex++;
      }
    }
    if( i < neuralNetwork->layerNumber - 2){
      for(int x=0; x<neuralNetwork->BW[i]->sizes[0]; x++){
        for(int y=0; y<neuralNetwork->BW[i]->sizes[1]; y++){
          neuralNetwork->BW[i]->matrix[x][y] = population[globalIndex];
          globalIndex++;
        }
      }
    }
  }
}
void clearSDMemory(struct NN *neuralNetwork){
  int globalIndex = 0;
  for(int i=0; i<neuralNetwork->layerNumber; i++){
    if(neuralNetwork->layerType[i] == 1){
      for(int j=0; j<neuralNetwork->neuronsSize[i]; j++){
        neuralNetwork->SDMemory[globalIndex]->matrix[j][0] = .0;
      }
      globalIndex++;
    }
  }
}
void deNormalizationProcess(struct NN *neuralNetwork, struct Matrix *input, int way){
  float rMin, rMax, tMin, tMax;
  for(int i=0; i< input->sizes[0]; i++){
    if(way == 0){
      rMin = neuralNetwork->normalizationMatrix[1][i];
      rMax = neuralNetwork->normalizationMatrix[0][i];
      tMin = -1.0;
      tMax = 1.0;
    } else if(way == 1){
      rMin = -1.0;
      rMax = 1.0;
      tMin = neuralNetwork->denormalizationMatrix[1][i];
      tMax = neuralNetwork->denormalizationMatrix[0][i];
    }
    input->matrix[i][0] = ((input->matrix[i][0] - rMin)/(rMax - rMin)) * (tMax - tMin) + tMin;
    if(way == 0){
      if(input->matrix[i][0] > 1.0){
        input->matrix[i][0] = 1.0;
      } else if(input->matrix[i][0] < -1.0){
        input->matrix[i][0] = -1.0;
      }
    } else if (way == 1){
      if(input->matrix[i][0] > neuralNetwork->denormalizationMatrix[0][i]){
        input->matrix[i][0] = neuralNetwork->denormalizationMatrix[0][i];
      } else if(input->matrix[i][0] < neuralNetwork->denormalizationMatrix[1][i]){
        input->matrix[i][0] = neuralNetwork->denormalizationMatrix[1][i];
      }
    }
  }
}
static void makeSDLayerAction(struct NN *neuralNetwork, struct Matrix *input, int sdIndex, int layerIndex){
  float *DSDMemory = (float*)malloc(sizeof(float));
  int dNeuronsCount = 0;
  for(int i=0; i<neuralNetwork->neuronsSize[layerIndex]; i++){
    if(neuralNetwork->sdNeuronsTypes[sdIndex][i] == 2){
      dNeuronsCount++;
      DSDMemory = (float*)realloc(DSDMemory, dNeuronsCount * sizeof(float));
      DSDMemory[dNeuronsCount - 1] = (-1) * input->matrix[i][0];
    }
  }
  int type = 1;
  struct Matrix *output = (struct Matrix*)malloc(sizeof(struct Matrix));
  matrixSubstAdd(input, neuralNetwork->SDMemory[sdIndex], output, type);
  int indexD = 0;
  for(int i=0; i<neuralNetwork->neuronsSize[layerIndex]; i++){
    if(neuralNetwork->sdNeuronsTypes[sdIndex][i] == 2){
      neuralNetwork->SDMemory[sdIndex]->matrix[i][0] = DSDMemory[indexD];
    }
  }
  for(int i=0; i<neuralNetwork->neuronsSize[layerIndex]; i++){
    if(neuralNetwork->sdNeuronsTypes[sdIndex][i] == 1){
      neuralNetwork->SDMemory[sdIndex]->matrix[i][0] = output->matrix[i][0];
    }
  }
  free(DSDMemory);
  matrixDeleteOnlyData(input);
  fullyCopyMatrix(output, input);
  matrixDelete(output);
}
void oneCalculation(struct NN *neuralNetwork, struct Matrix *input, struct Matrix *output){
  int sdIndex = 0;
  int layerIndex;
  deNormalizationProcess(neuralNetwork, input, 0);
  for(int i=0; i<neuralNetwork->layerNumber - 1; i++){
    matrixMultiply(neuralNetwork->AW[i], input, output);
    matrixDeleteOnlyData(input);
    int type = 0;
    matrixSubstAdd(output, neuralNetwork->BW[i], input, type);
    matrixDeleteOnlyData(output);
    matrixAllValuesFormula(input, neuralNetwork->func_ptr);
    if(neuralNetwork->layerType[i + 1] == 1){
      layerIndex = i + 1;
      makeSDLayerAction(neuralNetwork, input, sdIndex, layerIndex);
      sdIndex++;
    }
  }
  fullyCopyMatrix(input, output);
  matrixDelete(input);
  deNormalizationProcess(neuralNetwork, output, 1);
}

