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
extern _Float32 strtof32 (const char *__restrict __nptr,
     char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern _Float64 strtof64 (const char *__restrict __nptr,
     char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern _Float32x strtof32x (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern _Float64x strtof64x (const char *__restrict __nptr,
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
extern long int strtol (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtol") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoul") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoq (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoll") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoull") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoll (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoll") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoull") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1)));
extern int strfromd (char *__dest, size_t __size, const char *__format,
       double __f)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int strfromf (char *__dest, size_t __size, const char *__format,
       float __f)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int strfroml (char *__dest, size_t __size, const char *__format,
       long double __f)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int strfromf32 (char *__dest, size_t __size, const char * __format,
         _Float32 __f)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int strfromf64 (char *__dest, size_t __size, const char * __format,
         _Float64 __f)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int strfromf32x (char *__dest, size_t __size, const char * __format,
   _Float32x __f)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int strfromf64x (char *__dest, size_t __size, const char * __format,
   _Float64x __f)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
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

extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     locale_t __loc) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 4)));
extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 4)));
extern long int strtol_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) __asm__ ("" "__isoc23_strtol_l") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1, 4)));
extern unsigned long int strtoul_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) __asm__ ("" "__isoc23_strtoul_l") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern long long int strtoll_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) __asm__ ("" "__isoc23_strtoll_l") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) __asm__ ("" "__isoc23_strtoull_l") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1, 4)));
extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));
extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));
extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));
extern _Float32 strtof32_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));
extern _Float64 strtof64_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));
extern _Float32x strtof32x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));
extern _Float64x strtof64x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));
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
typedef __ino64_t ino64_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __off64_t off64_t;
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
typedef __useconds_t useconds_t;
typedef __suseconds_t suseconds_t;
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
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
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
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;

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
extern char *secure_getenv (const char *__name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int clearenv (void) __attribute__ ((__nothrow__ ));
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
extern char *canonicalize_file_name (const char *__name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__malloc__))
                              ;
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ )) ;
typedef int (*__compar_fn_t) (const void *, const void *);
typedef __compar_fn_t comparison_fn_t;
typedef int (*__compar_d_fn_t) (const void *, const void *, void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));
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
extern int posix_openpt (int __oflag) ;
extern int grantpt (int __fd) __attribute__ ((__nothrow__ ));
extern int unlockpt (int __fd) __attribute__ ((__nothrow__ ));
extern char *ptsname (int __fd) __attribute__ ((__nothrow__ )) ;
extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
extern int getpt (void);
extern int getloadavg (double __loadavg[], int __nelem)
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
typedef __fpos64_t fpos64_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ ));
extern int renameat2 (int __oldfd, const char *__old, int __newfd,
        const char *__new, unsigned int __flags) __attribute__ ((__nothrow__ ));
extern int fclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *tmpfile (void)
  __attribute__ ((__malloc__)) ;
extern FILE *tmpfile64 (void)
   __attribute__ ((__malloc__)) ;
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ )) ;
extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ )) ;
extern char *tempnam (const char *__dir, const char *__pfx)
   __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern int fcloseall (void);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) ;
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__nonnull__ (3)));
extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes)
  __attribute__ ((__malloc__)) ;
extern FILE *freopen64 (const char *__restrict __filename,
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
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc23_fscanf") __attribute__ ((__nonnull__ (1)));
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc23_scanf") ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc23_sscanf") __attribute__ ((__nothrow__ ));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__nonnull__ (1)));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc23_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__nonnull__ (1)));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc23_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc23_vsscanf") __attribute__ ((__nothrow__ ))
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
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream)
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
extern int fputs_unlocked (const char *__restrict __s,
      FILE *__restrict __stream) __attribute__ ((__nonnull__ (2)));
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
extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
extern __off64_t ftello64 (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos)
  __attribute__ ((__nonnull__ (1)));
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos) __attribute__ ((__nonnull__ (1)));
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
extern char *cuserid (char *__s)
                                     ;
struct obstack;
extern int obstack_printf (struct obstack *__restrict __obstack,
      const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       const char *__restrict __format,
       __gnuc_va_list __args)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0)));
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
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
extern void *rawmemchr (const void *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern void *memrchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)))
                                           ;
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
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
extern const char *strerrordesc_np (int __err) __attribute__ ((__nothrow__ ));
extern const char *strerrorname_np (int __err) __attribute__ ((__nothrow__ ));
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
extern const char *sigabbrev_np (int __sig) __attribute__ ((__nothrow__ ));
extern const char *sigdescr_np (int __sig) __attribute__ ((__nothrow__ ));
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
extern int strverscmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strfry (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void *memfrob (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)))
                                          ;
extern char *basename (const char *__filename) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

struct xoptOption;
typedef void (*xoptCallback)(
 const char *value,
 void *data,
 const struct xoptOption *option,
 _Bool longArg,
 const char **err);
