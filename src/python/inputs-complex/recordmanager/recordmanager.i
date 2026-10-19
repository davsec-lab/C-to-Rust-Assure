typedef long unsigned int size_t;
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

typedef int RC;
extern char *RC_message;
extern void printError (RC error);
extern char *errorMessage (RC error);
 typedef short bool;
typedef enum ReplacementStrategy {
 RS_FIFO = 0,
 RS_LRU = 1,
 RS_CLOCK = 2,
 RS_LFU = 3,
 RS_LRU_K = 4
} ReplacementStrategy;
typedef int PageNumber;
typedef struct BM_BufferPool {
 char *pageFile;
 int numPages;
 ReplacementStrategy strategy;
 void *mgmtData;
} BM_BufferPool;
typedef struct BM_PageHandle {
 PageNumber pageNum;
 char *data;
} BM_PageHandle;
RC initBufferPool(BM_BufferPool *const bm, const char *const pageFileName,
  const int numPages, ReplacementStrategy strategy,
  void *stratData);
RC shutdownBufferPool(BM_BufferPool *const bm);
RC forceFlushPool(BM_BufferPool *const bm);
RC markDirty (BM_BufferPool *const bm, BM_PageHandle *const page);
RC unpinPage (BM_BufferPool *const bm, BM_PageHandle *const page);
RC forcePage (BM_BufferPool *const bm, BM_PageHandle *const page);
RC pinPage (BM_BufferPool *const bm, BM_PageHandle *const page,
  const PageNumber pageNum);
PageNumber *getFrameContents (BM_BufferPool *const bm);
bool *getDirtyFlags (BM_BufferPool *const bm);
int *getFixCounts (BM_BufferPool *const bm);
int getNumReadIO (BM_BufferPool *const bm);
int getNumWriteIO (BM_BufferPool *const bm);
typedef struct SM_FileHandle {
 char *fileName;
 int totalNumPages;
 int curPagePos;
 void *mgmtInfo;
} SM_FileHandle;
typedef char* SM_PageHandle;
extern void initStorageManager (void);
extern RC createPageFile (char *fileName);
extern RC openPageFile (char *fileName, SM_FileHandle *fHandle);
extern RC closePageFile (SM_FileHandle *fHandle);
extern RC destroyPageFile (char *fileName);
extern RC readBlock (int pageNum, SM_FileHandle *fHandle, SM_PageHandle memPage);
extern int getBlockPos (SM_FileHandle *fHandle);
extern RC readFirstBlock (SM_FileHandle *fHandle, SM_PageHandle memPage);
extern RC readPreviousBlock (SM_FileHandle *fHandle, SM_PageHandle memPage);
extern RC readCurrentBlock (SM_FileHandle *fHandle, SM_PageHandle memPage);
extern RC readNextBlock (SM_FileHandle *fHandle, SM_PageHandle memPage);
extern RC readLastBlock (SM_FileHandle *fHandle, SM_PageHandle memPage);
extern RC writeBlock (int pageNum, SM_FileHandle *fHandle, SM_PageHandle memPage);
extern RC writeCurrentBlock (SM_FileHandle *fHandle, SM_PageHandle memPage);
extern RC appendEmptyBlock (SM_FileHandle *fHandle);
extern RC ensureCapacity (int numberOfPages, SM_FileHandle *fHandle);
typedef struct Bufferpool
{
     int numRead;
     int numWrite;
     int totalPages;
     int updatedStrategy;
     int free_space;
     int *updatedOrder;
     bool *bitdirty;
     int *fix_count;
     int *accessTime;
     int *pagenum;
     char *pagedata;
     SM_FileHandle fhl;
}Bufferpool;
bool pageFound = 0;
static RC writeDirtyPages(BM_BufferPool *const bm);
static RC freeBufferPoolMemory(BM_BufferPool *const bm);
static void ShiftUpdatedOrder(int start, int end, Bufferpool *bp, int newPageNum);
static void UpdateBufferPoolStats(Bufferpool *bp, int memoryAddress, int pageNum);
RC initBufferPool(BM_BufferPool *const bm, const char *const pageFileName, const int numPages, ReplacementStrategy strategy, void *stratData) {
    SM_FileHandle fh;
    Bufferpool *bp;
    int rcode, i;
    rcode = openPageFile((char *)pageFileName, &fh);
    if (rcode != 0) {
        return rcode;
    }
    bp = (Bufferpool *)calloc(1, sizeof(Bufferpool));
    if (!bp) {
        return 401;
    }
    bp->totalPages = numPages;
    bp->pagedata = (char *)calloc(numPages * 4096, sizeof(char));
    bp->numRead = 0;
    bp->numWrite = 0;
    bp->updatedOrder = (int *)calloc(numPages, sizeof(int));
    bp->bitdirty = (bool *)calloc(numPages, sizeof(bool));
    bp->free_space = numPages;
    bp->fhl = fh;
    bp->pagenum = (int *)calloc(numPages, sizeof(int));
    int arraySize = numPages * sizeof(int);
    bool boolArraySize = numPages * sizeof(bool);
    bp->fix_count = (int *)calloc(numPages, sizeof(int));
    bp->updatedStrategy = strategy;
    for (i = 0; i < numPages; i++) {
        bp->bitdirty[i] = 0;
    }
    for (i = 0; i < numPages; i++) {
      bp->fix_count[i] = 0;
    }
    for (i = 0; i < numPages; i++) {
        bp->pagenum[i] = -1;
    }
    for (i = 0; i < numPages; i++) {
        bp->updatedOrder[i] = -1;
    }
    if (bm != ((void*)0)) {
        if (pageFileName != ((void*)0)) {
            bm->pageFile = strdup(pageFileName);
        } else {
            bm->pageFile = ((void*)0);
        }
        bm->numPages = numPages;
        bm->strategy = strategy;
        bm->mgmtData = bp;
        if (bp != ((void*)0)) {
        }
        }
        return 0;
    }
RC shutdownBufferPool(BM_BufferPool *const bm) {
    Bufferpool *bpl = bm->mgmtData;
    for (int i = 0; i < bpl->totalPages; i++) {
        if (bpl->fix_count[i] != 0) {
            return 402;
        }
    }
    RC rc = writeDirtyPages(bm);
    if (rc != 0) {
        return rc;
    }
    if (closePageFile(&bpl->fhl) != 0) {
        return 403;
    }
    freeBufferPoolMemory(bm);
    return 0;
}
    static RC writeDirtyPages(BM_BufferPool *const bm) {
        Bufferpool *bpl = bm->mgmtData;
        for (int j = 0; j < bpl->totalPages; j++) {
            if (bpl->bitdirty[j]) {
                int record_pointer = j * 4096;
                RC rc = ensureCapacity(bpl->pagenum[j] + 1, &bpl->fhl);
                if (rc != 0) {
                    return rc;
                }
                rc = writeBlock(bpl->pagenum[j], &bpl->fhl, (bpl->pagedata + record_pointer));
                if (rc != 0) {
                    return 3;
                }
                bpl->numWrite++;
            }
        }
        return 0;
    }
    static RC freeBufferPoolMemory(BM_BufferPool *const bm)
            {
        if (bm != ((void*)0)) {
            Bufferpool *bpl = bm->mgmtData;
            if (bpl != ((void*)0)) {
                if (bpl->updatedOrder != ((void*)0)) {
                    free(bpl->updatedOrder);
                    bpl->updatedOrder = ((void*)0);
                }
                if (bpl->pagenum != ((void*)0)) {
                    free(bpl->pagenum);
                    bpl->pagenum = ((void*)0);
                }
                if (bpl->bitdirty != ((void*)0)) {
                    free(bpl->bitdirty);
                    bpl->bitdirty = ((void*)0);
                }
                if (bpl->fix_count != ((void*)0)) {
                    free(bpl->fix_count);
                    bpl->fix_count = ((void*)0);
                }
                if (bpl->pagedata != ((void*)0)) {
                    free(bpl->pagedata);
                    bpl->pagedata = ((void*)0);
                }
                free(bpl);
                bm->mgmtData = ((void*)0);
            } else {
            }
            return 0;
        } else {
            return 404;
        }
        return 0;
}
    RC forceFlushPool(BM_BufferPool *const bm) {
        Bufferpool *bpl;
        int rcode = 0;
        bpl = bm->mgmtData;
        for (int i = 0; bpl != ((void*)0) && i < bpl->totalPages; i++) {
                if (bpl->fix_count[i] == 0 && bpl->bitdirty[i] == 1) {
                FILE *file = fopen(bpl->fhl.fileName, "r+");
                fseek(file, 0, 2);
                long fileSize = ftell(file);
                long requiredSize = (bpl->pagenum[i] + 1) * 4096;
                if (fileSize < requiredSize) {
                    fseek(file, requiredSize - 1, 0);
                    fputc('\0', file);
                }
                fclose(file);
                file = fopen(bpl->fhl.fileName, "r+");
                if (file == ((void*)0)) {
                    rcode = 3;
                    break;
                }
                int record_pointer = i * 4096;
                fseek(file, bpl->pagenum[i] * 4096, 0);
                if (fwrite(bpl->pagedata + record_pointer, sizeof(char), 4096, file) != 4096) {
                    rcode = 3;
                    fclose(file);
                    break;
                }
                if (file != ((void*)0)) {
                    fclose(file);
                    file = ((void*)0);
                }
                if (bpl != ((void*)0)) {
                    if (i >= 0) {
                       if (bpl != ((void*)0)) {
                        *(bpl->bitdirty + i) = 0;
                        (*bpl).numWrite++;
                    }
                    }
                }
            }
        }
        return rcode;
    }
