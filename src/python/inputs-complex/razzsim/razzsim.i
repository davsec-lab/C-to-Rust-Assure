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
typedef long unsigned int size_t;
typedef int wchar_t;
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
enum card_suit_rank
  {
    SPADE_ACE, SPADE_2, SPADE_3, SPADE_4, SPADE_5, SPADE_6, SPADE_7, SPADE_8,
    SPADE_9, SPADE_10, SPADE_J, SPADE_Q, SPADE_K,
    HEART_ACE, HEART_2, HEART_3, HEART_4, HEART_5, HEART_6, HEART_7, HEART_8,
    HEART_9, HEART_10, HEART_J, HEART_Q, HEART_K,
    DIAMOND_ACE, DIAMOND_2, DIAMOND_3, DIAMOND_4, DIAMOND_5, DIAMOND_6,
    DIAMOND_7, DIAMOND_8, DIAMOND_9, DIAMOND_10, DIAMOND_J, DIAMOND_Q, DIAMOND_K,
    CLUB_ACE, CLUB_2, CLUB_3, CLUB_4, CLUB_5, CLUB_6, CLUB_7, CLUB_8, CLUB_9,
    CLUB_10, CLUB_J, CLUB_Q, CLUB_K,
    CARD_COUNT,
    INVALID_CARD,
  };
enum card_rank
  {
    ACE, R2, R3, R4, R5, R6, R7, R8, R9, R10, J, Q, K,
    RANK_COUNT,
    INVALID_RANK,
  };
enum card_suit
  {
    SPADE, HEART, DIAMOND, CLUB,
    SUIT_COUNT,
    INVALID_SUIT,
  };
typedef struct card_impl card;
typedef struct card_hand_impl card_hand;
typedef struct card_deck_impl card_deck;
enum card_suit_rank
get_card_suit_rank (const card *c);
enum card_rank
get_card_rank (const card *c);
enum card_suit
get_card_suit (const card *c);
const card *
create_card (enum card_suit_rank csr);
const card *
strtocard (const char *str);
const char *
cardtostr (enum card_suit_rank c);
const char *
ranktostr (enum card_rank r);
void
destroy_card (const card **c_ptr);
enum card_rank
strtorank (const char *str);
typedef int (*card_sorter) (const card *before, const card *new,
       const card *after);
int
sort_card_after (const card *before, const card *new, const card *after);
int
sort_card_by_rank (const card *before, const card *new, const card *after);
card_hand *
create_hand (unsigned char max, card_sorter sorter);
void
reset_hand (card_hand *h);
void
insert_into_hand (card_hand *h, const card *c);
unsigned long
count_cards_in_hand (const card_hand *h);
unsigned long
get_max_of_hand (const card_hand *h);
enum card_rank
get_max_rank_of_hand (const card_hand *h);
enum itr_action
  {
    CONTINUE,
    BREAK,
    REMOVE_AND_CONTINUE,
    REMOVE_AND_BREAK,
  };
typedef enum itr_action (*card_iterator) (unsigned long len,
       unsigned long pos,
       const card *c);