enum xoptOptionFlag {
 XOPT_TYPE_STRING = 0x1,
 XOPT_TYPE_INT = 0x2,
 XOPT_TYPE_LONG = 0x4,
 XOPT_TYPE_FLOAT = 0x8,
 XOPT_TYPE_DOUBLE = 0x10,
 XOPT_TYPE_BOOL = 0x20,
 XOPT_OPTIONAL = 0x40
};
enum xoptContextFlag {
 XOPT_CTX_KEEPFIRST = 0x1,
 XOPT_CTX_POSIXMEHARDER = 0x2,
 XOPT_CTX_NOCONDENSE = 0x4,
 XOPT_CTX_SLOPPYSHORTS = 0x8 | 0x4,
 XOPT_CTX_STRICT = 0x10
};
typedef struct xoptOption {
 const char *longArg;
 const char shortArg;
 size_t offset;
 xoptCallback callback;
 long options;
 const char *argDescrip;
 const char *descrip;
} xoptOption;
typedef struct xoptContext xoptContext;
typedef struct xoptAutohelpOptions {
 const char *usage;
 const char *prefix;
 const char *suffix;
 size_t spacer;
} xoptAutohelpOptions;
xoptContext*
xopt_context(
 const char *name,
 const xoptOption *options,
 long flags,
 const char **err);
int
xopt_parse(
 xoptContext *ctx,
 int argc,
 const char **argv,
 void *data,
 const char ***extras,
 const char **err);
void
xopt_autohelp(
 xoptContext *ctx,
 FILE *stream,
 const xoptAutohelpOptions *options,
 const char **err);
