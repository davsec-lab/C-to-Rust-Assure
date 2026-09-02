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
extern int fflush (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) ;
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__nonnull__ (3)));
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ))
  __attribute__ ((__nonnull__ (1)));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
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
extern int fputc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar (int __c);
extern int putc_unlocked (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar_unlocked (int __c);
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
extern void perror (const char *__s) __attribute__ ((__cold__));
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
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
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
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
extern int rand (void) __attribute__ ((__nothrow__ ));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ ));
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__)) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1)))
                                         ;
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void quick_exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
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
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) ;
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
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
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)))
                                          ;
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ ));
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
typedef __clock_t clock_t;
typedef __time_t time_t;
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
  long int __tm_gmtoff;
  const char *__tm_zone;
};
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef __clockid_t clockid_t;
typedef __timer_t timer_t;
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
struct sigevent;
typedef __pid_t pid_t;
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
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));

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
static const char *csv_errors[] = {"success",
                             "error parsing data while strict checking enabled",
                             "memory exhausted while increasing buffer size",
                             "data size too large",
                             "invalid status code"};
struct csv_parser {
  int pstate;
  int quoted;
  size_t spaces;
  unsigned char * entry_buf;
  size_t entry_pos;
  size_t entry_size;
  int status;
  unsigned char options;
  unsigned char quote_char;
  unsigned char delim_char;
  int (*is_space)(unsigned char);
  int (*is_term)(unsigned char);
  size_t blk_size;
  void *(*malloc_func)(size_t);
  void *(*realloc_func)(void *, size_t);
  void (*free_func)(void *);
};
size_t
csv_write2 (void *dest, size_t dest_size, const void *src, size_t src_size, unsigned char quote);
int
csv_fwrite2 (FILE *fp, const void *src, size_t src_size, unsigned char quote);
int
csv_error(const struct csv_parser *p)
{
  ((void) sizeof ((p && "received null csv_parser") ? 1 : 0), __extension__ ({ if (p && "received null csv_parser") ; else __assert_fail ("p && \"received null csv_parser\"", "libcsv.c", 129, __extension__ __PRETTY_FUNCTION__); }));
  return p->status;
}
const char *
csv_strerror(int status)
{
  if (status >= 4 || status < 0)
    return csv_errors[4];
  else
    return csv_errors[status];
}
int
csv_get_opts(const struct csv_parser *p)
{
  if (p == ((void*)0))
    return -1;
  return p->options;
}
int
csv_set_opts(struct csv_parser *p, unsigned char options)
{
  if (p == ((void*)0))
    return -1;
  p->options = options;
  return 0;
}
int
csv_init(struct csv_parser *p, unsigned char options)
{
  if (p == ((void*)0))
    return -1;
  p->entry_buf = ((void*)0);
  p->pstate = 0;
  p->quoted = 0;
  p->spaces = 0;
  p->entry_pos = 0;
  p->entry_size = 0;
  p->status = 0;
  p->options = options;
  p->quote_char = 0x22;
  p->delim_char = 0x2c;
  p->is_space = ((void*)0);
  p->is_term = ((void*)0);
  p->blk_size = 128;
  p->malloc_func = ((void*)0);
  p->realloc_func = realloc;
  p->free_func = free;
  return 0;
}
void
csv_free(struct csv_parser *p)
{
  if (p == ((void*)0))
    return;
  if (p->entry_buf && p->free_func)
    p->free_func(p->entry_buf);
  p->entry_buf = ((void*)0);
  p->entry_size = 0;
  return;
}
int
csv_fini(struct csv_parser *p, void (*cb1)(void *, size_t, void *), void (*cb2)(int c, void *), void *data)
{
  if (p == ((void*)0))
    return -1;
  int quoted = p->quoted;
  int pstate = p->pstate;
  size_t spaces = p->spaces;
  size_t entry_pos = p->entry_pos;
  if ((pstate == 2) && p->quoted && (p->options & 1) && (p->options & 4)) {
    p->status = 1;
    return -1;
  }
  switch (pstate) {
    case 3:
      p->entry_pos -= p->spaces + 1;
      entry_pos = p->entry_pos;
    case 1:
    case 2:
      do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
      do { if (cb2) cb2(-1, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
      break;
    case 0:
      ;
  }
  p->spaces = p->quoted = p->entry_pos = p->status = 0;
  p->pstate = 0;
  return 0;
}
void
csv_set_delim(struct csv_parser *p, unsigned char c)
{
  if (p) p->delim_char = c;
}
void
csv_set_quote(struct csv_parser *p, unsigned char c)
{
  if (p) p->quote_char = c;
}
unsigned char
csv_get_delim(const struct csv_parser *p)
{
  ((void) sizeof ((p && "received null csv_parser") ? 1 : 0), __extension__ ({ if (p && "received null csv_parser") ; else __assert_fail ("p && \"received null csv_parser\"", "libcsv.c", 269, __extension__ __PRETTY_FUNCTION__); }));
  return p->delim_char;
}
unsigned char
csv_get_quote(const struct csv_parser *p)
{
  ((void) sizeof ((p && "received null csv_parser") ? 1 : 0), __extension__ ({ if (p && "received null csv_parser") ; else __assert_fail ("p && \"received null csv_parser\"", "libcsv.c", 278, __extension__ __PRETTY_FUNCTION__); }));
  return p->quote_char;
}
void
csv_set_space_func(struct csv_parser *p, int (*f)(unsigned char))
{
  if (p) p->is_space = f;
}
void
csv_set_term_func(struct csv_parser *p, int (*f)(unsigned char))
{
  if (p) p->is_term = f;
}
void
csv_set_realloc_func(struct csv_parser *p, void *(*f)(void *, size_t))
{
  if (p && f) p->realloc_func = f;
}
void
csv_set_free_func(struct csv_parser *p, void (*f)(void *))
{
  if (p && f) p->free_func = f;
}
void
csv_set_blk_size(struct csv_parser *p, size_t size)
{
  if (p) p->blk_size = size;
}
size_t
csv_get_buffer_size(const struct csv_parser *p)
{
  if (p)
    return p->entry_size;
  return 0;
}
static int
csv_increase_buffer(struct csv_parser *p)
{
  if (p == ((void*)0)) return 0;
  if (p->realloc_func == ((void*)0)) return 0;
  size_t to_add = p->blk_size;
  void *vp;
  if ( p->entry_size >= (18446744073709551615UL) - to_add )
    to_add = (18446744073709551615UL) - p->entry_size;
  if (!to_add) {
    p->status = 3;
    return -1;
  }
  while ((vp = p->realloc_func(p->entry_buf, p->entry_size + to_add)) == ((void*)0)) {
    to_add /= 2;
    if (!to_add) {
      p->status = 2;
      return -1;
    }
  }
  p->entry_buf = vp;
  p->entry_size += to_add;
  return 0;
}
size_t
csv_parse(struct csv_parser *p, const void *s, size_t len, void (*cb1)(void *, size_t, void *), void (*cb2)(int c, void *), void *data)
{
  ((void) sizeof ((p && "received null csv_parser") ? 1 : 0), __extension__ ({ if (p && "received null csv_parser") ; else __assert_fail ("p && \"received null csv_parser\"", "libcsv.c", 368, __extension__ __PRETTY_FUNCTION__); }));
  if (s == ((void*)0)) return 0;
  unsigned const char *us = s;
  unsigned char c;
  size_t pos = 0;
  unsigned char delim = p->delim_char;
  unsigned char quote = p->quote_char;
  int (*is_space)(unsigned char) = p->is_space;
  int (*is_term)(unsigned char) = p->is_term;
  int quoted = p->quoted;
  int pstate = p->pstate;
  size_t spaces = p->spaces;
  size_t entry_pos = p->entry_pos;
  if (!p->entry_buf && pos < len) {
    if (csv_increase_buffer(p) != 0) {
      p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
      return pos;
    }
  }
  while (pos < len) {
    if (entry_pos == ((p->options & 8) ? p->entry_size - 1 : p->entry_size) ) {
      if (csv_increase_buffer(p) != 0) {
        p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
        return pos;
      }
    }
    c = us[pos++];
    switch (pstate) {
      case 0:
      case 1:
        if ((is_space ? is_space(c) : c == 0x20 || c == 0x09) && c!=delim) {
          continue;
        } else if (is_term ? is_term(c) : c == 0x0d || c == 0x0a) {
          if (pstate == 1) {
            do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
            do { if (cb2) cb2(c, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
          } else {
            if (p->options & 2) {
              do { if (cb2) cb2(c, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
            }
          }
          continue;
        } else if (c == delim) {
          do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
          break;
        } else if (c == quote) {
          pstate = 2;
          quoted = 1;
        } else {
          pstate = 2;
          quoted = 0;
          ((p)->entry_buf[entry_pos++] = (c));
        }
        break;
      case 2:
        if (c == quote) {
          if (quoted) {
            ((p)->entry_buf[entry_pos++] = (c));
            pstate = 3;
          } else {
            if (p->options & 1) {
              p->status = 1;
              p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
              return pos-1;
            }
            ((p)->entry_buf[entry_pos++] = (c));
            spaces = 0;
          }
        } else if (c == delim) {
          if (quoted) {
            ((p)->entry_buf[entry_pos++] = (c));
          } else {
            do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
          }
        } else if (is_term ? is_term(c) : c == 0x0d || c == 0x0a) {
          if (!quoted) {
            do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
            do { if (cb2) cb2(c, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
          } else {
            ((p)->entry_buf[entry_pos++] = (c));
          }
        } else if (!quoted && (is_space? is_space(c) : c == 0x20 || c == 0x09)) {
            ((p)->entry_buf[entry_pos++] = (c));
            spaces++;
        } else {
          ((p)->entry_buf[entry_pos++] = (c));
          spaces = 0;
        }
        break;
      case 3:
        if (c == delim) {
          entry_pos -= spaces + 1;
          do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
        } else if (is_term ? is_term(c) : c == 0x0d || c == 0x0a) {
          entry_pos -= spaces + 1;
          do { if (!quoted) entry_pos -= spaces; if (p->options & 8) ((p)->entry_buf[entry_pos]) = '\0'; if (cb1 && (p->options & 16) && !quoted && entry_pos == 0) cb1(((void*)0), entry_pos, data); else if (cb1) cb1(p->entry_buf, entry_pos, data); pstate = 1; entry_pos = quoted = spaces = 0; } while (0);
          do { if (cb2) cb2(c, data); pstate = 0; entry_pos = quoted = spaces = 0; } while (0);
        } else if (is_space ? is_space(c) : c == 0x20 || c == 0x09) {
          ((p)->entry_buf[entry_pos++] = (c));
          spaces++;
        } else if (c == quote) {
          if (spaces) {
            if (p->options & 1) {
              p->status = 1;
              p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
              return pos-1;
            }
            spaces = 0;
            ((p)->entry_buf[entry_pos++] = (c));
          } else {
            pstate = 2;
          }
        } else {
          if (p->options & 1) {
            p->status = 1;
            p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
            return pos-1;
          }
          pstate = 2;
          spaces = 0;
          ((p)->entry_buf[entry_pos++] = (c));
        }
        break;
     default:
       break;
    }
  }
  p->quoted = quoted, p->pstate = pstate, p->spaces = spaces, p->entry_pos = entry_pos;
  return pos;
}
size_t
csv_write (void *dest, size_t dest_size, const void *src, size_t src_size)
{
  return csv_write2(dest, dest_size, src, src_size, 0x22);
}
int
csv_fwrite (FILE *fp, const void *src, size_t src_size)
{
  return csv_fwrite2(fp, src, src_size, 0x22);
}
size_t
csv_write2 (void *dest, size_t dest_size, const void *src, size_t src_size, unsigned char quote)
{
  unsigned char *cdest = dest;
  const unsigned char *csrc = src;
  size_t chars = 0;
  if (src == ((void*)0))
    return 0;
  if (dest == ((void*)0))
    dest_size = 0;
  if (dest_size > 0)
    *cdest++ = quote;
  chars++;
  while (src_size) {
    if (*csrc == quote) {
      if (dest_size > chars)
        *cdest++ = quote;
      if (chars < (18446744073709551615UL)) chars++;
    }
    if (dest_size > chars)
      *cdest++ = *csrc;
    if (chars < (18446744073709551615UL)) chars++;
    src_size--;
    csrc++;
  }
  if (dest_size > chars)
    *cdest = quote;
  if (chars < (18446744073709551615UL)) chars++;
  return chars;
}
int
csv_fwrite2 (FILE *fp, const void *src, size_t src_size, unsigned char quote)
{
  const unsigned char *csrc = src;
  if (fp == ((void*)0) || src == ((void*)0))
    return 0;
  if (fputc(quote, fp) == (-1))
    return (-1);
  while (src_size) {
    if (*csrc == quote) {
      if (fputc(quote, fp) == (-1))
        return (-1);
    }
    if (fputc(*csrc, fp) == (-1))
      return (-1);
    src_size--;
    csrc++;
  }
  if (fputc(quote, fp) == (-1)) {
    return (-1);
  }
  return 0;
}
static const unsigned char CSV_STRICT_MODE = 1;
static long long elapsed_ms_since(const struct timespec *start, const struct timespec *end)
{
    long long sec = (long long)(end->tv_sec - start->tv_sec);
    long long nsec = (long long)(end->tv_nsec - start->tv_nsec);
    return sec * 1000LL + nsec / 1000000LL;
}
static int get_now(struct timespec *ts)
{
    return clock_gettime(1, ts);
}
int main(int argc, char **argv)
{
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <csv_file>\n", argv[0]);
        return 1;
    }
    const char *input_path = argv[1];
    FILE *fp = fopen(input_path, "rb");
    if (fp == ((void*)0)) {
        fprintf(stderr, "Failed to open %s\n", input_path);
        return 1;
    }
    struct csv_parser parser;
    memset(&parser, 0, sizeof(parser));
    if (csv_init(&parser, 1) != 0) {
        fprintf(stderr, "csv_init failed\n");
        fclose(fp);
        return 1;
    }
    unsigned char buf[4096];
    size_t total_bytes = 0;
    int ok = 1;
    struct timespec t0;
    struct timespec t1;
    if (get_now(&t0) != 0) {
        fprintf(stderr, "time start failed\n");
        csv_free(&parser);
        fclose(fp);
        return 1;
    }
    while (1) {
        size_t got = fread(buf, 1, sizeof(buf), fp);
        if (got == 0) {
            if (ferror(fp)) {
                fprintf(stderr, "Read failed\n");
                ok = 0;
            }
            break;
        }
        size_t consumed = csv_parse(&parser, buf, got, ((void*)0), ((void*)0), ((void*)0));
        total_bytes += consumed;
        if (consumed != got) {
            ok = 0;
            fprintf(stderr, "Malformed CSV at byte %zu (csv_error=%d)\n",
                    total_bytes + 1, csv_error(&parser));
            break;
        }
    }
    if (ok && csv_fini(&parser, ((void*)0), ((void*)0), ((void*)0)) != 0) {
        ok = 0;
        fprintf(stderr, "csv_fini failed (csv_error=%d)\n", csv_error(&parser));
    }
    if (get_now(&t1) != 0) {
        fprintf(stderr, "time end failed\n");
        csv_free(&parser);
        fclose(fp);
        return 1;
    }
    fclose(fp);
    if (ok) {
        printf("well-formed\n");
    }
    printf("bytes_processed: %zu\n", total_bytes);
    printf("elapsed_ms: %lld\n", elapsed_ms_since(&t0, &t1));
    return ok ? 0 : 2;
}