void
iterate_hand (card_hand *h, card_iterator itr_fn);
void
remove_from_hand (card_hand *h, enum card_suit_rank c);
void
destroy_hand (card_hand **h_ptr);
int
is_card_in_deck (enum card_suit_rank c, const card_deck *d);
const card *
deal_from_deck (card_deck *d);
void
strip_card_from_deck (enum card_suit_rank c, card_deck *d);
card_deck *
create_shuffled_deck (void);
void
destroy_deck (card_deck **d_ptr);
struct card_impl
{
  uint8_t card;
};
static void
write_card (enum card_suit_rank csr, card *c)
{
  c->card = (0U);
  if (csr >= SPADE_ACE && csr <= SPADE_K)
    {
      c->card |= (1U << 5);
    }
  else if (csr >= HEART_ACE && csr <= HEART_K)
    {
      c->card |= (2U << 5);
    }
  else if (csr >= DIAMOND_ACE && csr <= DIAMOND_K)
    {
      c->card |= (3U << 5);
    }
  else if (csr >= CLUB_ACE && csr <= CLUB_K)
    {
      c->card |= (4U << 5);
    }
  switch (csr)
    {
    case SPADE_ACE:
    case HEART_ACE:
    case DIAMOND_ACE:
    case CLUB_ACE:
      c->card |= (1U);
      break;
    case SPADE_2:
    case HEART_2:
    case DIAMOND_2:
    case CLUB_2:
      c->card |= (2U);
      break;
    case SPADE_3:
    case HEART_3:
    case DIAMOND_3:
    case CLUB_3:
      c->card |= (3U);
      break;
    case SPADE_4:
    case HEART_4:
    case DIAMOND_4:
    case CLUB_4:
      c->card |= (4U);
      break;
    case SPADE_5:
    case HEART_5:
    case DIAMOND_5:
    case CLUB_5:
      c->card |= (5U);
      break;
    case SPADE_6:
    case HEART_6:
    case DIAMOND_6:
    case CLUB_6:
      c->card |= (6U);
      break;
    case SPADE_7:
    case HEART_7:
    case DIAMOND_7:
    case CLUB_7:
      c->card |= (7U);
      break;
    case SPADE_8:
    case HEART_8:
    case DIAMOND_8:
    case CLUB_8:
      c->card |= (8U);
      break;
    case SPADE_9:
    case HEART_9:
    case DIAMOND_9:
    case CLUB_9:
      c->card |= (9U);
      break;
    case SPADE_10:
    case HEART_10:
    case DIAMOND_10:
    case CLUB_10:
      c->card |= (10U);
      break;
    case SPADE_J:
    case HEART_J:
    case DIAMOND_J:
    case CLUB_J:
      c->card |= (11U);
      break;
    case SPADE_Q:
    case HEART_Q:
    case DIAMOND_Q:
    case CLUB_Q:
      c->card |= (12U);
      break;
    case SPADE_K:
    case HEART_K:
    case DIAMOND_K:
    case CLUB_K:
      c->card |= (13U);
      break;
    }
}
struct card_collection;
struct card_collection
{
  struct card_collection *prev;
  struct card_collection *next;
  const card *c;
};
static int
insert_into_collection (struct card_collection **head, const card *c,
   card_sorter sorter)
{
  struct card_collection *col;
  struct card_collection *itr;
  col = malloc (sizeof (*col));
  if (col == ((void*)0))
    {
      destroy_card (&c);
      return 1;
    }
  col->c = c;
  if (*head == ((void*)0))
    {
      col->prev = col;
      col->next = col;
      *head = col;
      return 0;
    }
  itr = *head;
  if (sorter (((void*)0), c, itr->c))
    {
      col->prev = itr->prev;
      col->next = itr;
      itr->prev = col;
      col->prev->next = col;
      *head = col;
      return 0;
    }
  while (itr->next != *head)
    {
      if (sorter (itr->c, c, itr->next->c))
 {
   col->prev = itr;
   col->next = itr->next;
   itr->next = col;
   col->next->prev = col;
   return 0;
 }
      itr = itr->next;
    }
  if (sorter (itr->c, c, ((void*)0)))
    {
      col->prev = itr;
      col->next = *head;
      itr->next = col;
      col->next->prev = col;
      return 0;
    }
  return 0;
}
static int
iterate_collection (struct card_collection *head, struct card_collection **itr)
{
  if (head == ((void*)0))
    {
      return 0;
    }
  if (*itr == ((void*)0))
    {
      *itr = head;
    }
  else
    {
      *itr = (*itr)->next;
      if (*itr == head)
 {
   *itr = ((void*)0);
 }
    }
  return *itr != ((void*)0);
}
static void
append_into_collection (struct card_collection **head, struct card_collection *new)
{
  if (*head == ((void*)0))
    {
      new->prev = new;
      new->next = new;
      *head = new;
      return;
    }
  new->prev = (*head)->prev;
  new->next = *head;
  new->prev->next = new;
  new->next->prev = new;
}
static void
detach_from_collection (const struct card_collection *entry)
{
  entry->next->prev = entry->prev;
  entry->prev->next = entry->next;
}
typedef void (*payload_freer) (void **payload);
static void
destroy_card_payload (void **payload)
{
  destroy_card ((const card **) payload);
}
static void
destroy_collection_entry (struct card_collection **entry, payload_freer freer)
{
  if (*entry == ((void*)0))
    {
      return;
    }
  if (freer != ((void*)0))
    {
      freer ((void *) &(*entry)->c);
    }
  free ((void *) *entry);
  *entry = ((void*)0);
}
static void
remove_from_collection_under_itr (struct card_collection **head,
      struct card_collection **entry,
      payload_freer freer)
{
  struct card_collection *entry_to_remove = ((void*)0);
  int is_entry_head = (*head == *entry);
  detach_from_collection (*entry);
  entry_to_remove = *entry;
  *entry = (*entry)->prev;
  if (*entry == entry_to_remove)
    {
      *entry = ((void*)0);
    }
  destroy_collection_entry (&entry_to_remove, freer);
  if (is_entry_head && *head != *entry)
    {
      *head = ((*entry == ((void*)0)) ? ((void*)0) : (*entry)->next);
    }
}
static void
destroy_collection (struct card_collection **col_ptr, payload_freer freer)
{
  struct card_collection *head = *col_ptr;
  struct card_collection *head_next;
  if (head == ((void*)0))
    {
      return;
    }
  head->prev->next = ((void*)0);
  do
    {
      head_next = head->next;
      if (freer != ((void*)0))
 {
   freer ((void *) &head->c);
 }
      free (head);
      head = head_next;
    }
  while (head != ((void*)0));
  *col_ptr = ((void*)0);
}
struct card_hand_impl
{
  uint8_t max;
  uint8_t len;
  card_sorter sorter;
  struct card_collection *cards;
};
struct card_deck_impl
{
  char card_count;
  card cards[CARD_COUNT];
};
enum card_suit_rank
get_card_suit_rank (const card *c)
{
  enum card_suit_rank csr;
  enum card_suit cs = get_card_suit (c);
  enum card_rank cr = get_card_rank (c);
  if (cs == INVALID_SUIT || cr == INVALID_RANK)
    {
      return INVALID_CARD;
    }
  switch (cs)
    {
    case SPADE:
      csr = SPADE_ACE;
      break;
    case HEART:
      csr = HEART_ACE;
      break;
    case DIAMOND:
      csr = DIAMOND_ACE;
      break;
    case CLUB:
      csr = CLUB_ACE;
      break;
    }
  return csr + cr;
}
enum card_rank
get_card_rank (const card *c)
{
  uint8_t r = (c->card & (0x1FU));
  if (r < (1U) || r > (13U))
    {
      return INVALID_RANK;
    }
  return r - 1;
}
enum card_suit
get_card_suit (const card *c)
{
  uint8_t s = c->card & (0x7U << 5);
  if (s < (1U << 5) || s > (4U << 5))
    {
      return INVALID_SUIT;
    }
  return (s >> 5) - 1;
}
const card *
create_card (enum card_suit_rank csr)
{
  card *c;
  c = malloc (sizeof (*c));
  if (c == ((void*)0))
    {
      return ((void*)0);
    }
  write_card (csr, c);
  if (c->card == (0U))
    {
      free (c);
      return ((void*)0);
    }
  return c;
}
const card *
strtocard (const char *str)
{
  enum card_suit_rank csr;
  size_t char_count = strlen (str);
  if (char_count != 2)
    {
      return ((void*)0);
    }
  switch (toupper (str[0]))
    {
    case 'S':
      csr = SPADE_ACE;
      break;
    case 'H':
      csr = HEART_ACE;
      break;
    case 'D':
      csr = DIAMOND_ACE;
      break;
    case 'C':
      csr = CLUB_ACE;
      break;
    default:
      return ((void*)0);
    }
  if (str[1] >= '2' && str[1] <= '9')
    {
      return create_card (csr + str[1] - '1');
    }
  switch (toupper (str[1]))
    {
    case 'A':
      return create_card (csr);
    case '1':
      if (char_count == 3)
 {
   return create_card (csr + 9);
 }
      else
 {
   return ((void*)0);
 }
    case 'J':
      return create_card (csr + 10);
    case 'Q':
      return create_card (csr + 11);
    case 'K':
      return create_card (csr + 12);
    }
  return ((void*)0);
}
const char *
cardtostr (enum card_suit_rank c)
{
  static const char *s[SUIT_COUNT][RANK_COUNT] = {
    {"SA", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10", "SJ", "SQ", "SK"},
    {"HA", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10", "HJ", "HQ", "HK"},
    {"DA", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10", "DJ", "DQ", "DK"},
    {"CA", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "CJ", "CQ", "CK"},
  };
  if (c < SPADE_ACE || c > CLUB_K)
    {
      return ((void*)0);
    }
  return s[c / RANK_COUNT][c % RANK_COUNT];
}
const char *
ranktostr (enum card_rank r)
{
  static const char *s[RANK_COUNT] = {
    "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"
  };
  if (r < ACE || r > K)
    {
      return ((void*)0);
    }
  return s[r];
}
void
destroy_card (const card **c_ptr)
{
  if (*c_ptr == ((void*)0))
    {
      return;
    }
  free ((void *) *c_ptr);
  *c_ptr = ((void*)0);
}
enum card_rank
strtorank (const char *str)
{
  enum card_rank cr = ACE;
  if (str[0] >= '2' && str[0] <= '9')
    {
      cr += str[0] - '1';
    }
  else
    {
      switch (toupper (str[0]))
 {
 case 'A':
   break;
 case '1':
   if (str[1] == '0')
     {
       cr += 9;
     }
   else
     {
       return INVALID_RANK;
     }
   break;
 case 'J':
   cr += 10;
   break;
 case 'Q':
   cr += 11;
   break;
 case 'K':
   cr += 12;
   break;
 default:
   return INVALID_RANK;
 }
    }
  return cr;
}
int
sort_card_after (const card *before, const card *new, const card *after)
{
  if (after == ((void*)0))
    {
      return 1;
    }
  return 0;
}
int
sort_card_by_rank (const card *before, const card *new, const card *after)
{
  enum card_rank r = get_card_rank (new);
  if (after == ((void*)0)
      || ((before == ((void*)0) || r > get_card_rank (before))
   && r <= get_card_rank (after)))
    {
      return 1;
    }
  return 0;
}
card_hand *
create_hand (unsigned char max, card_sorter sorter)
{
  struct card_hand_impl *h = malloc (sizeof (*h));
  if (h == ((void*)0))
    {
      return ((void*)0);
    }
  if (sorter == ((void*)0))
    {
      sorter = sort_card_after;
    }
  h->max = max;
  h->len = 0;
  h->sorter = sorter;
  h->cards = ((void*)0);
  return h;
}
void
reset_hand (card_hand *h)
{
  h->len = 0;
  destroy_collection (&h->cards, ((void*)0));
}
void
insert_into_hand (card_hand *h, const card *c)
{
  if (h->max == h->len)
    {
      return;
    }
  insert_into_collection (&h->cards, c, h->sorter);
  h->len++;
}
unsigned long
count_cards_in_hand (const card_hand *h)
{
  return h->len;
}
unsigned long
get_max_of_hand (const card_hand *h)
{
  return h->max;
}
enum card_rank
get_max_rank_of_hand (const card_hand *h)
{
  struct card_collection *itr = ((void*)0);
  enum card_rank cr = INVALID_RANK;
  if (h->len == 0)
    {
      return cr;
    }
  while (iterate_collection (h->cards, &itr))
    {
      enum card_rank this_cr = get_card_rank (itr->c);
      if (cr == INVALID_RANK)
 {
   cr = this_cr;
 }
      else if (this_cr > cr)
 {
   cr = this_cr;
 }
    }
  return cr;
}
static void
remove_from_hand_under_itr (card_hand *h, struct card_collection **itr,
       unsigned long *pos)
{
  remove_from_collection_under_itr (&h->cards, itr, ((void*)0));
  h->len--;
  if (pos != ((void*)0))
    {
      *pos -= 1;
    }
}
void
iterate_hand (card_hand *h, card_iterator itr_fn)
{
  struct card_collection *itr = ((void*)0);
  unsigned long pos = 0;
  int is_stopped = 0;
  while (!is_stopped && iterate_collection (h->cards, &itr))
    {
      switch (itr_fn (h->len, pos, itr->c))
 {
 case CONTINUE:
   break;
 case BREAK:
   is_stopped = 1;
   break;
 case REMOVE_AND_CONTINUE:
   remove_from_hand_under_itr (h, &itr, &pos);
   break;
 case REMOVE_AND_BREAK:
   remove_from_hand_under_itr (h, &itr, &pos);
   is_stopped = 1;
   break;
 }
      pos++;
    }
}
void
remove_from_hand (card_hand *h, enum card_suit_rank c)
{
  struct card_collection *itr = ((void*)0);
  while (iterate_collection (h->cards, &itr))
    {
      if (get_card_suit_rank (itr->c) == c)
 {
   remove_from_hand_under_itr (h, &itr, ((void*)0));
 }
    }
}
void
destroy_hand (card_hand **h_ptr)
{
  if (*h_ptr == ((void*)0))
    {
      return;
    }
  destroy_collection (&(*h_ptr)->cards, ((void*)0));
  free ((void *) *h_ptr);
  *h_ptr = ((void*)0);
}
int
is_card_in_deck (enum card_suit_rank c, const card_deck *d)
{
  return get_card_suit_rank (&d->cards[c]) == INVALID_CARD;
}
const card *
deal_from_deck (card_deck *d)
{
  unsigned long i;
  unsigned long valid_card_idx;
  unsigned long selected_card_idx;
  card *c;
  if (d->card_count <= 0)
    {
      return ((void*)0);
    }
  selected_card_idx = lrand48 () % d->card_count;
  valid_card_idx = 0;
  for (i = 0; i < CARD_COUNT; i++)
    {
      c = &d->cards[i];
      if (get_card_suit_rank (c) == INVALID_CARD)
 {
   if (valid_card_idx == selected_card_idx)
     {
       write_card (i, c);
       d->card_count--;
       break;
     }
   valid_card_idx++;
 }
    }
  return c;
}
void
strip_card_from_deck (enum card_suit_rank c, card_deck *d)
{
  card *card = &d->cards[c];
  if (get_card_suit_rank (card) == INVALID_CARD)
    {
      write_card (c, card);
      d->card_count--;
    }
}
card_deck *
create_shuffled_deck (void)
{
  struct card_deck_impl *deck;
  deck = malloc (sizeof (*deck));
  if (deck == ((void*)0))
    {
      return ((void*)0);
    }
  memset (deck, 0, sizeof (*deck));
  deck->card_count = CARD_COUNT;
  return deck;
}
void
destroy_deck (card_deck **d_ptr)
{
  if (*d_ptr == ((void*)0))
    {
      return;
    }
  free (*d_ptr);
  *d_ptr = ((void*)0);
}
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

struct decided_cards
{
  uint8_t my_card_count;
  const card *my_cards[3];
  uint8_t opponent_card_count;
  const card *opponent_cards[7];
};
typedef void (*rank_listener) (void *arg, enum card_rank r);
int
simulate_razz_game (const struct decided_cards *decided_cards,
      unsigned long game_count,
      void *arg,
      rank_listener listener);

int
process_args (unsigned long *game_count,
       struct decided_cards *decided_cards,
       int argc,
       char **argv)
{
  int i, end;
  enum card_suit_rank csr;
  card_deck *deck;
  if (argc < 4 || argc > 11)
    {
      fprintf (stderr, "Invalid argument count\n");
      return 1;
    }
  *game_count = atoi (*argv++);
  deck = create_shuffled_deck ();
  if (deck == ((void*)0))
    {
      fprintf (stderr, "Cannot create a shuffled deck\n");
      return 1;
    }
  end = 3;
  decided_cards->my_card_count = end;
  for (i = 0; i < end; i++)
    {
      enum card_rank my_rank;
      enum card_suit cs = SPADE;
      const card *my_card;
      if ((my_rank = strtorank (*argv++)) == INVALID_RANK)
 {
   fprintf (stderr, "Invalid my rank specification #%d\n", i + 1);
   destroy_deck (&deck);
   return 1;
 }
      csr = cs * RANK_COUNT + my_rank;
      while (!is_card_in_deck (csr, deck))
 {
   if (++cs == SUIT_COUNT)
     {
       break;
     }
   csr = cs * RANK_COUNT + my_rank;
 }
      if (cs == SUIT_COUNT)
 {
   fprintf (stderr, "Duplicated my rank specification #%d\n", i + 1);
   destroy_deck (&deck);
   return 1;
 }
      strip_card_from_deck (csr, deck);
      if ((my_card = create_card (csr)) == ((void*)0))
 {
   fprintf (stderr, "Cannot create my card #%d\n", i + 1);
   destroy_deck (&deck);
   return 1;
 }
      decided_cards->my_cards[i] = my_card;
    }
  i = 0;
  while (*argv != ((void*)0))
    {
      enum card_rank opponent_rank;
      enum card_suit cs = SPADE;
      const card *opponent_card;
      if ((opponent_rank = strtorank (*argv++)) == INVALID_RANK)
 {
   fprintf (stderr, "Invalid opponent rank specification #%d\n", i + 1);
   destroy_deck (&deck);
   return 1;
 }
      csr = cs * RANK_COUNT + opponent_rank;
      while (!is_card_in_deck (csr, deck))
 {
   if (++cs == SUIT_COUNT)
     {
       break;
     }
   csr = cs * RANK_COUNT + opponent_rank;
 }
      if (cs == SUIT_COUNT)
 {
   fprintf (stderr, "Duplicated opponent rank specification #%d\n", i + 1);
   destroy_deck (&deck);
   return 1;
 }
      strip_card_from_deck (csr, deck);
      if ((opponent_card = create_card (csr)) == ((void*)0))
 {
   fprintf (stderr, "Cannot create opponent card #%d\n", i + 1);
   destroy_deck (&deck);
   return 1;
 }
      decided_cards->opponent_cards[i] = opponent_card;
      i++;
    }
  decided_cards->opponent_card_count = i;
  destroy_deck (&deck);
  return 0;
}
void
listener (void *arg, enum card_rank r)
{
  unsigned long *rank_count = arg;
  if (r != INVALID_RANK && (r < R5 || r > K))
    {
      fprintf (stderr, "%s is out of range\n", ranktostr (r));
      return;
    }
  if (r != INVALID_RANK)
    {
      rank_count[r - R5]++;
    }
}
int
main (int argc, char **argv, char **envp)
{
  int i;
  int end;
  struct decided_cards decided_cards;
  unsigned long game_count;
  unsigned long rank_count[K - R5 + 1] = {0};
  srand48 (time (((void*)0)));
  if (argc < 5 || argc > 12)
    {
      fprintf (stderr,
        "Usage: razz GAME_COUNT\n"
        "\tRANK1 RANK2 RANK3\n"
        "\t[OPP1_RANK [OPP2_RANK [... [OPP7_RANK]]]]\n"
        "\n"
        "You specify a rank with the following symbols:\n"
        "\tA, 2, ..., 10, J, Q, K for ace to king\n");
      exit (1);
    }
  if (process_args (&game_count, &decided_cards,
      argc - 1, &argv[1]))
    {
      exit (1);
    }
  if (simulate_razz_game (&decided_cards, game_count, rank_count, listener))
    {
      exit (1);
    }
  for (i = 0; i < decided_cards.my_card_count; i++)
    {
      destroy_card (&decided_cards.my_cards[i]);
    }
  for (i = 0; i < decided_cards.opponent_card_count; i++)
    {
      destroy_card (&decided_cards.opponent_cards[i]);
    }
  end = K - R5 + 1;
  for (i = 0; i < end; i++)
    {
      printf ("%2s = %.4f\n",
       ranktostr (R5 + i),
       (double) rank_count[i] / game_count);
    }
  exit (0);
}
static void
complete_hand (card_hand *my_hand, const struct decided_cards *decided_cards,
        card_deck *deck)
{
  int i;
  int end = decided_cards->my_card_count;
  for (i = 0; i < end; i++)
    {
      insert_into_hand (my_hand, decided_cards->my_cards[i]);
    }
  end = 7 - end;
  for (i = 0; i < end; i++)
    {
      insert_into_hand (my_hand, deal_from_deck (deck));
    }
}
static enum itr_action
duplicated_rank_remover (unsigned long len, unsigned long pos, const card *c)
{
  static enum card_rank prev_rank;
  enum card_rank curr_rank = get_card_rank (c);
  if (pos == 0)
    {
      prev_rank = curr_rank;
      return CONTINUE;
    }
  if (prev_rank == curr_rank)
    {
      return REMOVE_AND_CONTINUE;
    }
  prev_rank = curr_rank;
  return CONTINUE;
}
static enum itr_action
length_trimmer (unsigned long len, unsigned long pos, const card *c)
{
  if (pos >= 5)
    {
      return REMOVE_AND_CONTINUE;
    }
  return CONTINUE;
}
static enum itr_action
card_printer (unsigned long len, unsigned long pos, const card *c)
{
  printf ("%4s", cardtostr (get_card_suit_rank (c)));
  return CONTINUE;
}
static enum card_rank
get_razz_rank (card_hand *hand)
{
  enum card_rank r;
  unsigned long cards_count;
  iterate_hand (hand, card_printer);
  iterate_hand (hand, duplicated_rank_remover);
  printf (" -> ");
  iterate_hand (hand, card_printer);
  cards_count = count_cards_in_hand (hand);
  if (cards_count < 5)
    {
      printf ("\n");
      return INVALID_RANK;
    }
  iterate_hand (hand, length_trimmer);
  r = get_max_rank_of_hand (hand);
  if (cards_count > 5)
    {
      printf ("\t");
    }
  else
    {
      printf ("\t\t");
    }
  printf ("-> ");
  iterate_hand (hand, card_printer);
  printf (": %2s\n",
   ranktostr (r));
  return r;
}
static void
strip_deck (card_deck *deck, const struct decided_cards *decided_cards)
{
  int i, end;
  end = decided_cards->my_card_count;
  for (i = 0; i < end; i++)
    {
      strip_card_from_deck (get_card_suit_rank (decided_cards->my_cards[i]),
       deck);
    }
  end = decided_cards->opponent_card_count;
  for (i = 0; i < end; i++)
    {
      strip_card_from_deck (get_card_suit_rank (decided_cards->opponent_cards[i]),
       deck);
    }
}
int
simulate_razz_game (const struct decided_cards *decided_cards,
      unsigned long game_count,
      void *arg,
      rank_listener listener)
{
  unsigned long i;
  card_hand *my_hand;
  card_deck *deck;
  my_hand = create_hand (7, sort_card_by_rank);
  if (my_hand == ((void*)0))
    {
      fprintf (stderr, "Cannot create a hand\n");
      return 1;
    }
  for (i = 0; i < game_count; i++)
    {
      deck = create_shuffled_deck ();
      if (deck == ((void*)0))
 {
   fprintf (stderr, "Cannot create a shuffled deck\n");
   destroy_deck (&deck);
   return 1;
 }
      strip_deck (deck, decided_cards);
      complete_hand (my_hand, decided_cards, deck);
      listener (arg, get_razz_rank (my_hand));
      reset_hand (my_hand);
      destroy_deck (&deck);
    }
  destroy_hand (&my_hand);
  destroy_deck (&deck);
  return 0;
}