static void *mymemcpy(void *, void *, size_t);
extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern char *program_invocation_name;
extern char *program_invocation_short_name;
typedef int error_t;
extern long int __sysconf (int __name) __attribute__ ((__nothrow__ ));
static void fmtstr(char *, size_t *, size_t, const char *, int, int, int);
static void fmtint(char *, size_t *, size_t, long int, int, int, int, int);
static void fmtflt(char *, size_t *, size_t, double, int, int, int, int *);
static void printsep(char *, size_t *, size_t);
static int getnumsep(int);
static int getexponent(double);
static int convert(unsigned long int, char *, size_t, int, int);
static unsigned long int cast(double);
static unsigned long int myround(double);
static double mypow10(int);
extern int (*__errno_location ());
int
rpl_vsnprintf(char *str, size_t size, const char *format, va_list args)
{
 double fvalue;
 long int value;
 unsigned char cvalue;
 const char *strvalue;
 long int *intmaxptr;
 long int *ptrdiffptr;
 size_t *sizeptr;
 long int *llongptr;
 long int *longptr;
 int *intptr;
 short int *shortptr;
 signed char *charptr;
 size_t len = 0;
 int overflow = 0;
 int base = 0;
 int cflags = 0;
 int flags = 0;
 int width = 0;
 int precision = -1;
 int state = 0;
 char ch = *format++;
 if (str == ((void*)0) && size != 0)
  size = 0;
 while (ch != '\0')
  switch (state) {
  case 0:
   if (ch == '%')
    state = 1;
   else
    do { if (len + 1 < size) str[len] = ch; (len)++; } while ( 0);
   ch = *format++;
   break;
  case 1:
   switch (ch) {
   case '-':
    flags |= (1 << 0);
    ch = *format++;
    break;
   case '+':
    flags |= (1 << 1);
    ch = *format++;
    break;
   case ' ':
    flags |= (1 << 2);
    ch = *format++;
    break;
   case '#':
    flags |= (1 << 3);
    ch = *format++;
    break;
   case '0':
    flags |= (1 << 4);
    ch = *format++;
    break;
   case '\'':
    flags |= (1 << 5);
    ch = *format++;
    break;
   default:
    state = 2;
    break;
   }
   break;
  case 2:
   if (('0' <= (unsigned char)ch && (unsigned char)ch <= '9')) {
    ch = (ch - '0');
    if (width > (2147483647 - ch) / 10) {
     overflow = 1;
     goto out;
    }
    width = 10 * width + ch;
    ch = *format++;
   } else if (ch == '*') {
    if ((width = __builtin_va_arg(args, int)) < 0) {
     flags |= (1 << 0);
     width = -width;
    }
    ch = *format++;
    state = 3;
   } else
    state = 3;
   break;
  case 3:
   if (ch == '.') {
    state = 4;
    ch = *format++;
   } else
    state = 5;
   break;
  case 4:
   if (precision == -1)
    precision = 0;
   if (('0' <= (unsigned char)ch && (unsigned char)ch <= '9')) {
    ch = (ch - '0');
    if (precision > (2147483647 - ch) / 10) {
     overflow = 1;
     goto out;
    }
    precision = 10 * precision + ch;
    ch = *format++;
   } else if (ch == '*') {
    if ((precision = __builtin_va_arg(args, int)) < 0)
     precision = -1;
    ch = *format++;
    state = 5;
   } else
    state = 5;
   break;
  case 5:
   switch (ch) {
   case 'h':
    ch = *format++;
    if (ch == 'h') {
     ch = *format++;
     cflags = 1;
    } else
     cflags = 2;
    break;
   case 'l':
    ch = *format++;
    if (ch == 'l') {
     ch = *format++;
     cflags = 4;
    } else
     cflags = 3;
    break;
   case 'L':
    cflags = 5;
    ch = *format++;
    break;
   case 'j':
    cflags = 8;
    ch = *format++;
    break;
   case 't':
    cflags = 7;
    ch = *format++;
    break;
   case 'z':
    cflags = 6;
    ch = *format++;
    break;
   }
   state = 6;
   break;
  case 6:
   switch (ch) {
   case 'd':
   case 'i':
    switch (cflags) {
    case 1:
     value = (signed char)__builtin_va_arg(args, int);
     break;
    case 2:
     value = (short int)__builtin_va_arg(args, int);
     break;
    case 3:
     value = __builtin_va_arg(args, long int);
     break;
    case 4:
     value = __builtin_va_arg(args, long int);
     break;
    case 6:
     value = __builtin_va_arg(args, size_t);
     break;
    case 8:
     value = __builtin_va_arg(args, long int);
     break;
    case 7:
     value = __builtin_va_arg(args, long int);
     break;
    default:
     value = __builtin_va_arg(args, int);
     break;
    }
    fmtint(str, &len, size, value, 10, width,
        precision, flags);
    break;
   case 'X':
    flags |= (1 << 6);
   case 'x':
    base = 16;
   case 'o':
    if (base == 0)
     base = 8;
   case 'u':
    if (base == 0)
     base = 10;
    flags |= (1 << 7);
    switch (cflags) {
    case 1:
     value = (unsigned char)__builtin_va_arg(args, unsigned int);
     break;
    case 2:
     value = (unsigned short int)__builtin_va_arg(args, unsigned int);
     break;
    case 3:
     value = __builtin_va_arg(args, unsigned long int);
     break;
    case 4:
     value = __builtin_va_arg(args, unsigned long int);
     break;
    case 6:
     value = __builtin_va_arg(args, size_t);
     break;
    case 8:
     value = __builtin_va_arg(args, unsigned long int);
     break;
    case 7:
     value = __builtin_va_arg(args, long int);
     break;
    default:
     value = __builtin_va_arg(args, unsigned int);
     break;
    }
    fmtint(str, &len, size, value, base, width,
        precision, flags);
    break;
   case 'A':
   case 'F':
    flags |= (1 << 6);
   case 'a':
   case 'f':
    if (cflags == 5)
     fvalue = __builtin_va_arg(args, double);
    else
     fvalue = __builtin_va_arg(args, double);
    fmtflt(str, &len, size, fvalue, width,
        precision, flags, &overflow);
    if (overflow)
     goto out;
    break;
   case 'E':
    flags |= (1 << 6);
   case 'e':
    flags |= (1 << 9);
    if (cflags == 5)
     fvalue = __builtin_va_arg(args, double);
    else
     fvalue = __builtin_va_arg(args, double);
    fmtflt(str, &len, size, fvalue, width,
        precision, flags, &overflow);
    if (overflow)
     goto out;
    break;
   case 'G':
    flags |= (1 << 6);
   case 'g':
    flags |= (1 << 8);
    if (cflags == 5)
     fvalue = __builtin_va_arg(args, double);
    else
     fvalue = __builtin_va_arg(args, double);
    if (precision == 0)
     precision = 1;
    fmtflt(str, &len, size, fvalue, width,
        precision, flags, &overflow);
    if (overflow)
     goto out;
    break;
   case 'c':
    cvalue = __builtin_va_arg(args, int);
    do { if (len + 1 < size) str[len] = cvalue; (len)++; } while ( 0);
    break;
   case 's':
    strvalue = __builtin_va_arg(args, char *);
    fmtstr(str, &len, size, strvalue, width,
        precision, flags);
    break;
   case 'p':
    if ((strvalue = __builtin_va_arg(args, void *)) == ((void*)0))
     fmtstr(str, &len, size, "(nil)", width,
         -1, flags);
    else {
     flags |= (1 << 3);
     flags |= (1 << 7);
     fmtint(str, &len, size,
         (unsigned long int)strvalue, 16, width,
         precision, flags);
    }
    break;
   case 'n':
    switch (cflags) {
    case 1:
     charptr = __builtin_va_arg(args, signed char *);
     *charptr = len;
     break;
    case 2:
     shortptr = __builtin_va_arg(args, short int *);
     *shortptr = len;
     break;
    case 3:
     longptr = __builtin_va_arg(args, long int *);
     *longptr = len;
     break;
    case 4:
     llongptr = __builtin_va_arg(args, long int *);
     *llongptr = len;
     break;
    case 6:
     sizeptr = __builtin_va_arg(args, size_t *);
     *sizeptr = len;
     break;
    case 8:
     intmaxptr = __builtin_va_arg(args, long int *);
     *intmaxptr = len;
     break;
    case 7:
     ptrdiffptr = __builtin_va_arg(args, long int *);
     *ptrdiffptr = len;
     break;
    default:
     intptr = __builtin_va_arg(args, int *);
     *intptr = len;
     break;
    }
    break;
   case '%':
    do { if (len + 1 < size) str[len] = ch; (len)++; } while ( 0);
    break;
   default:
    break;
   }
   ch = *format++;
   state = 0;
   base = cflags = flags = width = 0;
   precision = -1;
   break;
  }
out:
 if (len < size)
  str[len] = '\0';
 else if (size > 0)
  str[size - 1] = '\0';
 if (overflow || len >= 2147483647) {
  (*__errno_location ()) = overflow ? 75 : 34;
  return -1;
 }
 return (int)len;
}
static void
fmtstr(char *str, size_t *len, size_t size, const char *value, int width,
       int precision, int flags)
{
 int padlen, strln;
 int noprecision = (precision == -1);
 if (value == ((void*)0))
  value = "(null)";
 for (strln = 0; value[strln] != '\0' &&
     (noprecision || strln < precision); strln++)
  continue;
 if ((padlen = width - strln) < 0)
  padlen = 0;
 if (flags & (1 << 0))
  padlen = -padlen;
 while (padlen > 0) {
  do { if (*len + 1 < size) str[*len] = ' '; (*len)++; } while ( 0);
  padlen--;
 }
 while (*value != '\0' && (noprecision || precision-- > 0)) {
  do { if (*len + 1 < size) str[*len] = *value; (*len)++; } while ( 0);
  value++;
 }
 while (padlen < 0) {
  do { if (*len + 1 < size) str[*len] = ' '; (*len)++; } while ( 0);
  padlen++;
 }
}
static void
fmtint(char *str, size_t *len, size_t size, long int value, int base, int width,
       int precision, int flags)
{
 unsigned long int uvalue;
 char iconvert[43];
 char sign = 0;
 char hexprefix = 0;
 int spadlen = 0;
 int zpadlen = 0;
 int pos;
 int separators = (flags & (1 << 5));
 int noprecision = (precision == -1);
 if (flags & (1 << 7))
  uvalue = value;
 else {
  uvalue = (value >= 0) ? value : -value;
  if (value < 0)
   sign = '-';
  else if (flags & (1 << 1))
   sign = '+';
  else if (flags & (1 << 2))
   sign = ' ';
 }
 pos = convert(uvalue, iconvert, sizeof(iconvert), base,
     flags & (1 << 6));
 if (flags & (1 << 3) && uvalue != 0) {
  switch (base) {
  case 8:
   if (precision <= pos)
    precision = pos + 1;
   break;
  case 16:
   hexprefix = (flags & (1 << 6)) ? 'X' : 'x';
   break;
  }
 }
 if (separators)
  separators = getnumsep(pos);
 zpadlen = precision - pos - separators;
 spadlen = width
     - separators
     - ((precision >= pos) ? precision : pos)
     - ((sign != 0) ? 1 : 0)
     - ((hexprefix != 0) ? 2 : 0);
 if (zpadlen < 0)
  zpadlen = 0;
 if (spadlen < 0)
  spadlen = 0;
 if (flags & (1 << 0))
  spadlen = -spadlen;
 else if (flags & (1 << 4) && noprecision) {
  zpadlen += spadlen;
  spadlen = 0;
 }
 while (spadlen > 0) {
  do { if (*len + 1 < size) str[*len] = ' '; (*len)++; } while ( 0);
  spadlen--;
 }
 if (sign != 0)
  do { if (*len + 1 < size) str[*len] = sign; (*len)++; } while ( 0);
 if (hexprefix != 0) {
  do { if (*len + 1 < size) str[*len] = '0'; (*len)++; } while ( 0);
  do { if (*len + 1 < size) str[*len] = hexprefix; (*len)++; } while ( 0);
 }
 while (zpadlen > 0) {
  do { if (*len + 1 < size) str[*len] = '0'; (*len)++; } while ( 0);
  zpadlen--;
 }
 while (pos > 0) {
  pos--;
  do { if (*len + 1 < size) str[*len] = iconvert[pos]; (*len)++; } while ( 0);
  if (separators > 0 && pos > 0 && pos % 3 == 0)
   printsep(str, len, size);
 }
 while (spadlen < 0) {
  do { if (*len + 1 < size) str[*len] = ' '; (*len)++; } while ( 0);
  spadlen++;
 }
}
static void
fmtflt(char *str, size_t *len, size_t size, double fvalue, int width,
       int precision, int flags, int *overflow)
{
 double ufvalue;
 unsigned long int intpart;
 unsigned long int fracpart;
 unsigned long int mask;
 const char *infnan = ((void*)0);
 char iconvert[43];
 char fconvert[43];
 char econvert[4];
 char esign = 0;
 char sign = 0;
 int leadfraczeros = 0;
 int exponent = 0;
 int emitpoint = 0;
 int omitzeros = 0;
 int omitcount = 0;
 int padlen = 0;
 int epos = 0;
 int fpos = 0;
 int ipos = 0;
 int separators = (flags & (1 << 5));
 int estyle = (flags & (1 << 9));
 if (precision == -1)
  precision = 6;
 if (fvalue < 0.0)
  sign = '-';
 else if (flags & (1 << 1))
  sign = '+';
 else if (flags & (1 << 2))
  sign = ' ';
 if ((fvalue != fvalue))
  infnan = (flags & (1 << 6)) ? "NAN" : "nan";
 else if ((fvalue != 0.0 && fvalue + fvalue == fvalue))
  infnan = (flags & (1 << 6)) ? "INF" : "inf";
 if (infnan != ((void*)0)) {
  if (sign != 0)
   iconvert[ipos++] = sign;
  while (*infnan != '\0')
   iconvert[ipos++] = *infnan++;
  fmtstr(str, len, size, iconvert, width, ipos, flags);
  return;
 }
 if (flags & (1 << 9) || flags & (1 << 8)) {
  if (flags & (1 << 8)) {
   precision--;
   if (!(flags & (1 << 3)))
    omitzeros = 1;
  }
  exponent = getexponent(fvalue);
  estyle = 1;
 }
again:
 switch (sizeof(unsigned long int)) {
 case 16:
  if (precision > 38)
   precision = 38;
  break;
 case 8:
  if (precision > 19)
   precision = 19;
  break;
 default:
  if (precision > 9)
   precision = 9;
  break;
 }
 ufvalue = (fvalue >= 0.0) ? fvalue : -fvalue;
 if (estyle)
  ufvalue /= mypow10(exponent);
 if ((intpart = cast(ufvalue)) == (9223372036854775807L *2UL+1UL)) {
  *overflow = 1;
  return;
 }
 mask = mypow10(precision);
 if ((fracpart = myround(mask * (ufvalue - intpart))) >= mask) {
  intpart++;
  fracpart = 0;
  if (estyle && intpart == 10) {
   intpart = 1;
   exponent++;
  }
 }
 if (flags & (1 << 8) && estyle &&
     precision + 1 > exponent && exponent >= -4) {
  precision -= exponent;
  estyle = 0;
  goto again;
 }
 if (estyle) {
  if (exponent < 0) {
   exponent = -exponent;
   esign = '-';
  } else
   esign = '+';
  epos = convert(exponent, econvert, 2, 10, 0);
  if (epos == 1)
   econvert[epos++] = '0';
  econvert[epos++] = esign;
  econvert[epos++] = (flags & (1 << 6)) ? 'E' : 'e';
 }
 ipos = convert(intpart, iconvert, sizeof(iconvert), 10, 0);
 if (fracpart != 0)
  fpos = convert(fracpart, fconvert, sizeof(fconvert), 10, 0);
 leadfraczeros = precision - fpos;
 if (omitzeros) {
  if (fpos > 0)
   while (omitcount < fpos && fconvert[omitcount] == '0')
    omitcount++;
  else {
   omitcount = precision;
   leadfraczeros = 0;
  }
  precision -= omitcount;
 }
 if (precision > 0 || flags & (1 << 3))
  emitpoint = 1;
 if (separators)
  separators = getnumsep(ipos);
 padlen = width
     - ipos
     - epos
     - precision
     - separators
     - (emitpoint ? 1 : 0)
     - ((sign != 0) ? 1 : 0);
 if (padlen < 0)
  padlen = 0;
 if (flags & (1 << 0))
  padlen = -padlen;
 else if (flags & (1 << 4) && padlen > 0) {
  if (sign != 0) {
   do { if (*len + 1 < size) str[*len] = sign; (*len)++; } while ( 0);
   sign = 0;
  }
  while (padlen > 0) {
   do { if (*len + 1 < size) str[*len] = '0'; (*len)++; } while ( 0);
   padlen--;
  }
 }
 while (padlen > 0) {
  do { if (*len + 1 < size) str[*len] = ' '; (*len)++; } while ( 0);
  padlen--;
 }
 if (sign != 0)
  do { if (*len + 1 < size) str[*len] = sign; (*len)++; } while ( 0);
 while (ipos > 0) {
  ipos--;
  do { if (*len + 1 < size) str[*len] = iconvert[ipos]; (*len)++; } while ( 0);
  if (separators > 0 && ipos > 0 && ipos % 3 == 0)
   printsep(str, len, size);
 }
 if (emitpoint) {
   do { if (*len + 1 < size) str[*len] = '.'; (*len)++; } while ( 0);
 }
 while (leadfraczeros > 0) {
  do { if (*len + 1 < size) str[*len] = '0'; (*len)++; } while ( 0);
  leadfraczeros--;
 }
 while (fpos > omitcount) {
  fpos--;
  do { if (*len + 1 < size) str[*len] = fconvert[fpos]; (*len)++; } while ( 0);
 }
 while (epos > 0) {
  epos--;
  do { if (*len + 1 < size) str[*len] = econvert[epos]; (*len)++; } while ( 0);
 }
 while (padlen < 0) {
  do { if (*len + 1 < size) str[*len] = ' '; (*len)++; } while ( 0);
  padlen++;
 }
}
static void
printsep(char *str, size_t *len, size_t size)
{
  do { if (*len + 1 < size) str[*len] = ','; (*len)++; } while ( 0);
}
static int
getnumsep(int digits)
{
 int separators = (digits - ((digits % 3 == 0) ? 1 : 0)) / 3;
 return separators;
}
static int
getexponent(double value)
{
 double tmp = (value >= 0.0) ? value : -value;
 int exponent = 0;
 while (tmp < 1.0 && tmp > 0.0 && --exponent > -99)
  tmp *= 10;
 while (tmp >= 10.0 && ++exponent < 99)
  tmp /= 10;
 return exponent;
}
static int
convert(unsigned long int value, char *buf, size_t size, int base, int caps)
{
 const char *digits = caps ? "0123456789ABCDEF" : "0123456789abcdef";
 size_t pos = 0;
 do {
  buf[pos++] = digits[value % base];
  value /= base;
 } while (value != 0 && pos < size);
 return (int)pos;
}
static unsigned long int
cast(double value)
{
 unsigned long int result;
 if (value >= (9223372036854775807L *2UL+1UL))
  return (9223372036854775807L *2UL+1UL);
 result = value;
 return (result <= value) ? result : result - 1;
}
static unsigned long int
myround(double value)
{
 unsigned long int intpart = cast(value);
 return ((value -= intpart) < 0.5) ? intpart : intpart + 1;
}
static double
mypow10(int exponent)
{
 double result = 1;
 while (exponent > 0) {
  result *= 10;
  exponent--;
 }
 while (exponent < 0) {
  result /= 10;
  exponent++;
 }
 return result;
}
void *
mymemcpy(void *dst, void *src, size_t len)
{
 const char *from = src;
 char *to = dst;
 while (len-- > 0)
  *to++ = *from++;
 return dst;
}
int
rpl_vasprintf(char **ret, const char *format, va_list ap)
{
 size_t size;
 int len;
 va_list aq;
 (void)mymemcpy(&aq, &ap, sizeof(va_list));
 len = vsnprintf(((void*)0), 0, format, aq);
                ;
 if (len < 0 || (*ret = malloc(size = len + 1)) == ((void*)0))
  return -1;
 return vsnprintf(*ret, size, format, ap);
}
int
rpl_snprintf(char *str, size_t size, const char *format, ...)
{
 va_list ap;
 int len;
 __builtin_va_start(ap, format);
                          ;
                           ;
                                   ;
 len = vsnprintf(str, size, format, ap);
 __builtin_va_end(ap);
 return len;
}
int
rpl_asprintf(char **ret, const char *format, ...)
{
 va_list ap;
 int len;
 __builtin_va_start(ap, format);
                           ;
                                   ;
 len = vasprintf(ret, format, ap);
 __builtin_va_end(ap);
 return len;
}
static char errbuf[1024 * 4];
struct xoptContext {
 const xoptOption *options;
 long flags;
 const char *name;
 _Bool doubledash;
};
static void _xopt_set_err(const char **err, const char *const fmt, ...);
static _Bool _xopt_parse_arg(xoptContext *ctx, int argc, const char **argv,
  int *argi, void *data, const char **err);