RC pinPage (BM_BufferPool *const bm, BM_PageHandle *const page,
            const PageNumber pageNum)
    {
        Bufferpool *buffer_pool;
        bool void_page=0;
        bool foundedPage=0;
        bool UpdatedStra_found=0;
        int read_code;
        int record_pointer;
        int memory_address;
        int swap_location;
        SM_PageHandle page_handle;
        buffer_pool=bm->mgmtData;
        buffer_pool = bm->mgmtData;
        void_page = (buffer_pool->free_space == buffer_pool->totalPages) ? 1 : void_page;
       if (!void_page) {
        int totalPages = buffer_pool->totalPages - buffer_pool->free_space;
        for (int i = 0; i < totalPages; i++) {
            if (buffer_pool->pagenum[i] == pageNum) {
                page->pageNum = pageNum;
                int memory_address = i;
                buffer_pool->fix_count[memory_address]++;
                page->data = &buffer_pool->pagedata[memory_address * 4096];
                foundedPage = 1;
                if (buffer_pool->updatedStrategy == RS_LRU) {
                        int lastPosition = buffer_pool->totalPages - buffer_pool->free_space - 1;
                        swap_location = -1;
                        for (int j = 0; j <= lastPosition; j++)
                            if (buffer_pool->updatedOrder[j] != pageNum) {
                                if (j == buffer_pool->totalPages - 1) {
                                    swap_location = -1;
                                }
                             } else {
                                swap_location = j;
                                break;
                            }
                            if (swap_location != -1) {
                                memmove(&buffer_pool->updatedOrder[swap_location], &buffer_pool->updatedOrder[swap_location + 1], (lastPosition - swap_location) * sizeof(buffer_pool->updatedOrder[0]));
                                buffer_pool->updatedOrder[lastPosition] = pageNum;
                            }
                    }
                                else {
                                    int unutilized = 0;
                                    do {
                                    } while (++unutilized < 1);
                            }
                return 0;
            }
            }
        }
        if ((void_page == 1 && buffer_pool != ((void*)0) && (1 == 1)) ||
        ((foundedPage != 1 && foundedPage == 0) && buffer_pool->free_space > 0 &&
        buffer_pool->free_space <= buffer_pool->totalPages && buffer_pool->free_space == buffer_pool->free_space &&
        (buffer_pool->free_space != -1 && buffer_pool->totalPages != -1) &&
        (buffer_pool->free_space >= 0 && buffer_pool->totalPages >= buffer_pool->free_space) &&
        ((buffer_pool->free_space + 1) > 1) && ((buffer_pool->totalPages - buffer_pool->free_space) >= 0)))
            {
        page_handle = (SM_PageHandle)calloc(1, 4096);
        if (page_handle != ((void*)0)) {
            read_code = readBlock(pageNum, &buffer_pool->fhl, page_handle);
            if (read_code >= 0) {
                size_t total_used_pages = buffer_pool->totalPages - buffer_pool->free_space;
                memory_address = total_used_pages;
                if (memory_address >= 0 && memory_address <= buffer_pool->totalPages) {
                    size_t base_address = 0;
                    record_pointer = (memory_address * 4096) + base_address;
                }
            }
        }
                memcpy(buffer_pool->pagedata + record_pointer, page_handle, 4096);
                buffer_pool->free_space--;
                buffer_pool->updatedOrder[memory_address] = pageNum;
                buffer_pool->pagenum[memory_address] = pageNum;
                buffer_pool->numRead++;
                buffer_pool->fix_count[memory_address]++;
                buffer_pool->bitdirty[memory_address] = 0;
                page->pageNum = pageNum;
                page->data = &(buffer_pool->pagedata[record_pointer]);
                free(page_handle);
                return 0;
            }
            bool isPageNotFound = !foundedPage;
            bool isBufferPoolValid = buffer_pool != ((void*)0);
            bool isBufferPoolFull = buffer_pool->free_space == 0;
            if (isPageNotFound && isBufferPoolValid && isBufferPoolFull)
            {
            UpdatedStra_found = 0;
            page_handle = (SM_PageHandle) malloc(4096);
            if (page_handle != ((void*)0)) {
                memset(page_handle, 0, 4096);
            }
            read_code = readBlock(pageNum, &buffer_pool->fhl, page_handle);
            if (buffer_pool->updatedStrategy == RS_FIFO || buffer_pool->updatedStrategy == RS_LRU) {
                int i = 0, j = 0;
                do {
                    int swap_page = buffer_pool->updatedOrder[j];
                    i = 0;
                    do {
                        if (buffer_pool->pagenum[i] == swap_page && buffer_pool->fix_count[i] == 0) {
                            memory_address = i;
                            record_pointer = i * 4096;
                            if (buffer_pool->bitdirty[i]) {
                                read_code = ensureCapacity(buffer_pool->pagenum[i] + 1, &buffer_pool->fhl);
                                read_code = writeBlock(buffer_pool->pagenum[i], &buffer_pool->fhl, buffer_pool->pagedata + record_pointer);
                                buffer_pool->numWrite++;
                            }
                            swap_location = j;
                            UpdatedStra_found = 1;
                            break;
                        }
                        i++;
                    } while (i < buffer_pool->totalPages && !UpdatedStra_found);
                    j++;
                    if (UpdatedStra_found) break;
                } while (j < buffer_pool->totalPages);
            }
        }
         if (UpdatedStra_found == 0) {
            free(page_handle);
            return 405;
        } else {
            record_pointer = memory_address * 4096;
            int i = 0;
            if (i < 4096) {
                do {
                    buffer_pool->pagedata[i + record_pointer] = page_handle[i];
                    i++;
                } while (i < 4096);
            }
        }
        if (buffer_pool->updatedStrategy == RS_LRU || buffer_pool->updatedStrategy == RS_FIFO) {
            ShiftUpdatedOrder(swap_location, buffer_pool->totalPages - 1, buffer_pool, pageNum);
        }
        UpdateBufferPoolStats(buffer_pool, memory_address, pageNum);
        page->pageNum = pageNum;
        page->data = buffer_pool->pagedata + record_pointer;
        free(page_handle);
        return 0;
}
static void ShiftUpdatedOrder(int start, int end, Bufferpool *bp, int newPageNum) {
    for (int i = start; i < end; i++) {
        bp->updatedOrder[i] = bp->updatedOrder[i + 1];
    }
    bp->updatedOrder[end] = newPageNum;
}
static void UpdateBufferPoolStats(Bufferpool *bp, int memoryAddress, int pageNum) {
    bp->pagenum[memoryAddress] = pageNum;
    bp->numRead += 1;
    bp->fix_count[memoryAddress] += 1;
    bp->bitdirty[memoryAddress] = 0;
}
RC unpinPage(BM_BufferPool *const bm, BM_PageHandle *const page) {
    Bufferpool *bufferPool = bm->mgmtData;
    int SearchResultIndex = -1;
    for (int i = 0; i < bufferPool->totalPages; i++) {
        if (bufferPool->pagenum[i] == page->pageNum) {
            SearchResultIndex = i;
            break;
        }
    }
    if (SearchResultIndex != -1) {
        if (bufferPool->fix_count[SearchResultIndex] > 0) {
            bufferPool->fix_count[SearchResultIndex]--;
        }
    }
    return 0;
}
RC markDirty(BM_BufferPool *const bm, BM_PageHandle *const page) {
    Bufferpool *bpl;
    int markedCount = 0;
    bpl = bm->mgmtData;
    for (int i = 0; i < bpl->totalPages; i++) {
        if (bpl->pagenum[i] == page->pageNum) {
            if (bpl->bitdirty[i] != 1) {
                bpl->bitdirty[i] = 1;
                markedCount++;
            }
            break;
        }
    }
    return 0;
}
RC forcePage(BM_BufferPool *const bm, BM_PageHandle *const page) {
    Bufferpool *bpl;
    bpl = bm->mgmtData;
    for(int i = 0; i < bpl->totalPages; i++) {
        if(bpl->pagenum[i] == page->pageNum) {
            int record_pointer = i * 4096;
            printf("Simulated writing of page %d to disk at position %d.\n", page->pageNum, record_pointer);
            bpl->bitdirty[i] = 0;
            bpl->numWrite++;
            pageFound = 1;
            break;
        }
    }
    if (pageFound) {
        return 0;
    } else {
        printf("Page %d not found in buffer pool.\n", page->pageNum);
        return 3;
    }
}
int *getFixCounts (BM_BufferPool *const bm) {
    if (bm == ((void*)0)) {
        printf("Buffer pool pointer is null.\n");
        return ((void*)0);
    }
    Bufferpool *bpl;
    bpl = bm->mgmtData;
    if (bpl == ((void*)0)) {
        printf("Management data is null.\n");
        return ((void*)0);
    }
    if (bpl->free_space == bpl->totalPages) {
        static int noFixes = 0;
        printf("All pages are available. No fixes are present.\n");
        return &noFixes;
    } else {
        printf("Returning fix counts for pages in use.\n");
        return bpl->fix_count;
    }
}
int getNumReadIO (BM_BufferPool *const bm)
{
    if (bm == ((void*)0)) {
        return 0;
    }
    Bufferpool *bpl;
    bpl = bm->mgmtData;
    if (bpl == ((void*)0)) {
        return 0;
    }
    int readCount = bpl->numRead;
    return readCount;
}
int getNumWriteIO(BM_BufferPool *const bm) {
    if (bm == ((void*)0)) {
        return 0;
    } else {
        Bufferpool *bpl;
        bpl = bm->mgmtData;
        if (bpl == ((void*)0)) {
            return 0;
        } else {
            int writeCount = bpl->numWrite;
            return writeCount;
        }
    }
}
PageNumber *getFrameContents(BM_BufferPool *const bm)
{
    Bufferpool *bpl;
    bpl = bm->mgmtData;
    bool isFull = (bpl->free_space == bpl->totalPages);
    PageNumber *result = ((void*)0);
    if (isFull)
    {
        result = 0;
    }
    else
    {
        result = bpl->pagenum;
    }
    if (result != ((void*)0))
    {
        return result;
    }
    else
    {
        return 0;
    }
}
bool *getDirtyFlags(BM_BufferPool *const bm)
{
    if (bm == ((void*)0)) {
        return ((void*)0);
    }
    Bufferpool *bpl;
    bpl = bm->mgmtData;
    if (bpl == ((void*)0)) {
        return ((void*)0);
    }
    bool *dirtyFlags = bpl->bitdirty;
    if (dirtyFlags == ((void*)0)) {
        return ((void*)0);
    }
    return dirtyFlags;
}
void printPoolContent (BM_BufferPool *const bm);
void printPageContent (BM_PageHandle *const page);
char *sprintPoolContent (BM_BufferPool *const bm);
char *sprintPageContent (BM_PageHandle *const page);
static void printStrat (BM_BufferPool *const bm);
void
printPoolContent (BM_BufferPool *const bm)
{
 PageNumber *frameContent;
 bool *dirty;
 int *fixCount;
 int i;
 frameContent = getFrameContents(bm);
 dirty = getDirtyFlags(bm);
 fixCount = getFixCounts(bm);
 printf("{");
 printStrat(bm);
 printf(" %i}: ", bm->numPages);
 for (i = 0; i < bm->numPages; i++)
  printf("%s[%i%s%i]", ((i == 0) ? "" : ",") , frameContent[i], (dirty[i] ? "x": " "), fixCount[i]);
 printf("\n");
}
char *
sprintPoolContent (BM_BufferPool *const bm)
{
 PageNumber *frameContent;
 bool *dirty;
 int *fixCount;
 int i;
 char *message;
 int pos = 0;
 message = (char *) malloc(256 + (22 * bm->numPages));
 frameContent = getFrameContents(bm);
 dirty = getDirtyFlags(bm);
 fixCount = getFixCounts(bm);
 for (i = 0; i < bm->numPages; i++)
  pos += sprintf(message + pos, "%s[%i%s%i]", ((i == 0) ? "" : ",") , frameContent[i], (dirty[i] ? "x": " "), fixCount[i]);
 return message;
}
void
printPageContent (BM_PageHandle *const page)
{
 int i;
 printf("[Page %i]\n", page->pageNum);
 for (i = 1; i <= 4096; i++)
  printf("%02X%s%s", page->data[i], (i % 8) ? "" : " ", (i % 64) ? "" : "\n");
}
char *
sprintPageContent (BM_PageHandle *const page)
{
 int i;
 char *message;
 int pos = 0;
 message = (char *) malloc(30 + (2 * 4096) + (4096 % 64) + (4096 % 8));
 pos += sprintf(message + pos, "[Page %i]\n", page->pageNum);
 for (i = 1; i <= 4096; i++)
  pos += sprintf(message + pos, "%02X%s%s", page->data[i], (i % 8) ? "" : " ", (i % 64) ? "" : "\n");
 return message;
}
void
printStrat (BM_BufferPool *const bm)
{
 switch (bm->strategy)
 {
 case RS_FIFO:
  printf("FIFO");
  break;
 case RS_LRU:
  printf("LRU");
  break;
 case RS_CLOCK:
  printf("CLOCK");
  break;
 case RS_LFU:
  printf("LFU");
  break;
 case RS_LRU_K:
  printf("LRU-K");
  break;
 default:
  printf("%i", bm->strategy);
  break;
 }
}
char *RC_message;
void
printError (RC error)
{
 if (RC_message != ((void*)0))
  printf("EC (%i), \"%s\"\n", error, RC_message);
 else
  printf("EC (%i)\n", error);
}
char *
errorMessage (RC error)
{
 char *message;
 if (RC_message != ((void*)0))
 {
  message = (char *) malloc(strlen(RC_message) + 30);
  sprintf(message, "EC (%i), \"%s\"\n", error, RC_message);
 }
 else
 {
  message = (char *) malloc(30);
  sprintf(message, "EC (%i)\n", error);
 }
 return message;
}
typedef enum DataType {
 DT_INT = 0,
 DT_STRING = 1,
 DT_FLOAT = 2,
 DT_BOOL = 3
} DataType;
typedef struct Value {
 DataType dt;
 union v {
  int intV;
  char *stringV;
  float floatV;
  bool boolV;
 } v;
} Value;
typedef struct RID {
 int page;
 int slot;
} RID;
typedef struct Record
{
 RID id;
 char *data;
} Record;
typedef struct Schema
{
 int numAttr;
 char **attrNames;
 DataType *dataTypes;
 int *typeLength;
 int *keyAttrs;
 int keySize;
} Schema;
typedef struct RM_TableData
{
 char *name;
 Schema *schema;
 void *mgmtData;
} RM_TableData;
extern Value *stringToValue (char *value);
extern char *serializeTableInfo(RM_TableData *rel);
extern char *serializeTableContent(RM_TableData *rel);
extern char *serializeSchema(Schema *schema);
extern char *serializeRecord(Record *record, Schema *schema);
extern char *serializeAttr(Record *record, Schema *schema, int attrNum);
extern char *serializeValue(Value *val);
typedef enum ExprType {
  EXPR_OP,
  EXPR_CONST,
  EXPR_ATTRREF
} ExprType;
typedef struct Expr {
  ExprType type;
  union expr {
    Value *cons;
    int attrRef;
    struct Operator *op;
  } expr;
} Expr;
typedef enum OpType {
  OP_BOOL_AND,
  OP_BOOL_OR,
  OP_BOOL_NOT,
  OP_COMP_EQUAL,
  OP_COMP_SMALLER
} OpType;
typedef struct Operator {
  OpType type;
  Expr **args;
} Operator;
extern RC valueEquals (Value *left, Value *right, Value *result);
extern RC valueSmaller (Value *left, Value *right, Value *result);
extern RC boolNot (Value *input, Value *result);
extern RC boolAnd (Value *left, Value *right, Value *result);
extern RC boolOr (Value *left, Value *right, Value *result);
extern RC evalExpr (Record *record, Schema *schema, Expr *expr, Value **result);
extern RC freeExpr (Expr *expr);
extern void freeVal(Value *val);
typedef struct RM_ScanHandle
{
 RM_TableData *rel;
 void *mgmtData;
} RM_ScanHandle;
typedef struct TableManager
{
     int totalTuples;
     int recSize;
     int firstFreePageNum;
     int firstFreeSlotNum;
     int firstDataPageNum;
     BM_BufferPool *bufferManagerPtr;
     BM_PageHandle *pageHandlePtr;
}TableManager;
typedef struct PageHeader
{
    char pageIdentifier;
    int totalTuples;
    int freeSlotCnt;
    int nextFreeSlotInd;
    int prevFreePageIndex;
    int nextFreePageIndex;
    int prevDataPageIndex;
    int nextDataPageIndex;
}PageHeader;
typedef struct ScanManager
{
     int totalEntries;
     int scanIndex;
     int currentPageNum;
     int currentSlotNum;
     Expr *conditionExpression;
     BM_PageHandle *scanPageHandlePtr;
}ScanManager;
extern RC initRecordManager (void *mgmtData);
extern RC shutdownRecordManager ();
extern RC createTable (char *name, Schema *schema);
extern RC openTable (RM_TableData *rel, char *name);
extern RC closeTable (RM_TableData *rel);
extern RC deleteTable (char *name);
extern int getNumTuples (RM_TableData *rel);
extern RC insertRecord (RM_TableData *rel, Record *record);
extern RC deleteRecord (RM_TableData *rel, RID id);
extern RC updateRecord (RM_TableData *rel, Record *record);
extern RC getRecord (RM_TableData *rel, RID id, Record *record);
extern RC startScan (RM_TableData *rel, RM_ScanHandle *scan, Expr *cond);
extern RC next (RM_ScanHandle *scan, Record *record);
extern RC closeScan (RM_ScanHandle *scan);
extern int getRecordSize (Schema *schema);
extern Schema *createSchema (int numAttr, char **attrNames, DataType *dataTypes, int *typeLength, int keySize, int *keys);
extern RC freeSchema (Schema *schema);
extern RC createRecord (Record **record, Schema *schema);
extern RC freeRecord (Record *record);
extern RC getAttr (Record *record, Schema *schema, int attrNum, Value **value);
extern RC setAttr (Record *record, Schema *schema, int attrNum, Value *value);
RC
valueEquals (Value *left, Value *right, Value *result)
{
 if(left->dt != right->dt)
  do { RC_message="equality comparison only supported for values of the same datatype"; return 200; } while (0);
 result->dt = DT_BOOL;
 switch(left->dt) {
 case DT_INT:
  result->v.boolV = (left->v.intV == right->v.intV);
  break;
 case DT_FLOAT:
  result->v.boolV = (left->v.floatV == right->v.floatV);
  break;
 case DT_BOOL:
  result->v.boolV = (left->v.boolV == right->v.boolV);
  break;
 case DT_STRING:
  result->v.boolV = (strcmp(left->v.stringV, right->v.stringV) == 0);
  break;
 }
 return 0;
}
RC
valueSmaller (Value *left, Value *right, Value *result)
{
 if(left->dt != right->dt)
  do { RC_message="equality comparison only supported for values of the same datatype"; return 200; } while (0);
 result->dt = DT_BOOL;
 switch(left->dt) {
 case DT_INT:
  result->v.boolV = (left->v.intV < right->v.intV);
  break;
 case DT_FLOAT:
  result->v.boolV = (left->v.floatV < right->v.floatV);
  break;
 case DT_BOOL:
  result->v.boolV = (left->v.boolV < right->v.boolV);
 case DT_STRING:
  result->v.boolV = (strcmp(left->v.stringV, right->v.stringV) < 0);
  break;
 }
 return 0;
}
RC
boolNot (Value *input, Value *result)
{
 if (input->dt != DT_BOOL)
  do { RC_message="boolean NOT requires boolean input"; return 202; } while (0);
 result->dt = DT_BOOL;
 result->v.boolV = !(input->v.boolV);
 return 0;
}
RC
boolAnd (Value *left, Value *right, Value *result)
{
 if (left->dt != DT_BOOL || right->dt != DT_BOOL)
  do { RC_message="boolean AND requires boolean inputs"; return 202; } while (0);
 result->v.boolV = (left->v.boolV && right->v.boolV);
 return 0;
}
RC
boolOr (Value *left, Value *right, Value *result)
{
 if (left->dt != DT_BOOL || right->dt != DT_BOOL)
  do { RC_message="boolean OR requires boolean inputs"; return 202; } while (0);
 result->v.boolV = (left->v.boolV || right->v.boolV);
 return 0;
}
RC
evalExpr (Record *record, Schema *schema, Expr *expr, Value **result)
{
 Value *lIn;
 Value *rIn;
 do { (*result) = (Value *) malloc(sizeof(Value)); (*result)->dt = DT_INT; switch(DT_INT) { case DT_INT: (*result)->v.intV = -1; break; case DT_FLOAT: (*result)->v.floatV = -1; break; case DT_BOOL: (*result)->v.boolV = -1; break; } } while(0);
 switch(expr->type)
 {
 case EXPR_OP:
 {
  Operator *op = expr->expr.op;
  bool twoArgs = (op->type != OP_BOOL_NOT);
  do { int rc_internal = (evalExpr(record, schema, op->args[0], &lIn)); if (rc_internal != 0) { char *message = errorMessage(rc_internal); printf("[%s-L%i-%s] ERROR: Operation returned error: %s\n","/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/expr.c", 108, "21:54:24", message); free(message); exit(1); } } while(0);;
  if (twoArgs)
   do { int rc_internal = (evalExpr(record, schema, op->args[1], &rIn)); if (rc_internal != 0) { char *message = errorMessage(rc_internal); printf("[%s-L%i-%s] ERROR: Operation returned error: %s\n","/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/expr.c", 110, "21:54:24", message); free(message); exit(1); } } while(0);;
  switch(op->type)
  {
  case OP_BOOL_NOT:
   do { int rc_internal = (boolNot(lIn, *result)); if (rc_internal != 0) { char *message = errorMessage(rc_internal); printf("[%s-L%i-%s] ERROR: Operation returned error: %s\n","/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/expr.c", 115, "21:54:24", message); free(message); exit(1); } } while(0);;
   break;
  case OP_BOOL_AND:
   do { int rc_internal = (boolAnd(lIn, rIn, *result)); if (rc_internal != 0) { char *message = errorMessage(rc_internal); printf("[%s-L%i-%s] ERROR: Operation returned error: %s\n","/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/expr.c", 118, "21:54:24", message); free(message); exit(1); } } while(0);;
   break;
  case OP_BOOL_OR:
   do { int rc_internal = (boolOr(lIn, rIn, *result)); if (rc_internal != 0) { char *message = errorMessage(rc_internal); printf("[%s-L%i-%s] ERROR: Operation returned error: %s\n","/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/expr.c", 121, "21:54:24", message); free(message); exit(1); } } while(0);;
   break;
  case OP_COMP_EQUAL:
   do { int rc_internal = (valueEquals(lIn, rIn, *result)); if (rc_internal != 0) { char *message = errorMessage(rc_internal); printf("[%s-L%i-%s] ERROR: Operation returned error: %s\n","/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/expr.c", 124, "21:54:24", message); free(message); exit(1); } } while(0);;
   break;
  case OP_COMP_SMALLER:
   do { int rc_internal = (valueSmaller(lIn, rIn, *result)); if (rc_internal != 0) { char *message = errorMessage(rc_internal); printf("[%s-L%i-%s] ERROR: Operation returned error: %s\n","/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/expr.c", 127, "21:54:24", message); free(message); exit(1); } } while(0);;
   break;
  default:
   break;
  }
  freeVal(lIn);
  if (twoArgs)
   freeVal(rIn);
 }
 break;
 case EXPR_CONST:
  do { (*result)->dt = expr->expr.cons->dt; switch(expr->expr.cons->dt) { case DT_INT: (*result)->v.intV = expr->expr.cons->v.intV; break; case DT_STRING: (*result)->v.stringV = (char *) malloc(strlen(expr->expr.cons->v.stringV) + 1); strcpy((*result)->v.stringV, expr->expr.cons->v.stringV); break; case DT_FLOAT: (*result)->v.floatV = expr->expr.cons->v.floatV; break; case DT_BOOL: (*result)->v.boolV = expr->expr.cons->v.boolV; break; } } while(0);
  break;
 case EXPR_ATTRREF:
  free(*result);
  do { int rc_internal = (getAttr(record, schema, expr->expr.attrRef, result)); if (rc_internal != 0) { char *message = errorMessage(rc_internal); printf("[%s-L%i-%s] ERROR: Operation returned error: %s\n","/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/expr.c", 144, "21:54:24", message); free(message); exit(1); } } while(0);;
  break;
 }
 return 0;
}
RC
freeExpr (Expr *expr)
{
 switch(expr->type)
 {
 case EXPR_OP:
 {
  Operator *op = expr->expr.op;
  switch(op->type)
  {
  case OP_BOOL_NOT:
   freeExpr(op->args[0]);
   break;
  default:
   freeExpr(op->args[0]);
   freeExpr(op->args[1]);
   break;
  }
  free(op->args);
 }
 break;
 case EXPR_CONST:
  freeVal(expr->expr.cons);
  break;
 case EXPR_ATTRREF:
  break;
 }
 free(expr);
 return 0;
}
void
freeVal (Value *val)
{
 if (val->dt == DT_STRING)
  free(val->v.stringV);
 free(val);
}
extern int getAttrPos (Schema *schema, int attrNum);
static void prepareTableHeader(char **tableHeaderPtr, TableManager *tableManager, Schema *schema);
static void populateSchemaDetails(char **tableHeaderPtr, Schema *schema);
static void handleCleanup(BM_BufferPool *bufferPool, BM_PageHandle *pageHandle, TableManager *tableManager);
RC initRecordManager(void *mgmtData) {
    printf("Initializing Record Manager...\n");
    return 0;
}
RC shutdownRecordManager() {
    printf("Shutting down Record Manager...\n");
    printf("Record Manager shutdown successfully.\n");
    return 0;
}
void handleCleanup(BM_BufferPool *bufferPool, BM_PageHandle *pageHandle, TableManager *tableManager) {
    if (bufferPool != ((void*)0)) {
        shutdownBufferPool(bufferPool);
        free(bufferPool);
    }
    if (pageHandle != ((void*)0)) {
        free(pageHandle);
    }
    if (tableManager != ((void*)0)) {
        free(tableManager);
    }
}
RC createTable(char *name, Schema *schema) {
    if (name == ((void*)0) || schema == ((void*)0)) return 411;
    BM_BufferPool *bufferPool = calloc(1, sizeof(BM_BufferPool));
    if (bufferPool == ((void*)0)) return 401;
    BM_PageHandle *pageHandle = calloc(1, sizeof(BM_PageHandle));
    if (pageHandle == ((void*)0)) {
        free(bufferPool);
        return 401;
    }
    TableManager *tableManager = calloc(1, sizeof(TableManager));
    if (tableManager == ((void*)0)) {
        free(pageHandle);
        free(bufferPool);
        return 401;
    }
    RC result = createPageFile(name);
    if (result != 0) {
        handleCleanup(bufferPool, pageHandle, tableManager);
        return result;
    }
    result = initBufferPool(bufferPool, name, 3, RS_FIFO, ((void*)0));
    if (result != 0) {
        handleCleanup(bufferPool, pageHandle, tableManager);
        return result;
    }
    result = pinPage(bufferPool, pageHandle, 0);
    if (result != 0) {
        handleCleanup(bufferPool, pageHandle, tableManager);
        return result;
    }
    char *tableHeaderPtr = pageHandle->data;
    prepareTableHeader(&tableHeaderPtr, tableManager, schema);
    result = markDirty(bufferPool, pageHandle);
    if (result != 0) {
        handleCleanup(bufferPool, pageHandle, tableManager);
        return result;
    }
    result = unpinPage(bufferPool, pageHandle);
    if (result != 0) {
        handleCleanup(bufferPool, pageHandle, tableManager);
        return result;
    }
    result = shutdownBufferPool(bufferPool);
    if (result != 0) {
        handleCleanup(bufferPool, pageHandle, tableManager);
        return result;
    }
    return 0;
}
void prepareTableHeader(char **tableHeaderPtr, TableManager *tableManager, Schema *schema) {
    int *headerInt = (int *)*tableHeaderPtr;
    tableManager->totalTuples = 0;
    tableManager->recSize = getRecordSize(schema);
    tableManager->firstFreePageNum = 1;
    tableManager->firstFreeSlotNum = 0;
    tableManager->firstDataPageNum = -1;
    *headerInt++ = tableManager->totalTuples;
    *headerInt++ = tableManager->recSize;
    *headerInt++ = tableManager->firstFreePageNum;
    *headerInt++ = tableManager->firstFreeSlotNum;
    *headerInt++ = tableManager->firstDataPageNum;
    *headerInt++ = schema->numAttr;
    *headerInt++ = schema->keySize;
    *tableHeaderPtr = (char *)headerInt;
    populateSchemaDetails(tableHeaderPtr, schema);
}
void populateSchemaDetails(char **tableHeaderPtr, Schema *schema) {
    char *ptr = *tableHeaderPtr;
    for (int i = 0; i < schema->numAttr; i++) {
        strncpy(ptr, schema->attrNames[i], 15);
        ptr += 15;
        *(DataType *)ptr = schema->dataTypes[i];
        ptr += sizeof(DataType);
        *(int *)ptr = schema->typeLength[i];
        ptr += sizeof(int);
    }
    for (int i = 0; i < schema->keySize; i++) {
        *(int *)ptr = schema->keyAttrs[i];
        ptr += sizeof(int);
    }
    *tableHeaderPtr = ptr;
}
static int readIntFromHeader(char **header) {
    int value = *(int *)(*header);
    *header += sizeof(int);
    return value;
}
static void* allocateArray(size_t elementCount, size_t elementSize) {
    return calloc(elementCount, elementSize);
}
static void setSchemaAttributes(Schema *schema, char **tableHeader) {
    schema->numAttr = readIntFromHeader(tableHeader);
    schema->keySize = readIntFromHeader(tableHeader);
    schema->attrNames = allocateArray(schema->numAttr, sizeof(char *));
    schema->dataTypes = allocateArray(schema->numAttr, sizeof(DataType));
    schema->typeLength = allocateArray(schema->numAttr, sizeof(int));
    schema->keyAttrs = allocateArray(schema->keySize, sizeof(int));
}
RC openTable(RM_TableData *rel, char *name) {
    RC resultCode;
    int attributeIndex;
    TableManager *tableManager = calloc(1, sizeof(TableManager));
    BM_BufferPool *bufferManager = calloc(1, sizeof(BM_BufferPool));
    BM_PageHandle *pageHandle = calloc(1, sizeof(BM_PageHandle));
    Schema *schema = calloc(1, sizeof(Schema));
    char *tableHeader;
    if (!tableManager || !bufferManager || !pageHandle || !schema) {
        goto CLEANUP;
    return 401;
    }
    resultCode = initBufferPool(bufferManager, name, 3, RS_FIFO, ((void*)0));
    if (resultCode != 0) {
        goto CLEANUP;
    return resultCode;
    }
    resultCode = pinPage(bufferManager, pageHandle, 0);
    if (resultCode != 0) {
    goto CLEANUP;
    CLEANUP:
    free(tableManager);
    free(bufferManager);
    free(pageHandle);
    free(schema);
    return resultCode;
    }
    tableHeader = pageHandle->data;
    *(int *)&tableManager->totalTuples = *(int *)tableHeader; tableHeader += sizeof(int);
    *(int *)&tableManager->recSize = *(int *)tableHeader; tableHeader += sizeof(int);
    *(int *)&tableManager->firstFreePageNum = *(int *)tableHeader; tableHeader += sizeof(int);
    *(int *)&tableManager->firstFreeSlotNum = *(int *)tableHeader; tableHeader += sizeof(int);
    *(int *)&tableManager->firstDataPageNum = *(int *)tableHeader; tableHeader += sizeof(int);
    setSchemaAttributes(schema, &tableHeader);
    if (!schema->attrNames || !schema->dataTypes || !schema->typeLength || !schema->keyAttrs) {
        free(tableManager);
        free(bufferManager);
        free(pageHandle);
        return 401;
    }
    for (attributeIndex = 0; attributeIndex < schema->numAttr; attributeIndex++) {
        schema->attrNames[attributeIndex] = strdup(tableHeader);
        tableHeader += 15;
        schema->dataTypes[attributeIndex] = *(DataType *)tableHeader;
        tableHeader += sizeof(DataType);
        schema->typeLength[attributeIndex] = *(int *)tableHeader;
        tableHeader += sizeof(int);
    }
    size_t totalAttrNamesMemory = schema->numAttr * 15;
    for (attributeIndex = 0; attributeIndex < schema->keySize; attributeIndex++) {
        schema->keyAttrs[attributeIndex] = *(int *)tableHeader;
        tableHeader += sizeof(int);
    }
    size_t totalKeyAttrsMemory = schema->keySize * sizeof(int);
    resultCode = unpinPage(bufferManager, pageHandle);
    if (resultCode != 0) {
        free(tableManager);
        free(bufferManager);
        free(pageHandle);
        return resultCode;
    }
    tableManager->bufferManagerPtr = bufferManager;
    tableManager->pageHandlePtr = pageHandle;
    char* duplicatedName = strdup(name);
    rel->name = duplicatedName;
    Schema* directSchemaAssignment = schema;
    rel->schema = directSchemaAssignment;
    TableManager* managerData = tableManager;
    rel->mgmtData = managerData;
    return 0;
}
RC closeTable(RM_TableData *rel) {
    TableManager *tableManager;
    RC pinStatus, dirtyStatus, unpinStatus, shutdownStatus;
    int headerUpdateSuccess = 0;
    tableManager = rel->mgmtData;
    pinStatus = pinPage(tableManager->bufferManagerPtr, tableManager->pageHandlePtr, 0);
    if (pinStatus == 0) {
        int *pageHeader = (int *)tableManager->pageHandlePtr->data;
        *pageHeader++ = tableManager->totalTuples;
        *pageHeader++ = tableManager->recSize;
        *pageHeader++ = tableManager->firstFreePageNum;
        *pageHeader++ = tableManager->firstFreeSlotNum;
        *pageHeader = tableManager->firstDataPageNum;
        dirtyStatus = markDirty(tableManager->bufferManagerPtr, tableManager->pageHandlePtr);
        unpinStatus = unpinPage(tableManager->bufferManagerPtr, tableManager->pageHandlePtr);
        headerUpdateSuccess = 1;
    } else {
        headerUpdateSuccess = 0;
    }
    shutdownStatus = shutdownBufferPool(tableManager->bufferManagerPtr);
    if (rel->schema) {
        for (int i = 0; i < rel->schema->numAttr; i++) {
            if (rel->schema->attrNames[i]) {
                free(rel->schema->attrNames[i]);
            }
        }
        if (rel->schema->attrNames) free(rel->schema->attrNames);
        if (rel->schema->dataTypes) free(rel->schema->dataTypes);
        if (rel->schema->typeLength) free(rel->schema->typeLength);
        if (rel->schema->keyAttrs) free(rel->schema->keyAttrs);
        free(rel->schema);
    }
    free(tableManager);
    if (headerUpdateSuccess && shutdownStatus == 0) {
        return 0;
    } else {
        return pinStatus != 0 ? pinStatus : (dirtyStatus != 0 ? dirtyStatus : (unpinStatus != 0 ? unpinStatus : shutdownStatus));
    }
}
RC deleteTable(char *name) {
    RC resultCode;
    if (!name || name[0] == '\0') {
        resultCode = 407;
    } else {
        resultCode = destroyPageFile(name);
        if (resultCode == 0) {
        } else {
            return resultCode;
        }
    }
    return resultCode;
}
RC getNumTuples(RM_TableData *rel) {
    TableManager *tableManager;
    int totalTuples;
    tableManager = (TableManager *)rel->mgmtData;
    if (tableManager != ((void*)0)) {
        totalTuples = tableManager->totalTuples;
    } else {
        totalTuples = -1;
    }
    return totalTuples;
}
RC insertRecord(RM_TableData *rel, Record *record) {
    TableManager *tableMgmt = rel->mgmtData;
    int slotsAvailableOnPage = (4096 - sizeof(PageHeader)) / (tableMgmt->recSize + 2);
    BM_PageHandle *pageHandle = tableMgmt->pageHandlePtr;
    RC pagePinStatus = pinPage(tableMgmt->bufferManagerPtr, pageHandle, tableMgmt->firstFreePageNum);
    if (pagePinStatus != 0) {
        return 404;
    }
    char *currentPageData = pageHandle->data;
    PageHeader *currentPageHeader = (PageHeader *)currentPageData;
    if (currentPageHeader->pageIdentifier != 'Y') {
        currentPageHeader->pageIdentifier = 'Y';
        currentPageHeader->totalTuples = 0;
        currentPageHeader->freeSlotCnt = slotsAvailableOnPage - 1;
        currentPageHeader->nextFreeSlotInd = 1;
        currentPageHeader->prevFreePageIndex = -1;
        currentPageHeader->nextFreePageIndex = pageHandle->pageNum + 1;
        currentPageHeader->prevDataPageIndex = -1;
        currentPageHeader->nextDataPageIndex = 1;
    } else {
        currentPageHeader->totalTuples++;
        currentPageHeader->freeSlotCnt--;
        if (currentPageHeader->freeSlotCnt > 0) {
            currentPageHeader->nextFreeSlotInd++;
        } else {
            currentPageHeader->nextFreeSlotInd = -currentPageHeader->nextFreeSlotInd;
        }
    }
    int positionForNewData = sizeof(PageHeader) + (tableMgmt->firstFreeSlotNum * (tableMgmt->recSize + 2));
    currentPageData[positionForNewData] = 'Y';
    memcpy(currentPageData + positionForNewData + 1, record->data, tableMgmt->recSize);
    currentPageData[positionForNewData + tableMgmt->recSize + 1] = '|';
    record->id.page = pageHandle->pageNum;
    record->id.slot = tableMgmt->firstFreeSlotNum;
    if (currentPageHeader->freeSlotCnt == 0) {
        tableMgmt->firstFreePageNum++;
        tableMgmt->firstFreeSlotNum = 0;
    } else {
        tableMgmt->firstFreeSlotNum++;
    }
    tableMgmt->totalTuples++;
    RC dirtyStatus = markDirty(tableMgmt->bufferManagerPtr, pageHandle);
    RC unpinStatus = unpinPage(tableMgmt->bufferManagerPtr, pageHandle);
    if (dirtyStatus != 0 || unpinStatus != 0) {
        return 404;
    }
    return 0;
}
RC getRecord(RM_TableData *rel, RID id, Record *record) {
    TableManager *tableManager = rel->mgmtData;
    int slotsPerRecord = (4096 - sizeof(PageHeader)) / (tableManager->recSize + 2);
    if (id.slot >= slotsPerRecord) {
        return 410;
    }
    BM_PageHandle *pageHandler = tableManager->pageHandlePtr;
    RC pinPageStatus = pinPage(tableManager->bufferManagerPtr, pageHandler, id.page);
    if (pinPageStatus != 0) {
        return 404;
    }
    char *recordLocation = pageHandler->data + sizeof(PageHeader) + (id.slot * (tableManager->recSize + 2));
    if (*recordLocation != 'Y') {
        unpinPage(tableManager->bufferManagerPtr, pageHandler);
        return 410;
    }
    char *recordDataStart = recordLocation + 1;
    memcpy(record->data, recordDataStart, tableManager->recSize);
    record->id = id;
    RC unpinPageStatus = unpinPage(tableManager->bufferManagerPtr, pageHandler);
    return unpinPageStatus;
}
RC updateRecord(RM_TableData *rel, Record *record) {
    TableManager *tableManager = (TableManager *)rel->mgmtData;
    int maxSlotsPerRecord = (4096 - sizeof(PageHeader)) / (tableManager->recSize + 2);
    if (record->id.slot >= maxSlotsPerRecord) {
        return 410;
    }
    BM_PageHandle *pageHandle = tableManager->pageHandlePtr;
    RC pinResult = pinPage(tableManager->bufferManagerPtr, pageHandle, record->id.page);
    if (pinResult != 0) {
        return 404;
    }
    char *targetSlot = pageHandle->data + sizeof(PageHeader) + (record->id.slot * (tableManager->recSize + 2));
    if (*targetSlot != 'Y') {
        unpinPage(tableManager->bufferManagerPtr, pageHandle);
        return 410;
    }
    memcpy(targetSlot + 1, record->data, tableManager->recSize);
    RC dirtyFlag = markDirty(tableManager->bufferManagerPtr, pageHandle);
    RC unpinFlag = unpinPage(tableManager->bufferManagerPtr, pageHandle);
    if (dirtyFlag != 0 || unpinFlag != 0) {
        if (dirtyFlag != 0) {
            return 404;
        }
        if (unpinFlag != 0) {
            return 404;
        }
    }
    return 0;
}
RC deleteRecord(RM_TableData *rel, RID id) {
    TableManager *tableMgmt = (TableManager *)rel->mgmtData;
    int maximumSlotsPerPage = (4096 - sizeof(PageHeader)) / (tableMgmt->recSize + 2);
    if (id.slot >= maximumSlotsPerPage) {
        return 410;
    }
    BM_PageHandle *pageHandle = tableMgmt->pageHandlePtr;
    RC pinStatus = pinPage(tableMgmt->bufferManagerPtr, pageHandle, id.page);
    if (pinStatus != 0) {
        return pinStatus;
    }
    int recordPosition = sizeof(PageHeader) + (id.slot * (tableMgmt->recSize + 2));
    char *recordIndicator = &pageHandle->data[recordPosition];
    if (*recordIndicator != 'Y') {
        unpinPage(tableMgmt->bufferManagerPtr, pageHandle);
        return 410;
    }
    *recordIndicator = 'N';
    PageHeader *header = (PageHeader *)pageHandle->data;
    header->totalTuples = header->totalTuples > 0 ? header->totalTuples - 1 : 0;
    header->freeSlotCnt += 1;
    memcpy(pageHandle->data + recordPosition, recordIndicator, 1);
    memcpy(pageHandle->data, header, sizeof(PageHeader));
    tableMgmt->totalTuples = tableMgmt->totalTuples > 0 ? tableMgmt->totalTuples - 1 : 0;
    if (markDirty(tableMgmt->bufferManagerPtr, pageHandle) != 0) {
        unpinPage(tableMgmt->bufferManagerPtr, pageHandle);
        return 404;
    }
    RC unpinStatus = unpinPage(tableMgmt->bufferManagerPtr, pageHandle);
    if (unpinStatus != 0) {
        return unpinStatus;
    }
    return 0;
}
Schema *createSchema(int numAttr, char **attrNames, DataType *dataTypes, int *typeLength, int keySize, int *keys) {
    Schema *newSchema = (Schema *)malloc(sizeof(Schema));
    if (newSchema != ((void*)0)) {
        newSchema->numAttr = numAttr;
    char** attributeNames = (char **)malloc(numAttr * sizeof(char *));
    newSchema->attrNames = attributeNames;
    for (int i = 0; i < numAttr; i++) {
        int length = strlen(attrNames[i]) + 1;
        char* attributeNameMemory = (char *)malloc(length);
        strcpy(attributeNameMemory, attrNames[i]);
        newSchema->attrNames[i] = attributeNameMemory;
    }
        newSchema->dataTypes = (DataType *)malloc(numAttr * sizeof(DataType));
        memcpy(newSchema->dataTypes, dataTypes, numAttr * sizeof(DataType));
        newSchema->typeLength = (int *)malloc(numAttr * sizeof(int));
        for (int i = 0; i < numAttr; i++) {
            newSchema->typeLength[i] = typeLength[i];
        }
        newSchema->keySize = keySize;
        newSchema->keyAttrs = (int *)malloc(keySize * sizeof(int));
        memcpy(newSchema->keyAttrs, keys, keySize * sizeof(int));
    }
    return newSchema;
}
RC freeSchema(Schema *schema) {
    int attributeIndex;
    if (!schema) return 0;
    attributeIndex = 0;
    while (attributeIndex < schema->numAttr) {
        char *attributeName = schema->attrNames[attributeIndex];
        if (attributeName) {
            free(attributeName);
            schema->attrNames[attributeIndex] = ((void*)0);
        }
        attributeIndex++;
    }
    if (schema->attrNames) {
        free(schema->attrNames);
        schema->attrNames = ((void*)0);
    }
    attributeIndex = 0;
    while (attributeIndex < schema->numAttr) {
        if (schema->dataTypes[attributeIndex]) {
        }
        attributeIndex++;
    }
    if (schema->dataTypes) {
        free(schema->dataTypes);
        schema->dataTypes = ((void*)0);
    }
    if (schema->typeLength) {
        free(schema->typeLength);
        schema->typeLength = ((void*)0);
    }
    if (schema->keyAttrs) {
        free(schema->keyAttrs);
        schema->keyAttrs = ((void*)0);
    }
    free(schema);
    schema = ((void*)0);
    return 0;
}
int getRecordSize(Schema *schema) {
    int totalSize = 0;
    int i;
    int attributeLength;
    DataType typeOfAttribute;
    for (i = 0; i < schema->numAttr; ++i) {
        typeOfAttribute = schema->dataTypes[i];
        attributeLength = schema->typeLength[i];
        if (typeOfAttribute == DT_STRING) {
            totalSize += attributeLength * sizeof(char);
        } else if (typeOfAttribute == DT_INT) {
            totalSize += sizeof(int);
        } else if (typeOfAttribute == DT_FLOAT) {
            totalSize += sizeof(float);
        } else {
            totalSize += sizeof(bool);
        }
    }
    int padding = totalSize % 4;
    if (padding != 0) {
        totalSize += 4 - padding;
    }
    return totalSize;
}
RC createRecord(Record **record, Schema *schema) {
    Record *tempRecord;
    char *recordData;
    int recordSize;
    tempRecord = (Record *)malloc(sizeof(Record));
    if (tempRecord == ((void*)0)) return 401;
    recordSize = getRecordSize(schema);
    recordData = (char *)malloc(recordSize + 1);
    if (recordData == ((void*)0)) {
        free(tempRecord);
        return 401;
    }
    memset(recordData, 0, recordSize + 1);
    tempRecord->data = recordData;
    *record = tempRecord;
    return 0;
}
RC freeRecord(Record *record) {
    if (!record) return 410;
    free(record->data);
    record->data = ((void*)0);
    free(record);
    return 0;
}
RC startScan(RM_TableData *rel, RM_ScanHandle *scan, Expr *conditionExpression) {
    ScanManager *scanManager = (ScanManager *)calloc(1, sizeof(ScanManager));
    if (!scanManager) return 401;
    TableManager *tableManager = (TableManager *)rel->mgmtData;
    *scanManager = (ScanManager){
        .totalEntries = tableManager->totalTuples,
        .currentPageNum = tableManager->firstDataPageNum,
        .currentSlotNum = -1,
        .scanIndex = 0,
        .conditionExpression = conditionExpression
    };
    scan->mgmtData = scanManager;
    scan->rel = rel;
    return 0;
}
RC next(RM_ScanHandle *scan, Record *record) {
    ScanManager *scanMgr = scan->mgmtData;
    RM_TableData *tableData = scan->rel;
    TableManager *tableMgr = tableData->mgmtData;
    int pageHeaderSize = sizeof(PageHeader);
    int extraBytesPerRecord = sizeof(char) * 2;
    int sizePerRecord = tableMgr->recSize + extraBytesPerRecord;
    int totalUsableSpace = 4096 - pageHeaderSize;
    int slotsPerPage = totalUsableSpace / sizePerRecord;
    bool hasScannedAllTuples = scanMgr->scanIndex >= scanMgr->totalEntries;
    if (hasScannedAllTuples) {
        return 203;
    }
    Value *evalResult = (Value *)calloc(1, sizeof(Value));
    for (;;) {
        scanMgr->currentSlotNum++;
        if (scanMgr->currentSlotNum >= slotsPerPage) {
            scanMgr->currentPageNum++;
            scanMgr->currentSlotNum = 0;
        }
        RID currentRID = {.page = scanMgr->currentPageNum, .slot = scanMgr->currentSlotNum};
        RC recordStatus = getRecord(tableData, currentRID, record);
        if (recordStatus == 0) {
            scanMgr->scanIndex++;
            if (scanMgr->conditionExpression) {
                evalExpr(record, tableData->schema, scanMgr->conditionExpression, &evalResult);
                if (evalResult->v.boolV) {
                    free(evalResult);
                    return 0;
                }
            } else {
                free(evalResult);
                return 0;
            }
        }
        if (scanMgr->scanIndex >= scanMgr->totalEntries) {
            free(evalResult);
            return 203;
        }
    }
    free(evalResult);
    return 411;
}
RC closeScan(RM_ScanHandle *scan) {
    if (!scan) return 410;
    free(scan->mgmtData);
    scan->mgmtData = ((void*)0);
    return 0;
}
RC getAttr(Record *record, Schema *schema, int attrNum, Value **value) {
    *value = (Value *)calloc(1, sizeof(Value));
    (*value)->dt = schema->dataTypes[attrNum];
    char *baseAddr = record->data + getAttrPos(schema, attrNum);
    switch (schema->dataTypes[attrNum]) {
        case DT_STRING: {
            (*value)->v.stringV = (char *)calloc(1, schema->typeLength[attrNum] + 1);
            strncpy((*value)->v.stringV, baseAddr, schema->typeLength[attrNum]);
        } break;
        case DT_INT: {
            int *intValue = (int *)baseAddr;
            (*value)->v.intV = *intValue;
        } break;
        case DT_FLOAT: {
            float *floatValue = (float *)baseAddr;
            (*value)->v.floatV = *floatValue;
        } break;
        case DT_BOOL: {
            bool *boolValue = (bool *)baseAddr;
            (*value)->v.boolV = *boolValue;
        } break;
    }
    return 0;
}
RC setAttr(Record *record, Schema *schema, int attrNum, Value *value) {
    int position = getAttrPos(schema, attrNum);
    char *target = record->data + position;
    if (schema->dataTypes[attrNum] == DT_INT) {
        int *intHolder = (int *)target;
        *intHolder = value->v.intV;
    } else if (schema->dataTypes[attrNum] == DT_FLOAT) {
        float *floatHolder = (float *)target;
        *floatHolder = value->v.floatV;
    } else if (schema->dataTypes[attrNum] == DT_STRING) {
        memcpy(target, value->v.stringV, schema->typeLength[attrNum]);
    } else if (schema->dataTypes[attrNum] == DT_BOOL) {
        bool *boolHolder = (bool *)target;
        *boolHolder = value->v.boolV;
    }
    return 0;
}
int getAttrPos(Schema *schema, int attrNum) {
    int attrPos = 0;
    int sizes[] = {sizeof(int), sizeof(float), 0, sizeof(bool)};
    for (int i = 0; i < attrNum; ++i) {
        if (schema->dataTypes[i] == DT_STRING) {
            attrPos += sizeof(char) * schema->typeLength[i];
        } else {
            attrPos += sizes[schema->dataTypes[i]];
        }
    }
    return attrPos;
}
typedef struct VarString {
 char *buf;
 int size;
 int bufsize;
} VarString;
static RC attrOffset (Schema *schema, int attrNum, int *result);
char *
serializeTableInfo(RM_TableData *rel)
{
 VarString *result;
 do { result = (VarString *) malloc(sizeof(VarString)); result->size = 0; result->bufsize = 100; result->buf = calloc(100,1); } while (0);
 do { char *tmp = malloc(10000); sprintf(tmp, "TABLE <%s> with <%i> tuples:\n", rel->name, getNumTuples(rel)); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
 do { do { if (result->bufsize < result->size + strlen(serializeSchema(rel->schema))) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(serializeSchema(rel->schema))); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, serializeSchema(rel->schema), strlen(serializeSchema(rel->schema))); result->size += strlen(serializeSchema(rel->schema)); } while(0);
 do { char *resultStr; do { resultStr = malloc((result->size) + 1); memcpy(resultStr, result->buf, result->size); resultStr[result->size] = '\0'; } while (0); do { free(result->buf); free(result); } while (0); return resultStr; } while (0);
}
char *
serializeTableContent(RM_TableData *rel)
{
 int i;
 VarString *result;
 RM_ScanHandle *sc = (RM_ScanHandle *) malloc(sizeof(RM_ScanHandle));
 Record *r = (Record *) malloc(sizeof(Record));
 do { result = (VarString *) malloc(sizeof(VarString)); result->size = 0; result->bufsize = 100; result->buf = calloc(100,1); } while (0);
 for(i = 0; i < rel->schema->numAttr; i++)
  do { char *tmp = malloc(10000); sprintf(tmp, "%s%s", (i != 0) ? ", " : "", rel->schema->attrNames[i]); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
 startScan(rel, sc, ((void*)0));
 while(next(sc, r) != 203)
 {
  do { do { if (result->bufsize < result->size + strlen(serializeRecord(r, rel->schema))) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(serializeRecord(r, rel->schema))); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, serializeRecord(r, rel->schema), strlen(serializeRecord(r, rel->schema))); result->size += strlen(serializeRecord(r, rel->schema)); } while(0);
  do { do { if (result->bufsize < result->size + strlen("\n")) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen("\n")); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, "\n", strlen("\n")); result->size += strlen("\n"); } while(0);
 }
 closeScan(sc);
 do { char *resultStr; do { resultStr = malloc((result->size) + 1); memcpy(resultStr, result->buf, result->size); resultStr[result->size] = '\0'; } while (0); do { free(result->buf); free(result); } while (0); return resultStr; } while (0);
}
char *
serializeSchema(Schema *schema)
{
 int i;
 VarString *result;
 do { result = (VarString *) malloc(sizeof(VarString)); result->size = 0; result->bufsize = 100; result->buf = calloc(100,1); } while (0);
 do { char *tmp = malloc(10000); sprintf(tmp, "Schema with <%i> attributes (", schema->numAttr); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
 for(i = 0; i < schema->numAttr; i++)
 {
  do { char *tmp = malloc(10000); sprintf(tmp, "%s%s: ", (i != 0) ? ", ": "", schema->attrNames[i]); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
  switch (schema->dataTypes[i])
  {
  case DT_INT:
   do { do { if (result->bufsize < result->size + strlen("INT")) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen("INT")); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, "INT", strlen("INT")); result->size += strlen("INT"); } while(0);
   break;
  case DT_FLOAT:
   do { do { if (result->bufsize < result->size + strlen("FLOAT")) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen("FLOAT")); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, "FLOAT", strlen("FLOAT")); result->size += strlen("FLOAT"); } while(0);
   break;
  case DT_STRING:
   do { char *tmp = malloc(10000); sprintf(tmp, "STRING[%i]", schema->typeLength[i]); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
   break;
  case DT_BOOL:
   do { do { if (result->bufsize < result->size + strlen("BOOL")) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen("BOOL")); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, "BOOL", strlen("BOOL")); result->size += strlen("BOOL"); } while(0);
   break;
  }
 }
 do { do { if (result->bufsize < result->size + strlen(")")) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(")")); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, ")", strlen(")")); result->size += strlen(")"); } while(0);
 do { do { if (result->bufsize < result->size + strlen(" with keys: (")) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(" with keys: (")); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, " with keys: (", strlen(" with keys: (")); result->size += strlen(" with keys: ("); } while(0);
 for(i = 0; i < schema->keySize; i++)
  do { char *tmp = malloc(10000); sprintf(tmp, "%s%s", ((i != 0) ? ", ": ""), schema->attrNames[schema->keyAttrs[i]]); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
 do { do { if (result->bufsize < result->size + strlen(")\n")) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(")\n")); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, ")\n", strlen(")\n")); result->size += strlen(")\n"); } while(0);
 do { char *resultStr; do { resultStr = malloc((result->size) + 1); memcpy(resultStr, result->buf, result->size); resultStr[result->size] = '\0'; } while (0); do { free(result->buf); free(result); } while (0); return resultStr; } while (0);
}
char *
serializeRecord(Record *record, Schema *schema)
{
 VarString *result;
 do { result = (VarString *) malloc(sizeof(VarString)); result->size = 0; result->bufsize = 100; result->buf = calloc(100,1); } while (0);
 int i;
 do { char *tmp = malloc(10000); sprintf(tmp, "[%i-%i] (", record->id.page, record->id.slot); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
 for(i = 0; i < schema->numAttr; i++)
 {
  do { do { if (result->bufsize < result->size + strlen(serializeAttr (record, schema, i))) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(serializeAttr (record, schema, i))); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, serializeAttr (record, schema, i), strlen(serializeAttr (record, schema, i))); result->size += strlen(serializeAttr (record, schema, i)); } while(0);
  do { char *tmp = malloc(10000); sprintf(tmp, "%s", (i == 0) ? "" : ","); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
 }
 do { do { if (result->bufsize < result->size + strlen(")")) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(")")); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, ")", strlen(")")); result->size += strlen(")"); } while(0);
 do { char *resultStr; do { resultStr = malloc((result->size) + 1); memcpy(resultStr, result->buf, result->size); resultStr[result->size] = '\0'; } while (0); do { free(result->buf); free(result); } while (0); return resultStr; } while (0);
}
char *
serializeAttr(Record *record, Schema *schema, int attrNum)
{
 int offset;
 char *attrData;
 VarString *result;
 do { result = (VarString *) malloc(sizeof(VarString)); result->size = 0; result->bufsize = 100; result->buf = calloc(100,1); } while (0);
 attrOffset(schema, attrNum, &offset);
 attrData = record->data + offset;
 switch(schema->dataTypes[attrNum])
 {
 case DT_INT:
 {
  int val = 0;
  memcpy(&val,attrData, sizeof(int));
  do { char *tmp = malloc(10000); sprintf(tmp, "%s:%i", schema->attrNames[attrNum], val); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
 }
 break;
 case DT_STRING:
 {
  char *buf;
  int len = schema->typeLength[attrNum];
  buf = (char *) malloc(len + 1);
  strncpy(buf, attrData, len);
  buf[len] = '\0';
  do { char *tmp = malloc(10000); sprintf(tmp, "%s:%s", schema->attrNames[attrNum], buf); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
  free(buf);
 }
 break;
 case DT_FLOAT:
 {
  float val;
  memcpy(&val,attrData, sizeof(float));
  do { char *tmp = malloc(10000); sprintf(tmp, "%s:%f", schema->attrNames[attrNum], val); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
 }
 break;
 case DT_BOOL:
 {
  bool val;
  memcpy(&val,attrData, sizeof(bool));
  do { char *tmp = malloc(10000); sprintf(tmp, "%s:%s", schema->attrNames[attrNum], val ? "TRUE" : "FALSE"); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
 }
 break;
 default:
  return "NO SERIALIZER FOR DATATYPE";
 }
 do { char *resultStr; do { resultStr = malloc((result->size) + 1); memcpy(resultStr, result->buf, result->size); resultStr[result->size] = '\0'; } while (0); do { free(result->buf); free(result); } while (0); return resultStr; } while (0);
}
char *
serializeValue(Value *val)
{
 VarString *result;
 do { result = (VarString *) malloc(sizeof(VarString)); result->size = 0; result->bufsize = 100; result->buf = calloc(100,1); } while (0);
 switch(val->dt)
 {
 case DT_INT:
  do { char *tmp = malloc(10000); sprintf(tmp, "%i",val->v.intV); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
  break;
 case DT_FLOAT:
  do { char *tmp = malloc(10000); sprintf(tmp, "%f", val->v.floatV); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
  break;
 case DT_STRING:
  do { char *tmp = malloc(10000); sprintf(tmp, "%s", val->v.stringV); do { do { if (result->bufsize < result->size + strlen(tmp)) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(tmp)); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, tmp, strlen(tmp)); result->size += strlen(tmp); } while(0); free(tmp); } while(0);
  break;
 case DT_BOOL:
  do { do { if (result->bufsize < result->size + strlen(((val->v.boolV) ? "true" : "false"))) { int newbufsize = result->bufsize; while((newbufsize *= 2) < result->size + strlen(((val->v.boolV) ? "true" : "false"))); result->buf = realloc(result->buf, newbufsize); } } while (0); memcpy(result->buf + result->size, ((val->v.boolV) ? "true" : "false"), strlen(((val->v.boolV) ? "true" : "false"))); result->size += strlen(((val->v.boolV) ? "true" : "false")); } while(0);
  break;
 }
 do { char *resultStr; do { resultStr = malloc((result->size) + 1); memcpy(resultStr, result->buf, result->size); resultStr[result->size] = '\0'; } while (0); do { free(result->buf); free(result); } while (0); return resultStr; } while (0);
}
Value *
stringToValue(char *val)
{
 Value *result = (Value *) malloc(sizeof(Value));
 switch(val[0])
 {
 case 'i':
  result->dt = DT_INT;
  result->v.intV = atoi(val + 1);
  break;
 case 'f':
  result->dt = DT_FLOAT;
  result->v.floatV = atof(val + 1);
  break;
 case 's':
  result->dt = DT_STRING;
  result->v.stringV = malloc(strlen(val));
  strcpy(result->v.stringV, val + 1);
  break;
 case 'b':
  result->dt = DT_BOOL;
  result->v.boolV = (val[1] == 't') ? 1 : 0;
  break;
 default:
  result->dt = DT_INT;
  result->v.intV = -1;
  break;
 }
 return result;
}
RC
attrOffset (Schema *schema, int attrNum, int *result)
{
 int offset = 0;
 int attrPos = 0;
 for(attrPos = 0; attrPos < attrNum; attrPos++)
  switch (schema->dataTypes[attrPos])
  {
  case DT_STRING:
   offset += schema->typeLength[attrPos];
   break;
  case DT_INT:
   offset += sizeof(int);
   break;
  case DT_FLOAT:
   offset += sizeof(float);
   break;
  case DT_BOOL:
   offset += sizeof(bool);
   break;
  }
 *result = offset;
 return 0;
}
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
FILE *pageFile;
 void initStorageManager (void) {
 pageFile = ((void*)0);
}
 RC createPageFile(char *fileName) {
    FILE *file = fopen(fileName, "w+");
    if (file == ((void*)0)) {
        return 1;
    }
    SM_PageHandle emptyPage = calloc(4096, 1);
    if (emptyPage == ((void*)0)) {
        fclose(file);
        return 3;
    }
    size_t writeSize = fwrite(emptyPage, sizeof(char), 4096, file);
    free(emptyPage);
    fclose(file);
    if (writeSize < 4096) {
        return 3;
    }
    return 0;
}
RC openPageFile(char *fileName, SM_FileHandle *fHandle) {
    FILE *fp;
    int File_RC;
    char *pageData;
    int i;
    pageData = (char *) calloc(4096, sizeof(char));
    if (pageData == ((void*)0)) {
        return 401;
    }
    fp = fopen(fileName, "rb+");
    if (fp == ((void*)0)) {
        free(pageData);
        return 1;
    }
    int DataReadOK = 0;
    for (i = 0; i < 1; i++) {
        File_RC = fread(pageData, 4096, 1, fp);
        if (File_RC == 1) {
            DataReadOK = 1;
            break;
        }
    }
    if (!DataReadOK) {
        free(pageData);
        fclose(fp);
        return 406;
    }
    if (pageData != ((void*)0)) {
        fHandle->fileName = fileName;
        fHandle->totalNumPages = atoi(pageData);
        fHandle->curPagePos = 0;
        fHandle->mgmtInfo = fp;
        free(pageData);
    } else {
        fclose(fp);
        free(pageData);
        return 407;
    }
    return 0;
}
RC closePageFile(SM_FileHandle *fHandle) {
    int FILE_RC;
    char *pageData;
    long offset;
    int Action, maxTrial = 1;
    pageData = (char *) calloc(4096, sizeof(char));
    if (pageData == ((void*)0)) {
        return 401;
    }
    offset = 0;
    FILE_RC = fseek(fHandle->mgmtInfo, offset, 0);
    if (FILE_RC != 0) {
        free(pageData);
        return 408;
    }
    sprintf(pageData, "%d", fHandle->totalNumPages);
    for (Action = 0; Action < maxTrial; Action++) {
        FILE_RC = fwrite(pageData, 4096, 1, fHandle->mgmtInfo);
        if (FILE_RC != 1) {
        free(pageData);
        return 3;
        }
        else {
        FILE_RC = fclose(fHandle->mgmtInfo);
        if (FILE_RC != 0) {
            free(pageData);
            return 403;
        }
         }
    free(pageData);
    return 0;
    }
}
RC destroyPageFile(char *fileName) {
    int FILE_RC;
    int Trial = 0;
    const int maxTrial = 3;
    while (Trial < maxTrial) {
        FILE_RC = remove(fileName);
        if (FILE_RC == 0) {
            return 0;
        } else {
            Trial++;
        }
    }
    if (FILE_RC != 0) {
        return 409;
    }
    return 0;
}
RC readBlock(int pageNum, SM_FileHandle *fHandle, SM_PageHandle memPage) {
    long offset;
    int FILE_RC;
    int Action, maxTrial = 1;
    if (pageNum < 0 || pageNum >= fHandle->totalNumPages) {
        return 4;
    }
    offset = (pageNum + 1) * 4096;
    FILE_RC = fseek(fHandle->mgmtInfo, offset, 0);
    if (FILE_RC != 0) {
        return 408;
    }
    for (Action = 0; Action < maxTrial; Action++) {
        FILE_RC = fread(memPage, 4096, 1, fHandle->mgmtInfo);
        if (FILE_RC == 1) {
            break;
        }
    }
    if (FILE_RC != 1) {
        return 406;
    }
    fHandle->curPagePos = pageNum;
    return 0;
}
RC readFirstBlock(SM_FileHandle *fHandle, SM_PageHandle memPage) {
    int read_code;
    const int maxTrial = 3;
    int Action = 0;
    for (Action = 0; Action < maxTrial; Action++) {
        read_code = readBlock(0, fHandle, memPage);
        if (read_code == 0) {
            break;
        } else {
            printf("Action %d to read the first block failed. Retrying...\n", Action + 1);
        }
    }
    return read_code;
}
RC readLastBlock(SM_FileHandle *fHandle, SM_PageHandle memPage) {
    int read_code;
    int pageNum;
    const int maxTrial = 3;
    int Action = 0;
    pageNum = fHandle->totalNumPages - 1;
    if (pageNum < 0) {
        return 4;
    }
    for (Action = 0; Action < maxTrial; Action++) {
        read_code = readBlock(pageNum, fHandle, memPage);
        if (read_code == 0) {
            break;
        }
    }
    return read_code;
}
RC readPreviousBlock(SM_FileHandle *fHandle, SM_PageHandle memPage) {
    int read_code;
    int pageNum;
    const int maxTrial = 2;
    int Action = 0;
    pageNum = fHandle->curPagePos - 1;
    if (pageNum < 0) {
        return 4;
    }
    for (Action = 0; Action < maxTrial; Action++) {
        read_code = readBlock(pageNum, fHandle, memPage);
        if (read_code == 0) {
            break;
        }
    }
    return read_code;
}
RC readCurrentBlock(SM_FileHandle *fHandle, SM_PageHandle memPage) {
    if (fHandle == ((void*)0) || fHandle->mgmtInfo == ((void*)0)) {
        return 2;
    }
    int pageNum = fHandle->curPagePos;
    if (pageNum < 0 || pageNum >= fHandle->totalNumPages) {
        return 4;
    }
    int read_code = 4;
    const int maxReadTrial = 3;
    for (int Action = 0; Action < maxReadTrial; Action++) {
        read_code = readBlock(pageNum, fHandle, memPage);
        if (read_code == 0) {
            break;
        }
    }
    return read_code;
}
RC readNextBlock(SM_FileHandle *fHandle, SM_PageHandle memPage) {
    int read_code;
    int pageNum;
    const int maxTrial = 2;
    int Action = 0;
    pageNum = fHandle->curPagePos + 1;
    for (Action = 0; Action < maxTrial; Action++) {
        read_code = readBlock(pageNum, fHandle, memPage);
        if (read_code == 0) {
            break;
        }
    }
    if (read_code == 4) {
    }
    return read_code;
}
RC writeBlock(int pageNum, SM_FileHandle *fHandle, SM_PageHandle memPage) {
    FILE *fp = fHandle->mgmtInfo;
    long int offset;
    if (fp == ((void*)0)) {
        return 1;
    }
    if (pageNum < 0) {
        return 3;
    }
    offset = (pageNum + 1) * 4096;
    fseek(fp, 0, 2);
    long fileSize = ftell(fp);
    if (offset > fileSize) {
        if (pageNum == fHandle->totalNumPages) {
            fseek(fp, fileSize, 0);
            for (long i = fileSize; i < offset; i++) {
                fputc('\0', fp);
            }
            fHandle->totalNumPages++;
        } else {
            return 3;
        }
    }
        if (lseek(fileno(fp), offset, 0) == -1) {
            return 408;
            }
            ssize_t bytes_written = write(fileno(fp), memPage, 4096);
            if (bytes_written != 4096) {
                return 3;
            }
            fHandle->curPagePos = pageNum;
            return 0;
}
RC writeCurrentBlock(SM_FileHandle *fHandle, SM_PageHandle memPage) {
    int read_code;
    int pageNum;
    const int maxWriteTrial = 3;
    int writeAction;
    int SuccessStatus = 0;
    pageNum = fHandle->curPagePos;
    if (pageNum < 0 || pageNum >= fHandle->totalNumPages) {
        return 3;
    }
    for (writeAction = 0; writeAction < maxWriteTrial; writeAction++) {
        read_code = writeBlock(pageNum, fHandle, memPage);
        if (read_code == 0) {
            SuccessStatus = 1;
            break;
        }
    }
    if (!SuccessStatus) {
        return 3;
    }
    return 0;
}
RC appendEmptyBlock(SM_FileHandle *fHandle) {
    FILE *fp = fHandle->mgmtInfo;
    char *pageData;
    int FILE_RC;
    const int maxWriteTrial = 2;
    int Action = 0;
    int SuccessStatus = 0;
    pageData = (char *)calloc(4096, sizeof(char));
    if (pageData == ((void*)0)) {
        return 401;
    }
    if (fp == ((void*)0)) {
        free(pageData);
        return 2;
    }
    FILE_RC = fseek(fp, 0, 2);
    if (FILE_RC != 0) {
        free(pageData);
        return 408;
    }
    for (Action = 0; Action < maxWriteTrial; Action++) {
        FILE_RC = fwrite(pageData, 4096, 1, fp);
        if (FILE_RC == 1) {
            SuccessStatus = 1;
            break;
        }
    }
    free(pageData);
    if (!SuccessStatus) {
        return 3;
    }
    fHandle->totalNumPages += 1;
    fHandle->curPagePos = fHandle->totalNumPages - 1;
    return 0;
}
RC ensureCapacity(int allPagesCount, SM_FileHandle *fHandle) {
    if (fHandle == ((void*)0) || fHandle->mgmtInfo == ((void*)0)) {
        return 2;
    }
    int activePageCount = fHandle->totalNumPages;
    if (allPagesCount <= activePageCount) {
        return 0;
    }
    int IncrementPageCount = allPagesCount - activePageCount;
    int FILE_RC, i;
    for (i = 0; i < IncrementPageCount; i++) {
        FILE_RC = appendEmptyBlock(fHandle);
        if (FILE_RC != 0) {
            return FILE_RC;
        }
    }
    return 0;
}

