typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;

unsigned char * base62_encode(const unsigned char *src, size_t len,
         unsigned char *out, size_t out_capacity,
         size_t *out_len);
unsigned char * base64_encode(const unsigned char *src, size_t len,
         unsigned char *out, size_t out_capacity,
         size_t *out_len);
unsigned char * base64_decode(const unsigned char *src, size_t len,
         unsigned char *out, size_t out_capacity,
         size_t *out_size);
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
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
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
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
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));

static const unsigned char base64_table[65] =
 "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
static const unsigned char base62_table[] =
 "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
unsigned char * base_encode(const unsigned char *src, size_t len,
       unsigned char *out, size_t out_capacity,
       size_t *out_len, const unsigned char *base_table)
{
 unsigned char *pos;
 const unsigned char *end, *in;
 size_t olen;
 olen = len * 4 / 3 + 4;
 olen++;
 if (olen < len)
  return ((void*)0);
 if (olen > out_capacity)
  return ((void*)0);
 if (out == ((void*)0))
  return ((void*)0);
 end = src + len;
 in = src;
 pos = out;
 while (end - in >= 3) {
  *pos++ = base_table[in[0] >> 2];
  *pos++ = base_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
  *pos++ = base_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
  *pos++ = base_table[in[2] & 0x3f];
  in += 3;
 }
 if (end - in) {
  *pos++ = base_table[in[0] >> 2];
  if (end - in == 1) {
   *pos++ = base_table[(in[0] & 0x03) << 4];
   *pos++ = '=';
  } else {
   *pos++ = base_table[((in[0] & 0x03) << 4) |
           (in[1] >> 4)];
   *pos++ = base_table[(in[1] & 0x0f) << 2];
  }
  *pos++ = '=';
 }
 *pos = '\0';
 if (out_len)
  *out_len = pos - out;
 return out;
}
unsigned char *
base64_encode(const unsigned char *src, size_t len, unsigned char *out,
       size_t out_capacity, size_t *out_len) {
 return base_encode(src, len, out, out_capacity, out_len, base64_table);
}
unsigned char *
base62_encode(const unsigned char *src, size_t len, unsigned char *out,
       size_t out_capacity, size_t *out_len) {
 return base_encode(src, len, out, out_capacity, out_len, base62_table);
}
unsigned char * base64_decode(const unsigned char *src, size_t len,
         unsigned char *out, size_t out_capacity,
         size_t *out_size)
{
 unsigned char dtable[256], *pos, block[4], tmp;
 size_t i, count, olen;
 int pad = 0;
 memset(dtable, 0x80, 256);
 for (i = 0; i < sizeof(base64_table) - 1; i++)
  dtable[base64_table[i]] = (unsigned char) i;
 dtable['='] = 0;
 count = 0;
 for (i = 0; i < len; i++) {
  if (dtable[src[i]] != 0x80)
   count++;
 }
 if (count == 0 || count % 4)
  return ((void*)0);
 olen = count / 4 * 3;
 if (out_capacity < olen)
  return ((void*)0);
 pos = out;
 if (out == ((void*)0))
  return ((void*)0);
 count = 0;
 for (i = 0; i < len; i++) {
  tmp = dtable[src[i]];
  if (tmp == 0x80)
   continue;
  if (src[i] == '=')
   pad++;
  block[count] = tmp;
  count++;
  if (count == 4) {
   *pos++ = (block[0] << 2) | (block[1] >> 4);
   ((void) sizeof (((size_t)(pos - out) < out_capacity) ? 1 : 0), __extension__ ({ if ((size_t)(pos - out) < out_capacity) ; else __assert_fail ("(size_t)(pos - out) < out_capacity", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/base64.c", 147, __extension__ __PRETTY_FUNCTION__); }));
   *pos++ = (block[1] << 4) | (block[2] >> 2);
   ((void) sizeof (((size_t)(pos - out) < out_capacity) ? 1 : 0), __extension__ ({ if ((size_t)(pos - out) < out_capacity) ; else __assert_fail ("(size_t)(pos - out) < out_capacity", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/base64.c", 149, __extension__ __PRETTY_FUNCTION__); }));
   *pos++ = (block[2] << 6) | block[3];
   ((void) sizeof (((size_t)(pos - out) < out_capacity) ? 1 : 0), __extension__ ({ if ((size_t)(pos - out) < out_capacity) ; else __assert_fail ("(size_t)(pos - out) < out_capacity", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/base64.c", 151, __extension__ __PRETTY_FUNCTION__); }));
   count = 0;
   if (pad) {
    if (pad == 1)
     pos--;
    else if (pad == 2)
     pos -= 2;
    else {
     return ((void*)0);
    }
    break;
   }
  }
 }
 *out_size = pos - out;
 return out;
}


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
enum psbt_result {
 PSBT_OK,
 PSBT_COMPACT_READ_ERROR,
 PSBT_READ_ERROR,
 PSBT_WRITE_ERROR,
 PSBT_INVALID_STATE,
 PSBT_NOT_IMPLEMENTED,
 PSBT_OOB_WRITE
};

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
struct psbt_txin {
 unsigned char *txid;
 unsigned int index;
 unsigned char *script;
 unsigned int script_len;
 unsigned int sequence_number;
};
struct psbt_txout {
 uint64_t amount;
 unsigned char *script;
 unsigned int script_len;
};
struct psbt_witness_item {
 int input_index;
 int item_index;
 unsigned char *item;
 unsigned int item_len;
};
struct psbt_tx {
 unsigned int version;
 unsigned int lock_time;
};
enum psbt_txelem_type {
 PSBT_TXELEM_TXIN,
 PSBT_TXELEM_TXOUT,
 PSBT_TXELEM_TX,
 PSBT_TXELEM_WITNESS_ITEM,
};
struct psbt_txelem {
 enum psbt_txelem_type elem_type;
 void *user_data;
 union {
  struct psbt_txin *txin;
  struct psbt_txout *txout;
  struct psbt_tx *tx;
  struct psbt_witness_item *witness_item;
 } elem;
};
typedef void (psbt_txelem_handler)(struct psbt_txelem *handler);
enum psbt_result
psbt_btc_tx_parse(unsigned char *tx, unsigned int tx_size, void *user_data,
    psbt_txelem_handler *handler);

enum psbt_global_type {
 PSBT_GLOBAL_UNSIGNED_TX = 0
};
enum psbt_encoding {
 PSBT_ENCODING_HEX,
 PSBT_ENCODING_BASE64,
 PSBT_ENCODING_BASE62,
 PSBT_ENCODING_PROTOBUF,
};
enum psbt_input_type {
 PSBT_IN_NON_WITNESS_UTXO = 0,
 PSBT_IN_WITNESS_UTXO = 1,
 PSBT_IN_PARTIAL_SIG = 2,
 PSBT_IN_SIGHASH_TYPE = 3,
 PSBT_IN_REDEEM_SCRIPT = 4,
 PSBT_IN_WITNESS_SCRIPT = 5,
 PSBT_IN_BIP32_DERIVATION = 6,
 PSBT_IN_FINAL_SCRIPTSIG = 7,
 PSBT_IN_FINAL_SCRIPTWITNESS = 8,
};
enum psbt_output_type {
 PSBT_OUT_REDEEM_SCRIPT = 0,
 PSBT_OUT_WITNESS_SCRIPT = 1,
 PSBT_OUT_BIP32_DERIVATION = 2,
};
enum psbt_scope {
 PSBT_SCOPE_GLOBAL,
 PSBT_SCOPE_INPUTS,
 PSBT_SCOPE_OUTPUTS,
};
enum psbt_state {
 PSBT_ST_INIT = 2,
 PSBT_ST_GLOBAL,
 PSBT_ST_INPUTS,
 PSBT_ST_INPUTS_NEW,
 PSBT_ST_OUTPUTS,
 PSBT_ST_OUTPUTS_NEW,
 PSBT_ST_FINALIZED,
};
struct psbt {
 enum psbt_state state;
 unsigned char *data;
 unsigned char *write_pos;
 size_t data_capacity;
};
struct psbt_record {
 unsigned char type;
 unsigned char *key;
 unsigned int key_size;
 unsigned char *val;
 unsigned int val_size;
 enum psbt_scope scope;
};
enum psbt_elem_type {
 PSBT_ELEM_RECORD,
 PSBT_ELEM_TXELEM,
};
struct psbt_elem {
 enum psbt_elem_type type;
 void *user_data;
 int index;
 union {
  struct psbt_txelem *txelem;
  struct psbt_record *rec;
 } elem;
};
typedef void (psbt_elem_handler)(struct psbt_elem *rec);
size_t
psbt_size(struct psbt *tx);
enum psbt_result
psbt_read(const unsigned char *src, size_t src_size, struct psbt *psbt,
   psbt_elem_handler *elem_handler, void* user_data);
enum psbt_result
psbt_decode(const char *src, size_t src_size, unsigned char *dest,
     size_t dest_size, size_t *psbt_len);
enum psbt_result
psbt_encode(struct psbt *psbt, enum psbt_encoding encoding, unsigned char *dest,
     size_t dest_size, size_t *out_len);
enum psbt_result
psbt_encode_raw(unsigned char *psbt_data, size_t psbt_len,
  enum psbt_encoding encoding, unsigned char *dest,
  size_t dest_size, size_t* out_len);
const char *
psbt_geterr();
const char *
psbt_state_tostr(enum psbt_state state);
const char *
psbt_type_tostr(unsigned char type, enum psbt_scope scope);
const char *
psbt_txelem_type_tostr(enum psbt_txelem_type txelem_type);
const char *
psbt_global_type_tostr(enum psbt_global_type type);
const char *
psbt_output_type_tostr(enum psbt_output_type type);
const char *
psbt_input_type_tostr(enum psbt_input_type type);
enum psbt_result
psbt_write_global_record(struct psbt *tx, struct psbt_record *rec);
enum psbt_result
psbt_write_input_record(struct psbt *tx, struct psbt_record *rec);
enum psbt_result
psbt_write_output_record(struct psbt *tx, struct psbt_record *rec);
enum psbt_result
psbt_new_input_record_set(struct psbt *tx);
enum psbt_result
psbt_new_output_record_set(struct psbt *tx);
enum psbt_result
psbt_init(struct psbt *tx, unsigned char *dest, size_t dest_size);
enum psbt_result
psbt_print(struct psbt *tx, FILE *stream);
enum psbt_result
psbt_finalize(struct psbt *tx);
extern const unsigned char PSBT_MAGIC[4];
extern char *psbt_errmsg;

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
const char *psbt_example = "70736274ff0100a00200000002ab0949a08c5af7c49b8212f417e2f15ab3f5c33dcf153821a8139f877a5b7be40000000000feffffffab0949a08c5af7c49b8212f417e2f15ab3f5c33dcf153821a8139f877a5b7be40100000000feffffff02603bea0b000000001976a914768a40bbd740cbe81d988e71de2a4d5c71396b1d88ac8e240000000000001976a9146f4620b553fa095e721b9ee0efe9fa039cca459788ac00000000000100df0200000001268171371edff285e937adeea4b37b78000c0566cbb3ad64641713ca42171bf6000000006a473044022070b2245123e6bf474d60c5b50c043d4c691a5d2435f09a34a7662a9dc251790a022001329ca9dacf280bdf30740ec0390422422c81cb45839457aeb76fc12edd95b3012102657d118d3357b8e0f4c2cd46db7b39f6d9c38d9a70abcb9b2de5dc8dbfe4ce31feffffff02d3dff505000000001976a914d0c59903c5bac2868760e90fd521a4665aa7652088ac00e1f5050000000017a9143545e6e33b832c47050f24d3eeb93c9c03948bc787b32e13000001012000e1f5050000000017a9143545e6e33b832c47050f24d3eeb93c9c03948bc787010416001485d13537f2e265405a34dbafa9e3dda01fb8230800220202ead596687ca806043edc3de116cdf29d5e9257c196cd055cf698c8d02bf24e9910b4a6ba670000008000000080020000800022020394f62be9df19952c5587768aeb7698061ad2c4a25c894f47d8c162b4d7213d0510b4a6ba6700000080010000800200008000";
void print_json_rec(void *user_data, struct psbt_record *rec) {
 printf("{\n    ");
 printf("\"tx\": \"");
 printf("\"type\": \"%s\"", psbt_type_tostr(rec->type, rec->scope));
}
static void txid_print(unsigned char *data) {
 for (int i = 31; i >= 0; i--)
  printf("%02x", data[i]);
}
static void hex_print__cli(unsigned char *data, size_t len) {
 for (size_t i = 0; i < len; ++i)
  printf("%02x", data[i]);
}
void print_rec(struct psbt_elem *elem) {
 const char *type_str = ((void*)0);
 struct psbt_record *rec = ((void*)0);
 struct psbt_txelem *txelem = ((void*)0);
 struct psbt_txin *txin = ((void*)0);
 struct psbt_txout *txout = ((void*)0);
 struct psbt_tx *tx = ((void*)0);
 switch (elem->type) {
 case PSBT_ELEM_RECORD:
  rec = elem->elem.rec;
  type_str = psbt_type_tostr(rec->type, rec->scope);
  printf("%s\t%d ", type_str, elem->index);
  if (rec->key_size != 0) {
   hex_print__cli(rec->key, rec->key_size);
   printf(" ");
  }
  hex_print__cli(rec->val, rec->val_size);
  printf("\n");
  break;
 case PSBT_ELEM_TXELEM:
  txelem = elem->elem.txelem;
  type_str = psbt_txelem_type_tostr(txelem->elem_type);
  printf("%s\t", type_str);
  switch (txelem->elem_type) {
  case PSBT_TXELEM_TXIN:
   txin = txelem->elem.txin;
   txid_print(txin->txid);
   printf(" ind:%d", txin->index);
   printf(" seq:%u", txin->sequence_number);
   if (txin->script_len) {
    printf(" ");
    hex_print__cli(txin->script, txin->script_len);
   }
   printf("\n");
   break;
  case PSBT_TXELEM_TXOUT:
   txout = txelem->elem.txout;
   if (txout->script_len) {
    hex_print__cli(txout->script, txout->script_len);
    printf(" ");
   }
   printf("amount:%""l" "u""\n", txout->amount);
   break;
  case PSBT_TXELEM_TX:
   tx = txelem->elem.tx;
   printf("ver:%u locktime:%u\n", tx->version, tx->lock_time);
   break;
  default:
   break;
  }
 }
}
int usage() {
 printf ("usage: psbt <psbt>\n");
 return 1;
}
int main(int argc, char *argv[])
{
 struct psbt psbt;
 static unsigned char buffer[4096];
 enum psbt_result res;
 size_t psbt_len;
 size_t out_len;
 if (argc < 2)
  return usage();
 size_t psbt_hex_len = strlen(argv[1]);
 psbt_init(&psbt, buffer, 4096);
 res = psbt_decode(argv[1], psbt_hex_len, buffer, 4096, &psbt_len);
 if ((res) != PSBT_OK) { printf("error (%d): %s. last_state = %s\n", res, psbt_errmsg, psbt_state_tostr(psbt.state)); return 1; };
 res = psbt_read(buffer, psbt_len, &psbt, print_rec, ((void*)0));
 if ((res) != PSBT_OK) { printf("error (%d): %s. last_state = %s\n", res, psbt_errmsg, psbt_state_tostr(psbt.state)); return 1; };
 res = psbt_encode(&psbt, PSBT_ENCODING_BASE62, buffer, 4096, &out_len);
 if ((res) != PSBT_OK) { printf("error (%d): %s. last_state = %s\n", res, psbt_errmsg, psbt_state_tostr(psbt.state)); return 1; };
 return 0;
}

typedef unsigned char u8;
typedef unsigned short u16;
typedef uint64_t u64;
typedef unsigned int u32;
static const unsigned int MAX_SERIALIZE_SIZE = 0x02000000;

u64 compactsize_read(u8 *data, enum psbt_result *err);
u32 compactsize_length(u64 data);
void compactsize_write(u8 *dest, u64 size);
u32 compactsize_peek_length(u8 chsize);

u32 compactsize_peek_length(u8 chsize) {
 if (chsize < 253)
  return sizeof(u8);
 else if (chsize == 253)
  return sizeof(u8) + sizeof(u16);
 else if (chsize == 254)
  return sizeof(u8) + sizeof(u32);
 else
  return sizeof(u8) + sizeof(u64);
}
u32 compactsize_length(u64 data) {
 if (data < 253)
  return sizeof(u8);
 else if (data <= (32767 *2 +1))
  return sizeof(u8) + sizeof(u16);
 else if (data <= (2147483647 *2U +1U))
  return sizeof(u8) + sizeof(u32);
 else
  return sizeof(u8) + sizeof(u64);
}
inline static void serialize_u8(u8 *dest, u8 data) {
 *dest = data;
}
inline static void serialize_u16(u8 *dest, u16 data) {
 data = __uint16_identity (data);
 memcpy(dest, &data, sizeof(data));
}
inline static void serialize_u32(u8 *dest, u32 data) {
 data = __uint32_identity (data);
 memcpy(dest, &data, sizeof(data));
}
inline static void serialize_u64(u8 *dest, u64 data) {
 data = __uint64_identity (data);
 memcpy(dest, &data, sizeof(data));
}
inline static u8 deserialize_u8(u8 *src) {
 return *src;
}
inline static u16 deserialize_u16(u8 *src) {
 u16 data;
 memcpy(&data, src, sizeof(data));
 return __uint16_identity (data);
}
inline static u32 deserialize_u32(u8 *src) {
 u32 data;
 memcpy(&data, src, sizeof(data));
 return __uint32_identity (data);
}
inline static u64 deserialize_u64(u8 *src) {
 u64 data;
 memcpy(&data, src, sizeof(data));
 return __uint64_identity (data);
}
void compactsize_write(u8 *dest, u64 size)
{
 if (size < 253) {
  serialize_u8(dest, size);
 }
 else if (size <= (32767 *2 +1)) {
  serialize_u8(dest, 253);
  serialize_u16(dest, size);
 }
 else if (size <= (2147483647 *2U +1U)) {
  serialize_u8(dest, 254);
  serialize_u32(dest, size);
 }
 else {
  serialize_u8(dest, 255);
  serialize_u64(dest, size);
 }
}
u64 compactsize_read(u8 *data, enum psbt_result *err) {
 u8 *p = data;
 u8 chsize = deserialize_u8(p++);
 u64 ret_size = 0;
 if (chsize < 253) {
  ret_size = chsize;
 }
 else if (chsize == 253) {
  ret_size = deserialize_u16(p);
  if (ret_size < 253)
   {if (err) *err = PSBT_COMPACT_READ_ERROR; psbt_errmsg = "non-canonical compactsize_read()"; return -1;};
 }
 else if (chsize == 254) {
  ret_size = deserialize_u32(p);
  if (ret_size < 0x10000u)
   {if (err) *err = PSBT_COMPACT_READ_ERROR; psbt_errmsg = "non-canonical compactsize_read()"; return -1;};
 }
 else {
  ret_size = deserialize_u64(p);
  if (ret_size < 0x100000000ULL)
   {if (err) *err = PSBT_COMPACT_READ_ERROR; psbt_errmsg = "non-canonical compactsize_read()"; return -1;};
 }
 if (ret_size > (u64)MAX_SERIALIZE_SIZE)
  {if (err) *err = PSBT_COMPACT_READ_ERROR; psbt_errmsg = "non-canonical compactsize_read()"; return -1;};
 return ret_size;
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
char *psbt_errmsg = ((void*)0);
const unsigned char PSBT_MAGIC[4] = {0x70, 0x73, 0x62, 0x74};
size_t psbt_size(struct psbt *tx) {
 return tx->write_pos - tx->data;
}
static void hex_print__psbt(unsigned char *data, size_t len) {
 for (size_t i = 0; i < len; ++i)
  printf("%02x", data[i]);
}
static enum psbt_result
psbt_write_header(struct psbt *tx) {
 if (tx->write_pos+(sizeof(PSBT_MAGIC)) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "43"; return PSBT_OOB_WRITE; };
 memcpy(tx->write_pos, PSBT_MAGIC, sizeof(PSBT_MAGIC));
 tx->write_pos += sizeof(PSBT_MAGIC);
 if (tx->write_pos+(1) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "47"; return PSBT_OOB_WRITE; };
 *tx->write_pos = 0xff;
 tx->write_pos++;
 tx->state = PSBT_ST_GLOBAL;
 return PSBT_OK;
}
enum psbt_result
psbt_init(struct psbt *tx, unsigned char *dest, size_t dest_size) {
 tx->write_pos = dest;
 tx->data = dest;
 tx->data_capacity = dest_size;
 tx->state = PSBT_ST_INIT;
 return PSBT_OK;
}
enum psbt_result
psbt_close_records(struct psbt *tx) {
 if (tx->write_pos+(1) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "76"; return PSBT_OOB_WRITE; };
 *tx->write_pos = '\0';
 tx->write_pos++;
 return PSBT_OK;
}
enum psbt_result
psbt_finalize(struct psbt *tx) {
 enum psbt_result res;
 if (tx->state != PSBT_ST_OUTPUTS_NEW && tx->state != PSBT_ST_OUTPUTS) {
  psbt_errmsg = "psbt_finalize: no output records found";
  return PSBT_INVALID_STATE;
 }
 res = psbt_close_records(tx);
 if (res != PSBT_OK)
  return res;
 tx->state = PSBT_ST_FINALIZED;
 return PSBT_OK;
}
static enum psbt_result
psbt_write_record(struct psbt *tx, struct psbt_record *rec) {
 u32 size;
 u32 key_size_with_type = rec->key_size + 1;
 size = compactsize_length(key_size_with_type);
 if (tx->write_pos+(size) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "108"; return PSBT_OOB_WRITE; };
 compactsize_write((u8*)tx->write_pos, key_size_with_type);
 tx->write_pos += size;
 if (tx->write_pos+(1) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "113"; return PSBT_OOB_WRITE; };
 *tx->write_pos++ = rec->type;
 if (tx->write_pos+(rec->key_size) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "117"; return PSBT_OOB_WRITE; };
 memcpy(tx->write_pos, rec->key, rec->key_size);
 tx->write_pos += rec->key_size;
 size = compactsize_length(rec->val_size);
 if (tx->write_pos+(size) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "123"; return PSBT_OOB_WRITE; };
 compactsize_write((u8*)tx->write_pos, rec->val_size);
 tx->write_pos += size;
 if (tx->write_pos+(rec->val_size) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "128"; return PSBT_OOB_WRITE; };
 memcpy(tx->write_pos, rec->val, rec->val_size);
 tx->write_pos += rec->val_size;
 return PSBT_OK;
}
static enum psbt_result
psbt_read_header(struct psbt *tx) {
 if (tx->write_pos+(4) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "137"; return PSBT_OOB_WRITE; };
                     ;
 if (memcmp(tx->write_pos, PSBT_MAGIC, sizeof(PSBT_MAGIC)) != 0) {
  psbt_errmsg = "psbt_read: invalid magic header";
  return PSBT_READ_ERROR;
 }
 tx->write_pos += 4;
 if (*tx->write_pos++ != 0xff) {
  psbt_errmsg = "psbt_read: no 0xff found after magic";
  return PSBT_READ_ERROR;
 }
 tx->state = PSBT_ST_GLOBAL;
 return PSBT_OK;
}
const char *
psbt_input_type_tostr(enum psbt_input_type type) {
 switch (type) {
 case PSBT_IN_NON_WITNESS_UTXO:
  return "IN_NON_WITNESS_UTXO";
 case PSBT_IN_WITNESS_UTXO:
  return "IN_WITNESS_UTXO";
 case PSBT_IN_PARTIAL_SIG:
  return "IN_PARTIAL_SIG";
 case PSBT_IN_SIGHASH_TYPE:
  return "IN_SIGHASH_TYPE";
 case PSBT_IN_REDEEM_SCRIPT:
  return "IN_REDEEM_SCRIPT";
 case PSBT_IN_WITNESS_SCRIPT:
  return "IN_WITNESS_SCRIPT";
 case PSBT_IN_BIP32_DERIVATION:
  return "IN_BIP32_DERIVATION";
 case PSBT_IN_FINAL_SCRIPTSIG:
  return "IN_FINAL_SCRIPTSIG";
 case PSBT_IN_FINAL_SCRIPTWITNESS:
  return "IN_FINAL_SCRIPTWITNESS";
 }
 return "UNKNOWN_INPUT_TYPE";
}
const char *
psbt_state_tostr(enum psbt_state state) {
 switch (state) {
 case PSBT_ST_INIT:
  return "INIT";
 case PSBT_ST_GLOBAL:
  return "GLOBAL";
 case PSBT_ST_INPUTS:
  return "INPUTS";
 case PSBT_ST_INPUTS_NEW:
  return "INPUTS_NEW";
 case PSBT_ST_OUTPUTS:
  return "OUTPUTS";
 case PSBT_ST_OUTPUTS_NEW:
  return "OUTPUTS_NEW";
 case PSBT_ST_FINALIZED:
  return "FINALIZED";
 }
 return "UNKNOWN_STATE";
}
const char *
psbt_output_type_tostr(enum psbt_output_type type) {
 switch (type) {
 case PSBT_OUT_REDEEM_SCRIPT:
  return "OUT_REDEEM_SCRIPT";
 case PSBT_OUT_WITNESS_SCRIPT:
  return "OUT_WITNESS_SCRIPT";
 case PSBT_OUT_BIP32_DERIVATION:
  return "OUT_BIP32_DERIVATION";
 }
 return "UNKNOWN_OUTPUT_TYPE";
}
const char *
psbt_global_type_tostr(enum psbt_global_type type) {
 switch (type) {
 case PSBT_GLOBAL_UNSIGNED_TX: return "GLOBAL_UNSIGNED_TX";
 }
 return "UNKNOWN_GLOBAL_TYPE";
}
const char *
psbt_txelem_type_tostr(enum psbt_txelem_type txelem_type) {
 switch (txelem_type) {
 case PSBT_TXELEM_TX:
  return "TX";
 case PSBT_TXELEM_TXIN:
  return "TXIN";
 case PSBT_TXELEM_TXOUT:
  return "TXOUT";
 case PSBT_TXELEM_WITNESS_ITEM:
  return "WITNESS_ITEM";
 }
 return "UNKNOWN_TXELEM";
}
const char *
psbt_type_tostr(unsigned char type, enum psbt_scope scope) {
 switch (scope) {
 case PSBT_SCOPE_GLOBAL:
  return psbt_global_type_tostr((enum psbt_global_type)type);
 case PSBT_SCOPE_INPUTS:
  return psbt_input_type_tostr((enum psbt_input_type)type);
 case PSBT_SCOPE_OUTPUTS:
  return psbt_output_type_tostr((enum psbt_output_type)type);
 }
 return "UNKNOWN_SCOPE";
}
static enum psbt_result
psbt_read_record(struct psbt *tx, size_t src_size, struct psbt_record *rec)
{
 enum psbt_result res = PSBT_OK;
 u64 size;
 u32 size_len;
 size_len = compactsize_peek_length(*tx->write_pos);
 if (tx->write_pos+(size_len) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "271"; return PSBT_OOB_WRITE; };
 size = compactsize_read(tx->write_pos, &res);
 ((void) sizeof ((size > 0) ? 1 : 0), __extension__ ({ if (size > 0) ; else __assert_fail ("size > 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c", 273, __extension__ __PRETTY_FUNCTION__); }));
 tx->write_pos += size_len;
                                                ;
 if (res != PSBT_OK)
  return res;
 if (tx->write_pos + size > tx->data + src_size) {
  psbt_errmsg = "psbt_read: record key size too large";
  return PSBT_READ_ERROR;
 }
 if (tx->write_pos+(size) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "288"; return PSBT_OOB_WRITE; };
 rec->key_size = size - 1;
 rec->type = *tx->write_pos;
 rec->key = tx->write_pos + 1;
 tx->write_pos += size;
                                                              ;
                                                ;
 switch (tx->state) {
  case PSBT_ST_GLOBAL:
   rec->scope = PSBT_SCOPE_GLOBAL;
   break;
  case PSBT_ST_INPUTS:
   rec->scope = PSBT_SCOPE_INPUTS;
   break;
  case PSBT_ST_OUTPUTS:
   rec->scope = PSBT_SCOPE_OUTPUTS;
   break;
  default:
   psbt_errmsg = "psbt_read_record: invalid record state";
   return PSBT_INVALID_STATE;
 }
 size_len = compactsize_peek_length(*tx->write_pos);
 if (tx->write_pos+(size_len) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "321"; return PSBT_OOB_WRITE; };
 size = compactsize_read(tx->write_pos, &res);
 if (res != PSBT_OK)
  return res;
 tx->write_pos += size_len;
 if (tx->write_pos + size > tx->data + src_size) {
  psbt_errmsg = "psbt_read: record value size too large";
  return PSBT_READ_ERROR;
 }
 rec->val_size = size;
 rec->val = tx->write_pos;
 if (tx->write_pos+(size) > tx->data + tx->data_capacity) { psbt_errmsg = "write out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c" ":" "337"; return PSBT_OOB_WRITE; };
 tx->write_pos += size;
 return PSBT_OK;
}
struct psbt_tx_counter {
 int inputs;
 int outputs;
 void *user_data;
 psbt_elem_handler *handler;
} counter;
static void tx_counter(struct psbt_txelem *elem) {
 struct psbt_elem psbt_elem;
 struct psbt_tx_counter *counter =
  (struct psbt_tx_counter *)elem->user_data;
 psbt_elem.user_data = counter->user_data;
 psbt_elem.type = PSBT_ELEM_TXELEM;
 psbt_elem.elem.txelem = elem;
 if (counter->handler)
  counter->handler(&psbt_elem);
 switch (elem->elem_type) {
 case PSBT_TXELEM_TXIN:
  counter->inputs++;
  return;
 case PSBT_TXELEM_TXOUT:
  counter->outputs++;
  return;
 default:
  return;
 }
}
enum psbt_result
psbt_read(const unsigned char *src, size_t src_size, struct psbt *tx,
   psbt_elem_handler *elem_handler, void* user_data)
{
 struct psbt_record rec;
 enum psbt_result res;
 struct psbt_elem elem;
 elem.type = PSBT_ELEM_RECORD;
 elem.user_data = user_data;
 int kvs = 0;
 u8 *end;
 struct psbt_tx_counter counter = {
  .inputs = 0,
  .outputs = 0,
  .user_data = user_data,
  .handler = elem_handler,
 };
 if (tx->state != PSBT_ST_INIT) {
  psbt_errmsg = "psbt_read: psbt not initialized, use psbt_init first";
  return PSBT_INVALID_STATE;
 }
 if (src_size > tx->data_capacity) {
  psbt_errmsg = "psbt_read: read buffer is larger than psbt capacity";
  return PSBT_OOB_WRITE;
 }
 if (src != tx->data)
  memcpy(tx->data, src, src_size);
 tx->state = PSBT_ST_INIT;
 tx->write_pos = tx->data;
 tx->data_capacity = src_size;
 end = tx->data + src_size;
 while (tx->state != PSBT_ST_FINALIZED && tx->write_pos <= end) {
  switch(tx->state) {
  case PSBT_ST_INIT:
                                                             ;
   res = psbt_read_header(tx);
   if (res != PSBT_OK)
    return res;
   break;
  case PSBT_ST_GLOBAL:
  case PSBT_ST_INPUTS:
  case PSBT_ST_OUTPUTS:
   if (*tx->write_pos == 0) {
    switch (tx->state) {
    case PSBT_ST_GLOBAL:
     tx->state = PSBT_ST_INPUTS_NEW;
     break;
    case PSBT_ST_INPUTS:
     if (++kvs >= counter.inputs) {
      tx->state = PSBT_ST_OUTPUTS_NEW;
      kvs = 0;
     } else
      tx->state = PSBT_ST_INPUTS_NEW;
     break;
    case PSBT_ST_OUTPUTS:
     if (++kvs >= counter.outputs)
      tx->state = PSBT_ST_FINALIZED;
     else
      tx->state = PSBT_ST_OUTPUTS_NEW;
     break;
    default:
     ((void) sizeof ((!"psbt_read: invalid state at null byte") ? 1 : 0), __extension__ ({ if (!"psbt_read: invalid state at null byte") ; else __assert_fail ("!\"psbt_read: invalid state at null byte\"", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c", 454, __extension__ __PRETTY_FUNCTION__); }));
    }
   }
   else {
                                                             ;
    res = psbt_read_record(tx, src_size, &rec);
    if (res != PSBT_OK)
     return res;
    if (tx->state == PSBT_ST_GLOBAL &&
        rec.type == PSBT_GLOBAL_UNSIGNED_TX) {
     res = psbt_btc_tx_parse(rec.val,
        rec.val_size,
        (void*)&counter,
        tx_counter);
     if (res != PSBT_OK)
      return res;
    }
    if (elem_handler) {
     elem.type = PSBT_ELEM_RECORD;
     elem.index = kvs;
     elem.elem.rec = &rec;
     elem_handler(&elem);
    }
   }
   break;
  case PSBT_ST_OUTPUTS_NEW:
   ((void) sizeof ((*tx->write_pos == 0) ? 1 : 0), __extension__ ({ if (*tx->write_pos == 0) ; else __assert_fail ("*tx->write_pos == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c", 489, __extension__ __PRETTY_FUNCTION__); }));
   tx->write_pos++;
   tx->state = PSBT_ST_OUTPUTS;
   break;
  case PSBT_ST_INPUTS_NEW:
   ((void) sizeof ((*tx->write_pos == 0) ? 1 : 0), __extension__ ({ if (*tx->write_pos == 0) ; else __assert_fail ("*tx->write_pos == 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c", 495, __extension__ __PRETTY_FUNCTION__); }));
   tx->write_pos++;
   tx->state = PSBT_ST_INPUTS;
   break;
  case PSBT_ST_FINALIZED:
   ((void) sizeof ((!"impossible") ? 1 : 0), __extension__ ({ if (!"impossible") ; else __assert_fail ("!\"impossible\"", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c", 501, __extension__ __PRETTY_FUNCTION__); }));
   break;
  }
 }
 if (tx->state != PSBT_ST_FINALIZED) {
  psbt_errmsg = "psbt_read: invalid psbt";
  return PSBT_INVALID_STATE;
 }
 else if (tx->state == PSBT_ST_FINALIZED && *tx->write_pos != 0) {
  psbt_errmsg = "psbt_read: expected null byte at end of psbt";
  return PSBT_READ_ERROR;
 }
 tx->write_pos++;
 return PSBT_OK;
}
enum psbt_result
psbt_write_global_record(struct psbt *tx, struct psbt_record *rec) {
 if (tx->state == PSBT_ST_INIT) {
  psbt_write_header(tx);
  tx->state = PSBT_ST_GLOBAL;
 }
 else if (tx->state != PSBT_ST_GLOBAL) {
  psbt_errmsg = "psbt_write_global_record: you can only write a "
   "global record after psbt_init and before "
   "psbt_write_input_record";
  return PSBT_INVALID_STATE;
 }
 return psbt_write_record(tx, rec);
}
enum psbt_result
psbt_new_input_record_set(struct psbt *tx) {
 enum psbt_result res;
 if (tx->state == PSBT_ST_GLOBAL
  || tx->state == PSBT_ST_INPUTS_NEW
  || tx->state == PSBT_ST_INPUTS) {
  res = psbt_close_records(tx);
  if (res != PSBT_OK)
   return res;
  tx->state = PSBT_ST_INPUTS_NEW;
  return PSBT_OK;
 }
 else if (tx->state != PSBT_ST_INPUTS) {
  psbt_errmsg = "psbt_new_input_record_set: "
   "this can only be called after psbt_write_global_record, "
                        "psbt_new_input_record_set, "
   "or psbt_write_input_record";
  return PSBT_INVALID_STATE;
 }
 return psbt_close_records(tx);
}
enum psbt_result
psbt_new_output_record_set(struct psbt *tx) {
 enum psbt_result res;
 if (tx->state == PSBT_ST_INPUTS
     || tx->state == PSBT_ST_INPUTS_NEW
     || tx->state == PSBT_ST_OUTPUTS_NEW
     || tx->state == PSBT_ST_OUTPUTS)
 {
  res = psbt_close_records(tx);
  if (res != PSBT_OK)
   return res;
  tx->state = PSBT_ST_OUTPUTS_NEW;
  return PSBT_OK;
 }
 else if (tx->state != PSBT_ST_OUTPUTS) {
  psbt_errmsg = "psbt_new_output_record_set: "
   "this can only be called after writing input records";
  return PSBT_INVALID_STATE;
 }
 return psbt_close_records(tx);
}
enum psbt_result
psbt_print(struct psbt *tx, FILE *stream) {
 if (tx->state != PSBT_ST_FINALIZED) {
  psbt_errmsg = "psbt_print: transaction is not finished";
  return PSBT_INVALID_STATE;
 }
 size_t size = psbt_size(tx);
 for (size_t i = 0; i < size; ++i)
  fprintf(stream, "%02x", tx->data[i]);
 printf("\n");
 return PSBT_OK;
}
enum psbt_result
psbt_write_input_record(struct psbt *tx, struct psbt_record *rec) {
 enum psbt_result res;
 if (tx->state == PSBT_ST_GLOBAL) {
  if ((res = psbt_close_records(tx)) != PSBT_OK)
   return res;
  tx->state = PSBT_ST_INPUTS;
 }
 else if (tx->state != PSBT_ST_INPUTS && tx->state != PSBT_ST_INPUTS_NEW) {
  psbt_errmsg = "psbt_write_input_record: attempting to write an "
   "input record before any global records have been written."
   " use psbt_write_global_record first";
  return PSBT_INVALID_STATE;
 }
 return psbt_write_record(tx, rec);
}
enum psbt_result
psbt_write_output_record(struct psbt *tx, struct psbt_record *rec) {
 enum psbt_result res;
 if (tx->state == PSBT_ST_INPUTS) {
  if ((res = psbt_close_records(tx)) != PSBT_OK)
   return res;
  tx->state = PSBT_ST_OUTPUTS;
 }
 else if (tx->state != PSBT_ST_OUTPUTS && tx->state != PSBT_ST_OUTPUTS_NEW) {
  psbt_errmsg = "psbt_write_input_record: attempting to write an "
   "input record before any global records have been written."
   " use psbt_write_global_record first";
  return PSBT_INVALID_STATE;
 }
 return psbt_write_record(tx, rec);
}
static inline u8 hexdigit( char hex ) {
 return (hex <= '9') ? hex - '0' : toupper(hex) - 'A' + 10 ;
}
enum psbt_result
psbt_hex_decode(const char *src, size_t src_size, unsigned char *dest,
         size_t dest_size) {
 enum psbt_result res = PSBT_OK;
 if (src_size % 2 != 0) {
  psbt_errmsg = "psbt_decode: invalid hex string";
  return PSBT_READ_ERROR;
 }
 if (dest_size < src_size / 2) {
  psbt_errmsg = "psbt_decode: dest_size must be at least half the"
   " size of src_size";
  return PSBT_READ_ERROR;
 }
 if (res != PSBT_OK)
  return res;
 for (size_t i = 0; i < src_size; i += 2) {
  u8 c1 = src[i];
  u8 c2 = src[i+1];
  if (!((*__ctype_b_loc ())[(int) ((c1))] & (unsigned short int) _ISxdigit) || !((*__ctype_b_loc ())[(int) ((c2))] & (unsigned short int) _ISxdigit)) {
   psbt_errmsg = "psbt_decode: invalid hex string";
   return PSBT_READ_ERROR;
  }
  *dest++ = hexdigit(c1) << 4 | hexdigit(c2);
 }
 return PSBT_OK;
}
enum psbt_result
psbt_decode(const char *src, size_t src_size, unsigned char *dest,
     size_t dest_size, size_t *psbt_size) {
 enum psbt_result res;
 size_t b64_magic_size = sizeof("cHNid") - 1;
 if (src_size < b64_magic_size) {
  psbt_errmsg = "psbt_decode: psbt too small";
  return PSBT_READ_ERROR;
 }
 if (memcmp(src, "cHNid", b64_magic_size) == 0) {
  u8 *c = base64_decode((unsigned char*)src, src_size, dest,
     dest_size, psbt_size);
  return c == ((void*)0) ? PSBT_READ_ERROR : PSBT_OK;
 }
 *psbt_size = src_size / 2;
 return psbt_hex_decode(src, src_size, dest, dest_size);
}
static char hexchar(unsigned int val)
{
 if (val < 10)
  return '0' + val;
 if (val < 16)
  return 'a' + val - 10;
 ((void) sizeof ((!"hexchar invalid val") ? 1 : 0), __extension__ ({ if (!"hexchar invalid val") ; else __assert_fail ("!\"hexchar invalid val\"", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c", 710, __extension__ __PRETTY_FUNCTION__); }));
}
static enum psbt_result
hex_encode(u8 *buf, size_t bufsize, u8 *dest, size_t dest_size) {
 size_t i;
 if (dest_size < bufsize * 2 + 1)
  return PSBT_OOB_WRITE;
 for (i = 0; i < bufsize; i++) {
  unsigned int c = buf[i];
  *(dest++) = hexchar(c >> 4);
  *(dest++) = hexchar(c & 0xF);
 }
 *dest = '\0';
 return PSBT_OK;
}
static enum psbt_result
protobuf_encode(u8 *psbt, size_t psbt_size, u8 *dest, size_t dest_size) {
 return PSBT_NOT_IMPLEMENTED;
}
enum psbt_result
psbt_encode_raw(unsigned char *psbt_data, size_t psbt_len,
  enum psbt_encoding encoding, unsigned char *dest,
  size_t dest_size, size_t* out_len)
{
 u8 *c;
 enum psbt_result res;
 switch (encoding) {
 case PSBT_ENCODING_HEX:
  res = hex_encode(psbt_data, psbt_len, dest, dest_size);
  *out_len = psbt_len * 2 + 1;
  return res;
 case PSBT_ENCODING_BASE64:
  c = base64_encode(psbt_data, psbt_len, dest, dest_size, out_len);
  if (c == ((void*)0)) {
   psbt_errmsg = "psbt_encode: base64 encode failure";
   return PSBT_WRITE_ERROR;
  }
  return PSBT_OK;
 case PSBT_ENCODING_BASE62:
  c = base62_encode(psbt_data, psbt_len, dest, dest_size, out_len);
  if (c == ((void*)0)) {
   psbt_errmsg = "psbt_encode: base62 encode failure";
   return PSBT_WRITE_ERROR;
  }
  return PSBT_OK;
 case PSBT_ENCODING_PROTOBUF:
  return protobuf_encode(psbt_data, psbt_len, dest, dest_size);
 }
 psbt_errmsg = "psbt_encode: invalid psbt_encoding enum value";
 return PSBT_NOT_IMPLEMENTED;
}
enum psbt_result
psbt_encode(struct psbt *psbt, enum psbt_encoding encoding, unsigned char *dest,
     size_t dest_size, size_t *out_len)
{
 if (psbt->state != PSBT_ST_FINALIZED) {
  psbt_errmsg = "psbt_encode: psbt not in finalized state. "
   "use psbt_read to parse an existing psbt, or the "
   "psbt_write functions to create one.";
  return PSBT_WRITE_ERROR;
 }
 return psbt_encode_raw(psbt->data, psbt_size(psbt), encoding, dest,
          dest_size, out_len);
}
const char *
psbt_geterr() {
 return psbt_errmsg;
}

static u32
parse_le32(const u8 *cursor) {
 return __uint32_identity (*(u32*)cursor);
}
static u64
parse_le64(const u8 *cursor) {
 return __uint64_identity (*(u64*)cursor);
}
static enum psbt_result
parse_txin(u8 **cursor, u8 *data, u32 data_size, struct psbt_txin *txin) {
 u64 script_len;
 int size_len;
 enum psbt_result res = PSBT_OK;
 u8 *p = *cursor;
 if (p+(32) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "46"; return PSBT_READ_ERROR; };
 txin->txid = p;
 p += 32;
 if (p+(4) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "50"; return PSBT_READ_ERROR; };
 txin->index = parse_le32(p);
 p += 4;
 if (p+(1) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "54"; return PSBT_READ_ERROR; };
 size_len = compactsize_peek_length(*p);
 if (p+(size_len) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "57"; return PSBT_READ_ERROR; };
 script_len = compactsize_read(p, &res);
 if (res != PSBT_OK)
  return res;
 p += size_len;
 txin->script_len = script_len;
 txin->script = script_len ? p : ((void*)0);
 p += script_len;
 if (p+(4) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "69"; return PSBT_READ_ERROR; };
 txin->sequence_number = parse_le32(p);
 p += 4;
 *cursor = p;
 return PSBT_OK;
}
static enum psbt_result
parse_txout(u8 **cursor, u8 *data, u32 data_size, struct psbt_txout *txout) {
 size_t size_len;
 u64 script_len;
 enum psbt_result res = PSBT_OK;
 u8 *p = *cursor;
 if (p+(8) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "87"; return PSBT_READ_ERROR; };
 txout->amount = parse_le64(p);
 p += 8;
 if (p+(1) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "91"; return PSBT_READ_ERROR; };
 size_len = compactsize_peek_length(*p);
 if (p+(size_len) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "94"; return PSBT_READ_ERROR; };
 script_len = compactsize_read(p, &res);
 if (res != PSBT_OK)
  return res;
 p += size_len;
 txout->script = p;
 txout->script_len = script_len;
 if (p+(script_len) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "104"; return PSBT_READ_ERROR; };
 p += script_len;
 *cursor = p;
 return PSBT_OK;
}
static enum psbt_result
parse_witness_item(u8 **cursor, u8 *data, u32 data_size,
     struct psbt_witness_item *witness_item) {
 u32 size_len, item_len;
 enum psbt_result res = PSBT_OK;
 u8 *p = *cursor;
 if (p+(1) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "120"; return PSBT_READ_ERROR; };
 size_len = compactsize_peek_length(*p);
 if (p+(size_len) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "123"; return PSBT_READ_ERROR; };
 item_len = compactsize_read(p, &res);
 if (res != PSBT_OK)
  return res;
 p += size_len;
 witness_item->item = p;
 witness_item->item_len = item_len;
 p += item_len;
 *cursor = p;
 return PSBT_OK;
}
enum psbt_result
psbt_btc_tx_parse(u8 *data, u32 data_size, void *user_data,
    psbt_txelem_handler *handler) {
 struct psbt_tx tx;
 enum psbt_result res = PSBT_OK;
 struct psbt_txin txin;
 struct psbt_txout txout;
 struct psbt_txelem txelem;
 struct psbt_witness_item wi;
 u64 count = 0;
 u8 flag = 0;
 u32 size_len = 0;
 size_t inputs = 0;
 size_t i = 0, j = 0;
 u8 *p = data;
 txelem.user_data = user_data;
 if (p+(4) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "160"; return PSBT_READ_ERROR; };
 tx.version = parse_le32(p);
 p += 4;
 if (p+(1) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "164"; return PSBT_READ_ERROR; };
 size_len = compactsize_peek_length(*p);
 if (p+(size_len) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "167"; return PSBT_READ_ERROR; };
 count = compactsize_read(p, &res);
 if (res != PSBT_OK)
  return res;
 p += size_len;
 inputs = count;
                                     ;
 for (i = 0; i < count; i++) {
  res = parse_txin(&p, data, data_size, &txin);
  if (res != PSBT_OK)
   return res;
  txelem.elem_type = PSBT_TXELEM_TXIN;
  txelem.elem.txin = &txin;
  handler(&txelem);
 }
 if (p+(1) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "187"; return PSBT_READ_ERROR; };
 size_len = compactsize_peek_length(*p);
 if (p+(size_len) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "190"; return PSBT_READ_ERROR; };
 count = compactsize_read(p, &res);
 if (res != PSBT_OK)
  return res;
 p += size_len;
 for (i = 0; i < count; i++) {
  res = parse_txout(&p, data, data_size, &txout);
  if (res != PSBT_OK)
   return res;
  txelem.elem_type = PSBT_TXELEM_TXOUT;
  txelem.elem.txout = &txout;
  handler(&txelem);
 }
 if (flag & 0x1) {
  for (i = 0; i < inputs; i++) {
   if (p+(1) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "209"; return PSBT_READ_ERROR; };
   size_len = compactsize_peek_length(*p);
   if (p+(size_len) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "212"; return PSBT_READ_ERROR; };
   count = compactsize_read(p, &res);
   if (res != PSBT_OK)
    return res;
   p += size_len;
   for (j = 0; j < count; j++) {
    res = parse_witness_item(&p, data, data_size, &wi);
    if (res != PSBT_OK)
     return res;
    wi.input_index = i;
    wi.item_index = j;
    txelem.elem_type = PSBT_TXELEM_WITNESS_ITEM;
    txelem.elem.witness_item = &wi;
    handler(&txelem);
   }
  }
 }
 if (p+(4) > data + data_size) { psbt_errmsg = "out of bounds " "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c" ":" "233"; return PSBT_READ_ERROR; };
 tx.lock_time = parse_le32(p);
 p += 4;
 if (p != data + data_size) {
  psbt_errmsg = "psbt_btc_tx_parse: parsing fell short";
  return PSBT_READ_ERROR;
 }
 txelem.elem_type = PSBT_TXELEM_TX;
 txelem.elem.tx = &tx;
 handler(&txelem);
 return PSBT_OK;
}