static void _xopt_assert_increment(const char ***extras, int extrasCount,
  size_t *extrasCapac, const char **err);
static int _xopt_get_size(const char *arg);
static int _xopt_get_arg(const char *arg, size_t len, const xoptOption *options,
  int size, const xoptOption **option);
static void _xopt_set(void *data, const xoptOption *option, const char *val,
  _Bool longArg, const char **err);
static void _xopt_default_callback(const char *value, void *data,
  const xoptOption *option, _Bool longArg, const char **err);
xoptContext* xopt_context(const char *name, const xoptOption *options, long flags,
  const char **err) {
 xoptContext* ctx;
 *err = 0;
 ctx = malloc(sizeof(xoptContext));
 if (!ctx) {
  ctx = 0;
  _xopt_set_err(err, "could not allocate context");
 } else {
  ctx->options = options;
  ctx->flags = flags;
  ctx->name = name;
  ctx->doubledash = 0;
 }
 return ctx;
}
int xopt_parse(xoptContext *ctx, int argc, const char **argv, void* data,
  const char ***inextras, const char **err) {
 int argi;
 int extrasCount;
 size_t extrasCapac;
 const char **extras;
 _Bool parseResult;
 *err = 0;
 argi = 0;
 extrasCount = 0;
 extrasCapac = 10;
 extras = malloc(sizeof(*extras) * 10);
 if (!extras) {
  _xopt_set_err(err, "could not allocate extras array");
  goto end;
 }
 if (!(ctx->flags & XOPT_CTX_KEEPFIRST)) {
  ++argi;
 }
 for (; argi < argc; argi++) {
  parseResult = _xopt_parse_arg(ctx, argc, argv, &argi, data, err);
  if (*err) {
   break;
  }
  if (parseResult) {
   _xopt_assert_increment(&extras, extrasCount, &extrasCapac, err);
   if (*err) {
    break;
   }
   extras[extrasCount++] = argv[argi];
  } else {
   if ((ctx->flags & XOPT_CTX_POSIXMEHARDER) && extrasCount) {
    _xopt_set_err(err, "options cannot be specified after arguments: %s",
      argv[argi]);
    break;
   }
  }
 }
end:
 if (!*err) {
  _xopt_assert_increment(&extras, extrasCount, &extrasCapac, err);
  if (!*err) {
   extras[extrasCount] = 0;
  }
 }
 if (*err) {
  free(extras);
  *inextras = 0;
  return 0;
 }
 *inextras = extras;
 return extrasCount;
}
void xopt_autohelp(xoptContext *ctx, FILE *stream, const xoptAutohelpOptions *options,
  const char **err) {
 const xoptOption *o;
 size_t i, width = 0, twidth;
 const char *nl = "";
 size_t spacer = options ? options->spacer : 2;
 *err = 0;
 if (options && options->usage) {
  fprintf(stream, "%s%s\n", nl, options->usage);
  nl = "\n";
 }
 if (options && options->prefix) {
  fprintf(stream, "%s%s\n\n", nl, options->prefix);
  nl = "\n";
 }
 for (i = 0; ctx->options[i].longArg || ctx->options[i].shortArg; i++) {
  o = &ctx->options[i];
  twidth = 0;
  if (o->longArg) {
   twidth += 2 + strlen(o->longArg);
   if (o->argDescrip) {
    twidth += 1 + strlen(o->argDescrip);
   }
  }
  if (ctx->options[i].shortArg) {
   twidth += 2;
  }
  if (ctx->options[i].shortArg && ctx->options[i].longArg) {
   twidth += 2;
  }
  width = width > twidth ? width : twidth;
 }
 for (i = 0; ctx->options[i].longArg || ctx->options[i].shortArg; i++) {
  o = &ctx->options[i];
  twidth = 0;
  if (o->shortArg) {
   fprintf(stream, "-%c", o->shortArg);
   twidth += 2;
  }
  if (o->shortArg && o->longArg) {
   fprintf(stream, ", ");
   twidth += 2;
  }
  if (o->longArg) {
   fprintf(stream, "--%s", o->longArg);
   twidth += 2 + strlen(o->longArg);
   if (o->argDescrip) {
    fprintf(stream, "=%s", o->argDescrip);
    twidth += 1 + strlen(o->argDescrip);
   }
  }
  if (o->descrip) {
   for (; twidth < (width + spacer); twidth++) {
    fprintf(stream, " ");
   }
   fprintf(stream, "%s\n", o->descrip);
  }
 }
 if (options && options->suffix) {
  fprintf(stream, "%s%s\n", nl, options->suffix);
 }
}
static void _xopt_set_err(const char **err, const char *const fmt, ...) {
 va_list list;
 __builtin_va_start(list, fmt);
 rpl_vsnprintf(&errbuf[0], 1024 * 4, fmt, list);
 __builtin_va_end(list);
 *err = &errbuf[0];
}
static _Bool _xopt_parse_arg(xoptContext *ctx, int argc, const char **argv,
  int *argi, void *data, const char **err) {
 int size;
 size_t length;
 _Bool isExtra = 0;
 const char* arg = argv[*argi];
 if (ctx->doubledash) {
  return 1;
 }
 size = _xopt_get_size(arg);
 arg += size;
 length = strlen(arg);
 if (size == 1 && length == 0) {
  return 1;
 }
 if (size == 2 && length == 0) {
  ctx->doubledash = 1;
  return 0;
 }
 switch (size) {
  const xoptOption *option;
  int argRequirement;
  char *valStart;
 case 1:
  if (length > 1 && ctx->flags & XOPT_CTX_NOCONDENSE) {
   _xopt_set_err(err, "short options cannot be combined: %s", argv[*argi]);
  } else if (length > 1 && ctx->flags & XOPT_CTX_SLOPPYSHORTS) {
   argRequirement = _xopt_get_arg(arg, 1, ctx->options, size, &option);
   if (!option) {
    if (ctx->flags & XOPT_CTX_STRICT) {
     _xopt_set_err(err, "invalid option: -%c", arg[0]);
    }
    break;
   }
   if (!argRequirement) {
    _xopt_set_err(err, "option doesn't take a value: -%c", arg[0]);
    break;
   }
   _xopt_set(data, option, arg + 1, 0, err);
   if (*err) {
    break;
   }
  } else {
   while (length--) {
    argRequirement = _xopt_get_arg(arg++, 1, ctx->options, size, &option);
    if (!option) {
     if (ctx->flags & XOPT_CTX_STRICT) {
      _xopt_set_err(err, "invalid option: -%c", arg[-1]);
     }
     break;
    }
    switch (argRequirement) {
    case 0:
     _xopt_set(data, option, 0, 0, err);
     break;
    case 1:
     if (*argi + 1 < argc && _xopt_get_size(argv[*argi + 1]) == 0) {
      _xopt_set(data, option, argv[++*argi], 0, err);
     } else {
      _xopt_set(data, option, 0, 0, err);
     }
     break;
    case 2:
     if (length == 0) {
      if (*argi + 1 < argc) {
       if (_xopt_get_size(argv[*argi + 1])) {
        _xopt_set_err(err, "missing option value: -%c",
          option->shortArg);
       } else {
        _xopt_set(data, option, argv[++*argi], 0, err);
       }
      } else {
       _xopt_set_err(err, "missing option value: -%c",
         option->shortArg);
      }
     } else {
      _xopt_set_err(err, "combined short option requiring value is "
        "not last: -%c", option->shortArg);
     }
     break;
    }
   }
  }
  break;
 case 2:
  valStart = strchr(arg, '=');
  if (valStart) {
   length = valStart++ - arg;
   if (!*valStart) {
    valStart = 0;
   }
  }
  argRequirement = _xopt_get_arg(arg, length, ctx->options, size, &option);
  if (!option) {
   _xopt_set_err(err, "invalid option: --%.*s", length, arg);
  } else {
   switch (argRequirement) {
   case 0:
    if (valStart) {
     _xopt_set_err(err, "option doesn't take a value: --%s", arg);
    }
    _xopt_set(data, option, valStart, 1, err);
    break;
   case 2:
    if (!valStart) {
     _xopt_set_err(err, "missing option value: --%s", arg);
    }
    break;
   }
   if (!*err) {
    _xopt_set(data, option, valStart, 1, err);
   }
  }
  break;
 case 0:
  isExtra = 1;
  break;
 }
 return isExtra;
}
static void _xopt_assert_increment(const char ***extras, int extrasCount,
  size_t *extrasCapac, const char **err) {
 if ((size_t) extrasCount == *extrasCapac) {
  *extrasCapac += 10;
  *extras = realloc(*extras, sizeof(**extras) * *extrasCapac);
  if (!*extras) {
   _xopt_set_err(err, "could not realloc arguments array");
  }
 }
}
static int _xopt_get_size(const char *arg) {
 int size;
 for (size = 0; size < 2; size++) {
  if (arg[size] != '-') {
   break;
  }
 }
 return size;
}
static int _xopt_get_arg(const char *arg, size_t len, const xoptOption *options,
  int size, const xoptOption **option) {
 *option = 0;
 for (; options[0].longArg || options[0].shortArg; options++) {
  if (size == 1 && options[0].shortArg == arg[0]) {
   *option = options;
   break;
  } else if (strlen(options[0].longArg) == len &&
    !strncmp(options[0].longArg, arg, len)) {
   *option = options;
   break;
  }
 }
 if (!*option || (*option)->options & XOPT_TYPE_BOOL) {
  return 0;
 } else if ((*option)->options & XOPT_OPTIONAL) {
  return 1;
 } else {
  return 2;
 }
}
static void _xopt_set(void *data, const xoptOption *option, const char *val,
  _Bool longArg, const char **err) {
 xoptCallback callback = option->callback ? option->callback : &_xopt_default_callback;
 callback(val, data, option, longArg, err);
}
static void _xopt_default_callback(const char *value, void *data,
  const xoptOption *option, _Bool longArg, const char **err) {
 void *target;
 char *parsePtr = 0;
 if ((!value || !strlen(value)) && !(option->options & XOPT_TYPE_BOOL)) {
  return;
 }
 target = ((char*) data) + option->offset;
 switch (option->options & 0x3F) {
 case XOPT_TYPE_BOOL:
  *((_Bool*) target) = 1;
  break;
 case XOPT_TYPE_STRING:
  *((const char**) target) = value;
  break;
 case XOPT_TYPE_INT:
  *((int*) target) = (int) strtol(value, &parsePtr, 0);
  break;
 case XOPT_TYPE_LONG:
  *((long*) target) = strtol(value, &parsePtr, 0);
  break;
 case XOPT_TYPE_FLOAT:
  *((float*) target) = (float) strtod(value, &parsePtr);
  break;
 case XOPT_TYPE_DOUBLE:
  *((double*) target) = strtod(value, &parsePtr);
  break;
 default:
  fprintf(stderr, "warning: XOpt argument type invalid: %ld\n",
   option->options & 0x2F);
  break;
 }
 if (parsePtr && *parsePtr) {
  if (longArg) {
   _xopt_set_err(err, "value isn't a valid number: --%s=%s",
     (void*) option->longArg, value);
  } else {
   _xopt_set_err(err, "value isn't a valid number: -%c %s",
     option->shortArg, value);
  }
 }
}

