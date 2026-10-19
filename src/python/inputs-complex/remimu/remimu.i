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
typedef long int ptrdiff_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
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

static const int REMIMU_FLAG_DOT_NO_NEWLINES = 1;
static const uint8_t REMIMU_KIND_NORMAL = 0;
static const uint8_t REMIMU_KIND_OPEN = 1;
static const uint8_t REMIMU_KIND_NCOPEN = 2;
static const uint8_t REMIMU_KIND_CLOSE = 3;
static const uint8_t REMIMU_KIND_OR = 4;
static const uint8_t REMIMU_KIND_CARET = 5;
static const uint8_t REMIMU_KIND_DOLLAR = 6;
static const uint8_t REMIMU_KIND_BOUND = 7;
static const uint8_t REMIMU_KIND_NBOUND = 8;
static const uint8_t REMIMU_KIND_END = 9;
static const uint8_t REMIMU_MODE_POSSESSIVE = 1;
static const uint8_t REMIMU_MODE_LAZY = 2;
static const uint8_t REMIMU_MODE_INVERTED = 128;
typedef struct _RegexToken {
    uint8_t kind;
    uint8_t mode;
    uint16_t count_lo;
    uint16_t count_hi;
    uint16_t mask[16];
    int16_t pair_offset;
} RegexToken;
static inline int regex_parse(const char * pattern, RegexToken * tokens, int16_t * token_count, int32_t flags)
{
    int64_t tokens_len = *token_count;
    uint64_t pattern_len = strlen(pattern);
    if (token_count == 0)
        return -2;
    int esc_state = 0;
    const int STATE_NORMAL = 1;
    const int STATE_QUANT = 2;
    const int STATE_MODE = 3;
    const int STATE_CC_INIT = 4;
    const int STATE_CC_NORMAL = 5;
    const int STATE_CC_RANGE = 6;
    int state = STATE_NORMAL;
    int char_class_mem = -1;
    RegexToken token;
    { memset(&(token), 0, sizeof(RegexToken)); token.count_lo = 1; token.count_hi = 2; };
    int16_t k = 0;
    token.kind = REMIMU_KIND_OPEN;
    token.count_lo = 0;
    token.count_hi = 0;
    int paren_count = 0;
    for (uint64_t i = 0; i < pattern_len; i++)
    {
        char c = pattern[i];
        if (state == STATE_QUANT)
        {
            state = STATE_MODE;
            if (c == '?')
            {
                token.count_lo = 0;
                token.count_hi = 2;
                continue;
            }
            else if (c == '+')
            {
                token.count_lo = 1;
                token.count_hi = 0;
                continue;
            }
            else if (c == '*')
            {
                token.count_lo = 0;
                token.count_hi = 0;
                continue;
            }
            else if (c == '{')
            {
                if (pattern[i+1] == 0 || pattern[i+1] < '0' || pattern[i+1] > '9')
                    state = STATE_NORMAL;
                else
                {
                    i += 1;
                    uint32_t val = 0;
                    while (pattern[i] >= '0' && pattern[i] <= '9')
                    {
                        val *= 10;
                        val += (uint32_t)(pattern[i] - '0');
                        if (val > 0xFFFF)
                        {
                            puts("quantifier range too long");
                            return -1;
                        }
                        i += 1;
                    }
                    token.count_lo = val;
                    token.count_hi = val + 1;
                    if (pattern[i] == ',')
                    {
                        token.count_hi = 0;
                        i += 1;
                        if (pattern[i] >= '0' && pattern[i] <= '9')
                        {
                            uint32_t val2 = 0;
                            while (pattern[i] >= '0' && pattern[i] <= '9')
                            {
                                val2 *= 10;
                                val2 += (uint32_t)(pattern[i] - '0');
                                if (val2 > 0xFFFF)
                                {
                                    puts("quantifier range too long");
                                    return -1;
                                }
                                i += 1;
                            }
                            if (val2 < val)
                            {
                                puts("quantifier range is backwards");
                                return -1;
                            }
                            token.count_hi = val2 + 1;
                        }
                    }
                    if (pattern[i] == '}')
                    {
                        continue;
                    }
                    else
                    {
                        puts("quantifier range syntax broken (no terminator)");
                        return -1;
                    }
                }
            }
        }
        if (state == STATE_MODE)
        {
            state = STATE_NORMAL;
            if (c == '?')
            {
                token.mode |= REMIMU_MODE_LAZY;
                continue;
            }
            else if (c == '+')
            {
                token.mode |= REMIMU_MODE_POSSESSIVE;
                continue;
            }
        }
        if (state == STATE_NORMAL)
        {
            if (esc_state == 1)
            {
                esc_state = 0;
                if (c == 'n')
                    { token.mask[((uint8_t)('\n'))>>4] |= 1 << ((uint8_t)('\n') & 0xF); }
                else if (c == 'r')
                    { token.mask[((uint8_t)('\r'))>>4] |= 1 << ((uint8_t)('\r') & 0xF); }
                else if (c == 't')
                    { token.mask[((uint8_t)('\t'))>>4] |= 1 << ((uint8_t)('\t') & 0xF); }
                else if (c == 'v')
                    { token.mask[((uint8_t)('\v'))>>4] |= 1 << ((uint8_t)('\v') & 0xF); }
                else if (c == 'f')
                    { token.mask[((uint8_t)('\f'))>>4] |= 1 << ((uint8_t)('\f') & 0xF); }
                else if (c == 'x')
                {
                    if (pattern[i+1] == 0 || pattern[i+2] == 0)
                        return -1;
                    uint8_t n0 = pattern[i+1];
                    uint8_t n1 = pattern[i+1];
                    if (n0 < '0' || n0 > 'f' || n1 < '0' || n1 > 'f' ||
                        (n0 > '9' && n0 < 'A') || (n1 > '9' && n1 < 'A'))
                        return -1;
                    if (n0 > 'F') n0 -= 0x20;
                    if (n1 > 'F') n1 -= 0x20;
                    if (n0 >= 'A') n0 -= 'A' - 10;
                    if (n1 >= 'A') n1 -= 'A' - 10;
                    n0 -= '0';
                    n1 -= '0';
                    { token.mask[((uint8_t)((n1 << 4) | n0))>>4] |= 1 << ((uint8_t)((n1 << 4) | n0) & 0xF); }
                    i += 2;
                }
                else if (c == '{' || c == '}' ||
                         c == '[' || c == ']' || c == '-' ||
                         c == '(' || c == ')' ||
                         c == '|' || c == '^' || c == '$' ||
                         c == '*' || c == '+' || c == '?' || c == ':' ||
                         c == '.' || c == '/' || c == '\\')
                {
                    { token.mask[((uint8_t)(c))>>4] |= 1 << ((uint8_t)(c) & 0xF); }
                    state = STATE_QUANT;
                }
                else if (c == 'd' || c == 's' || c == 'w' ||
                         c == 'D' || c == 'S' || c == 'W')
                {
                    uint8_t is_upper = c <= 'Z';
                    uint16_t m[16];
                    memset(m, 0, sizeof(m));
                    if (is_upper)
                        c += 0x20;
                    if (c == 'd' || c == 'w')
                        m[3] |= 0x03FF;
                    if (c == 's')
                    {
                        m[0] |= 0x3E00;
                        m[2] |= 1;
                    }
                    if (c == 'w')
                    {
                        m[4] |= 0xFFFE;
                        m[5] |= 0x87FF;
                        m[6] |= 0xFFFE;
                        m[7] |= 0x07FF;
                    }
                    for (int i = 0; i < 16; i++)
                        token.mask[i] |= is_upper ? ~m[i] : m[i];
                    token.kind = REMIMU_KIND_NORMAL;
                    state = STATE_QUANT;
                }
                else if (c == 'b')
                {
                    token.kind = REMIMU_KIND_BOUND;
                    state = STATE_NORMAL;
                }
                else if (c == 'B')
                {
                    token.kind = REMIMU_KIND_NBOUND;
                    state = STATE_NORMAL;
                }
                else
                {
                    puts("unsupported escape sequence");
                    return -1;
                }
            }
            else
            {
                { if (k == 0 || tokens[k-1].kind != token.kind || (token.kind != REMIMU_KIND_BOUND && token.kind != REMIMU_KIND_NBOUND)) { if (token.mode & REMIMU_MODE_INVERTED) { for (int n = 0; n < 16; n++) token.mask[n] = ~token.mask[n]; token.mode &= ~REMIMU_MODE_INVERTED; } if (k >= tokens_len) { puts("buffer overflow"); return -2; } tokens[k++] = token; { memset(&(token), 0, sizeof(RegexToken)); token.count_lo = 1; token.count_hi = 2; }; } }
                if (c == '\\')
                {
                    esc_state = 1;
                }
                else if (c == '[')
                {
                    state = STATE_CC_INIT;
                    char_class_mem = -1;
                    token.kind = REMIMU_KIND_NORMAL;
                    if (pattern[i + 1] == '^')
                    {
                        token.mode |= REMIMU_MODE_INVERTED;
                        i += 1;
                    }
                }
                else if (c == '(')
                {
                    paren_count += 1;
                    state = STATE_NORMAL;
                    token.kind = REMIMU_KIND_OPEN;
                    token.count_lo = 0;
                    token.count_hi = 1;
                    if (pattern[i + 1] == '?' && pattern[i + 2] == ':')
                    {
                        token.kind = REMIMU_KIND_NCOPEN;
                        i += 2;
                    }
                    else if (pattern[i + 1] == '?' && pattern[i + 2] == '>')
                    {
                        token.kind = REMIMU_KIND_NCOPEN;
                        { if (k == 0 || tokens[k-1].kind != token.kind || (token.kind != REMIMU_KIND_BOUND && token.kind != REMIMU_KIND_NBOUND)) { if (token.mode & REMIMU_MODE_INVERTED) { for (int n = 0; n < 16; n++) token.mask[n] = ~token.mask[n]; token.mode &= ~REMIMU_MODE_INVERTED; } if (k >= tokens_len) { puts("buffer overflow"); return -2; } tokens[k++] = token; { memset(&(token), 0, sizeof(RegexToken)); token.count_lo = 1; token.count_hi = 2; }; } }
                        state = STATE_NORMAL;
                        token.kind = REMIMU_KIND_NCOPEN;
                        token.mode = REMIMU_MODE_POSSESSIVE;
                        token.count_lo = 1;
                        token.count_hi = 2;
                        i += 2;
                    }
                }
                else if (c == ')')
                {
                    paren_count -= 1;
                    if (paren_count < 0 || k == 0)
                        return -1;
                    token.kind = REMIMU_KIND_CLOSE;
                    state = STATE_QUANT;
                    int balance = 0;
                    ptrdiff_t found = -1;
                    for (ptrdiff_t l = k - 1; l >= 0; l--)
                    {
                        if (tokens[l].kind == REMIMU_KIND_NCOPEN || tokens[l].kind == REMIMU_KIND_OPEN)
                        {
                            if (balance == 0)
                            {
                                found = l;
                                break;
                            }
                            else
                                balance -= 1;
                        }
                        else if (tokens[l].kind == REMIMU_KIND_CLOSE)
                            balance += 1;
                    }
                    if (found == -1)
                        return -1;
                    ptrdiff_t diff = k - found;
                    if (diff > 32767)
                        return -1;
                    token.pair_offset = -diff;
                    tokens[found].pair_offset = diff;
                    if (tokens[found].mode == REMIMU_MODE_POSSESSIVE)
                    {
                        { if (k == 0 || tokens[k-1].kind != token.kind || (token.kind != REMIMU_KIND_BOUND && token.kind != REMIMU_KIND_NBOUND)) { if (token.mode & REMIMU_MODE_INVERTED) { for (int n = 0; n < 16; n++) token.mask[n] = ~token.mask[n]; token.mode &= ~REMIMU_MODE_INVERTED; } if (k >= tokens_len) { puts("buffer overflow"); return -2; } tokens[k++] = token; { memset(&(token), 0, sizeof(RegexToken)); token.count_lo = 1; token.count_hi = 2; }; } }
                        token.kind = REMIMU_KIND_CLOSE;
                        token.mode = REMIMU_MODE_POSSESSIVE;
                        token.pair_offset = -diff - 2;
                        tokens[found - 1].pair_offset = diff + 2;
                    }
                }
                else if (c == '?' || c == '+' || c == '*' || c == '{')
                {
                    puts("quantifier in non-quantifier context");
                    return -1;
                }
                else if (c == '.')
                {
                    { for (int n = 0; n < 16; n++) token.mask[n] = 0xFFFF; };
                    if (flags & REMIMU_FLAG_DOT_NO_NEWLINES)
                    {
                        token.mask[1] ^= 0x04;
                        token.mask[1] ^= 0x20;
                    }
                    state = STATE_QUANT;
                }
                else if (c == '^')
                {
                    token.kind = REMIMU_KIND_CARET;
                    state = STATE_NORMAL;
                }
                else if (c == '$')
                {
                    token.kind = REMIMU_KIND_DOLLAR;
                    state = STATE_NORMAL;
                }
                else if (c == '|')
                {
                    token.kind = REMIMU_KIND_OR;
                    state = STATE_NORMAL;
                }
                else
                {
                    { token.mask[((uint8_t)(c))>>4] |= 1 << ((uint8_t)(c) & 0xF); };
                    state = STATE_QUANT;
                }
            }
        }
        else if (state == STATE_CC_INIT || state == STATE_CC_NORMAL || state == STATE_CC_RANGE)
        {
            if (c == '\\' && esc_state == 0)
            {
                esc_state = 1;
                continue;
            }
            uint8_t esc_c = 0;
            if (esc_state == 1)
            {
                esc_state = 0;
                if (c == 'n')
                    esc_c = '\n';
                else if (c == 'r')
                    esc_c = '\r';
                else if (c == 't')
                    esc_c = '\t';
                else if (c == 'v')
                    esc_c = '\v';
                else if (c == 'f')
                    esc_c = '\f';
                else if (c == 'x')
                {
                    if (pattern[i+1] == 0 || pattern[i+2] == 0)
                        return -1;
                    uint8_t n0 = pattern[i+1];
                    uint8_t n1 = pattern[i+1];
                    if (n0 < '0' || n0 > 'f' || n1 < '0' || n1 > 'f' ||
                        (n0 > '9' && n0 < 'A') || (n1 > '9' && n1 < 'A'))
                        return -1;
                    if (n0 > 'F') n0 -= 0x20;
                    if (n1 > 'F') n1 -= 0x20;
                    if (n0 >= 'A') n0 -= 'A' - 10;
                    if (n1 >= 'A') n1 -= 'A' - 10;
                    n0 -= '0';
                    n1 -= '0';
                    esc_c = (n1 << 4) | n0;
                    i += 2;
                }
                else if (c == '{' || c == '}' ||
                         c == '[' || c == ']' || c == '-' ||
                         c == '(' || c == ')' ||
                         c == '|' || c == '^' || c == '$' ||
                         c == '*' || c == '+' || c == '?' || c == ':' ||
                         c == '.' || c == '/' || c == '\\')
                {
                    esc_c = c;
                }
                else if (c == 'd' || c == 's' || c == 'w' ||
                         c == 'D' || c == 'S' || c == 'W')
                {
                    if (state == STATE_CC_RANGE)
                    {
                        puts("tried to use a shorthand as part of a range");
                        return -1;
                    }
                    uint8_t is_upper = c <= 'Z';
                    uint16_t m[16];
                    memset(m, 0, sizeof(m));
                    if (is_upper)
                        c += 0x20;
                    if (c == 'd' || c == 'w')
                        m[3] |= 0x03FF;
                    if (c == 's')
                    {
                        m[0] |= 0x3E00;
                        m[2] |= 1;
                    }
                    if (c == 'w')
                    {
                        m[4] |= 0xFFFE;
                        m[5] |= 0x87FF;
                        m[6] |= 0xFFFE;
                        m[7] |= 0x07FF;
                    }
                    for (int i = 0; i < 16; i++)
                        token.mask[i] |= is_upper ? ~m[i] : m[i];
                    char_class_mem = -1;
                    continue;
                }
                else
                {
                    printf("unknown/unsupported escape sequence in character class (\\%c)\n", c);
                    return -1;
                }
            }
            if (state == STATE_CC_INIT)
            {
                char_class_mem = c;
                { token.mask[((uint8_t)(c))>>4] |= 1 << ((uint8_t)(c) & 0xF); };
                state = STATE_CC_NORMAL;
            }
            else if (state == STATE_CC_NORMAL)
            {
                if (c == ']' && esc_c == 0)
                {
                    char_class_mem = -1;
                    state = STATE_QUANT;
                    continue;
                }
                else if (c == '-' && esc_c == 0 && char_class_mem >= 0)
                {
                    state = STATE_CC_RANGE;
                    continue;
                }
                else
                {
                    char_class_mem = c;
                    { token.mask[((uint8_t)(c))>>4] |= 1 << ((uint8_t)(c) & 0xF); };
                    state = STATE_CC_NORMAL;
                }
            }
            else if (state == STATE_CC_RANGE)
            {
                if (c == ']' && esc_c == 0)
                {
                    char_class_mem = -1;
                    { token.mask[((uint8_t)('-'))>>4] |= 1 << ((uint8_t)('-') & 0xF); };
                    state = STATE_QUANT;
                    continue;
                }
                else
                {
                    if (char_class_mem == -1)
                    {
                        puts("character class range is broken");
                        return -1;
                    }
                    if ((uint8_t)c < char_class_mem)
                    {
                        puts("character class range is misordered");
                        return -1;
                    }
                    for (uint8_t i = c; i > char_class_mem; i--)
                        { token.mask[((uint8_t)(i))>>4] |= 1 << ((uint8_t)(i) & 0xF); };
                    state = STATE_CC_NORMAL;
                    char_class_mem = -1;
                }
            }
        }
        else
            ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 694, __extension__ __PRETTY_FUNCTION__); }));
    }
    if (paren_count > 0)
    {
        puts("(paren_count > 0)");
        return -1;
    }
    if (esc_state != 0)
    {
        puts("(esc_state != 0)");
        return -1;
    }
    if (state >= STATE_CC_INIT)
    {
        puts("(state >= STATE_CC_INIT)");
        return -1;
    }
    { if (k == 0 || tokens[k-1].kind != token.kind || (token.kind != REMIMU_KIND_BOUND && token.kind != REMIMU_KIND_NBOUND)) { if (token.mode & REMIMU_MODE_INVERTED) { for (int n = 0; n < 16; n++) token.mask[n] = ~token.mask[n]; token.mode &= ~REMIMU_MODE_INVERTED; } if (k >= tokens_len) { puts("buffer overflow"); return -2; } tokens[k++] = token; { memset(&(token), 0, sizeof(RegexToken)); token.count_lo = 1; token.count_hi = 2; }; } }
    token.kind = REMIMU_KIND_CLOSE;
    token.count_lo = 1;
    token.count_hi = 2;
    { if (k == 0 || tokens[k-1].kind != token.kind || (token.kind != REMIMU_KIND_BOUND && token.kind != REMIMU_KIND_NBOUND)) { if (token.mode & REMIMU_MODE_INVERTED) { for (int n = 0; n < 16; n++) token.mask[n] = ~token.mask[n]; token.mode &= ~REMIMU_MODE_INVERTED; } if (k >= tokens_len) { puts("buffer overflow"); return -2; } tokens[k++] = token; { memset(&(token), 0, sizeof(RegexToken)); token.count_lo = 1; token.count_hi = 2; }; } };
    token.kind = REMIMU_KIND_END;
    { if (k == 0 || tokens[k-1].kind != token.kind || (token.kind != REMIMU_KIND_BOUND && token.kind != REMIMU_KIND_NBOUND)) { if (token.mode & REMIMU_MODE_INVERTED) { for (int n = 0; n < 16; n++) token.mask[n] = ~token.mask[n]; token.mode &= ~REMIMU_MODE_INVERTED; } if (k >= tokens_len) { puts("buffer overflow"); return -2; } tokens[k++] = token; { memset(&(token), 0, sizeof(RegexToken)); token.count_lo = 1; token.count_hi = 2; }; } };
    tokens[0].pair_offset = k - 2;
    tokens[k-2].pair_offset = -(k - 2);
    *token_count = k;
    uint64_t n = 0;
    for (int16_t k2 = 0; k2 < k; k2++)
    {
        if (tokens[k2].kind == REMIMU_KIND_CLOSE)
        {
            tokens[k2].mask[0] = n++;
            int16_t k3 = k2 + tokens[k2].pair_offset;
            tokens[k3].count_lo = tokens[k2].count_lo;
            tokens[k3].count_hi = tokens[k2].count_hi;
            tokens[k3].mask[0] = n++;
            tokens[k3].mode = tokens[k2].mode;
            if (n > 1024)
                return -1;
        }
        else if (tokens[k2].kind == REMIMU_KIND_OR || tokens[k2].kind == REMIMU_KIND_OPEN || tokens[k2].kind == REMIMU_KIND_NCOPEN)
        {
            int balance = 0;
            ptrdiff_t found = -1;
            for (ptrdiff_t l = k2 + 1; l < tokens_len; l++)
            {
                if (tokens[l].kind == REMIMU_KIND_OR && balance == 0)
                {
                    found = l;
                    break;
                }
                else if (tokens[l].kind == REMIMU_KIND_CLOSE)
                {
                    if (balance == 0)
                    {
                        found = l;
                        break;
                    }
                    else
                        balance -= 1;
                }
                else if (tokens[l].kind == REMIMU_KIND_NCOPEN || tokens[l].kind == REMIMU_KIND_OPEN)
                    balance += 1;
            }
            if (found == -1)
            {
                puts("unbalanced parens...");
                return -1;
            }
            ptrdiff_t diff = found - k2;
            if (diff > 32767)
            {
                puts("too long...");
                return -1;
            }
            if (tokens[k2].kind == REMIMU_KIND_OR)
                tokens[k2].pair_offset = diff;
            else
                tokens[k2].mask[15] = diff;
        }
    }
    return 0;
}
typedef struct _RegexMatcherState {
    uint32_t k;
    uint32_t group_state;
    uint32_t prev;
    uint64_t i;
    uint64_t range_min;
    uint64_t range_max;
} RegexMatcherState;
static inline int64_t regex_match(const RegexToken * tokens, const char * text, size_t start_i, uint16_t cap_slots, int64_t * cap_pos, int64_t * cap_span)
{
    (void)text;
    const uint8_t verbose = 0;
    const uint16_t stack_size_max = 1024;
    const uint16_t aux_stats_size = 1024;
    if (cap_slots > aux_stats_size)
        cap_slots = aux_stats_size;
    uint8_t q_group_accepts_zero[aux_stats_size];
    uint32_t q_group_state[aux_stats_size];
    uint32_t q_group_stack[aux_stats_size];
    uint16_t q_group_cap_index[aux_stats_size];
    memset(q_group_cap_index, 0xFF, sizeof(q_group_cap_index));
    uint64_t tokens_len = 0;
    uint32_t k = 0;
    uint16_t caps = 0;
    while (tokens[k].kind != REMIMU_KIND_END)
    {
        if (tokens[k].kind == REMIMU_KIND_OPEN && caps < cap_slots)
        {
            q_group_cap_index[tokens[k].mask[0]] = caps;
            q_group_cap_index[tokens[k + tokens[k].pair_offset].mask[0]] = caps;
            cap_pos[caps] = -1;
            cap_span[caps] = -1;
            caps += 1;
        }
        k += 1;
        if (tokens[k].kind == REMIMU_KIND_CLOSE || tokens[k].kind == REMIMU_KIND_OPEN || tokens[k].kind == REMIMU_KIND_NCOPEN)
        {
            if (tokens[k].mask[0] >= aux_stats_size)
            {
                puts("too many qualified groups. returning");
                return -2;
            }
            q_group_state[tokens[k].mask[0]] = 0;
            q_group_stack[tokens[k].mask[0]] = 0;
            q_group_accepts_zero[tokens[k].mask[0]] = 0;
        }
    }
    tokens_len = k;
    RegexMatcherState rewind_stack[stack_size_max];
    uint16_t stack_n = 0;
    uint64_t i = start_i;
    uint64_t range_min = 0;
    uint64_t range_max = 0;
    uint8_t just_rewinded = 0;
    uint64_t w_mask[16];
    memset(w_mask, 0, sizeof(w_mask));
    w_mask[3] = 0x03FF;
    w_mask[4] = 0xFFFE;
    w_mask[5] = 0x87FF;
    w_mask[6] = 0xFFFE;
    w_mask[7] = 0x07FF;
    size_t limit = 10000;
    for (k = 0; k < tokens_len; k++)
    {
        if (limit == 0)
        {
            puts("iteration limit exceeded. returning");
            return -2;
        }
        { if (verbose) { printf("k: %u\ti: %zu\tl: %zu\tstack_n: %d\n", k, i, limit, stack_n); } }
        { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } };
        if (tokens[k].kind == REMIMU_KIND_CARET)
        {
            if (i != 0)
                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 975, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
            continue;
        }
        else if (tokens[k].kind == REMIMU_KIND_DOLLAR)
        {
            if (text[i] != 0)
                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 981, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
            continue;
        }
        else if (tokens[k].kind == REMIMU_KIND_BOUND)
        {
            if (i == 0 && !(!!(w_mask[((uint8_t)text[i])>>4] & (1 << ((uint8_t)text[i] & 0xF)))))
                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 987, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
            else if (i != 0 && text[i] == 0 && !(!!(w_mask[((uint8_t)text[i-1])>>4] & (1 << ((uint8_t)text[i-1] & 0xF)))))
                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 989, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
            else if (i != 0 && text[i] != 0 && (!!(w_mask[((uint8_t)text[i-1])>>4] & (1 << ((uint8_t)text[i-1] & 0xF)))) == (!!(w_mask[((uint8_t)text[i])>>4] & (1 << ((uint8_t)text[i] & 0xF)))))
                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 991, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
        }
        else if (tokens[k].kind == REMIMU_KIND_NBOUND)
        {
            if (i == 0 && (!!(w_mask[((uint8_t)text[i])>>4] & (1 << ((uint8_t)text[i] & 0xF)))))
                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 996, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
            else if (i != 0 && text[i] == 0 && (!!(w_mask[((uint8_t)text[i-1])>>4] & (1 << ((uint8_t)text[i-1] & 0xF)))))
                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 998, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
            else if (i != 0 && text[i] != 0 && (!!(w_mask[((uint8_t)text[i-1])>>4] & (1 << ((uint8_t)text[i-1] & 0xF)))) != (!!(w_mask[((uint8_t)text[i])>>4] & (1 << ((uint8_t)text[i] & 0xF)))))
                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1000, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
        }
        else
        {
            if (tokens[k].count_hi == 1)
            {
                if (tokens[k].kind == REMIMU_KIND_OPEN || tokens[k].kind == REMIMU_KIND_NCOPEN)
                    k += tokens[k].pair_offset;
                else
                    k += 1;
                continue;
            }
            if (tokens[k].kind == REMIMU_KIND_OPEN || tokens[k].kind == REMIMU_KIND_NCOPEN)
            {
                if (!just_rewinded)
                {
                    { if (verbose) { printf("hit OPEN. i is %zd, depth is %d\n", i, stack_n); } }
                    if ((tokens[k].mode & REMIMU_MODE_LAZY) && (tokens[k].count_lo == 0 || q_group_accepts_zero[tokens[k + tokens[k].pair_offset].mask[0]]))
                    {
                        { if (verbose) { puts("trying non-group case first....."); } }
                        range_min = 0;
                        range_max = 0;
                        { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1028, stack_n, s.prev); } } }
                        k += tokens[k].pair_offset;
                    }
                    else
                    {
                        range_min = 1;
                        range_max = 0;
                        { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1035, stack_n, s.prev); } } }
                    }
                }
                else
                {
                    { if (verbose) { printf("rewinded into OPEN. i is %zd, depth is %d\n", i, stack_n); } }
                    just_rewinded = 0;
                    uint64_t orig_k = k;
                    { if (verbose) { printf("--- trying to try another alternation, start k is %d, rmin is %zu\n", k, range_min); } }
                    if (range_min != 0)
                    {
                        { if (verbose) { puts("rangemin is not zero. checking..."); } }
                        k += range_min;
                        { if (verbose) { printf("start kind: %d\n", tokens[k].kind); } }
                        { if (verbose) { printf("before start kind: %d\n", tokens[k-1].kind); } }
                        if (tokens[k-1].kind == REMIMU_KIND_OR)
                            k += tokens[k-1].pair_offset - 1;
                        else if (tokens[k-1].kind == REMIMU_KIND_OPEN || tokens[k-1].kind == REMIMU_KIND_NCOPEN)
                            k += tokens[k-1].mask[15] - 1;
                        { if (verbose) { printf("kamakama %d %d\n", k, tokens[k].kind); } }
                        if (tokens[k].kind == REMIMU_KIND_END)
                            return -3;
                        { if (verbose) { printf("---?!?!   %d, %d\n", k, q_group_state[tokens[k].mask[0]]); } }
                        if (tokens[k].kind == REMIMU_KIND_CLOSE)
                        {
                            { if (verbose) { puts("!!~!~!~~~~!!~~!~   hit CLOSE. rewinding"); } }
                            if (tokens[k].count_lo == 0 || q_group_accepts_zero[tokens[k].mask[0]])
                            {
                                { if (verbose) { puts("continuing because we don't need this group"); } }
                                q_group_state[tokens[k].mask[0]] = 0;
                                if (!(tokens[k].mode & REMIMU_MODE_LAZY))
                                    q_group_stack[tokens[k].mask[0]] = 0;
                                continue;
                            }
                            else
                            {
                                { if (verbose) { puts("going to last point before this group"); } }
                                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1082, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
                                continue;
                            }
                        }
                        ((void) sizeof ((tokens[k].kind == REMIMU_KIND_OR) ? 1 : 0), __extension__ ({ if (tokens[k].kind == REMIMU_KIND_OR) ; else __assert_fail ("tokens[k].kind == REMIMU_KIND_OR", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1087, __extension__ __PRETTY_FUNCTION__); }));
                    }
                    { if (verbose) { printf("--- FOUND ALTERNATION for paren at k %zd at k %d\n", orig_k, k); } }
                    ptrdiff_t k_diff = k - orig_k;
                    range_min = k_diff + 1;
                    { if (verbose) { puts("(saving in paren after rewinding and looking for next regex token to check)"); } }
                    { if (verbose) { printf("%zd\n", range_min); } }
                    { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k - k_diff); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1097, stack_n, s.prev); } } }
                }
            }
            else if (tokens[k].kind == REMIMU_KIND_CLOSE)
            {
                if (tokens[k].count_lo == 1 && tokens[k].count_hi == 2)
                {
                    uint16_t cap_index = q_group_cap_index[tokens[k].mask[0]];
                    if (cap_index != 0xFFFF)
                        { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (1) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1108, stack_n, s.prev); } } }
                }
                else
                {
                    { if (verbose) { puts("closer test....."); } }
                    if (!just_rewinded)
                    {
                        uint32_t prev = q_group_stack[tokens[k].mask[0]];
                        { if (verbose) { printf("qrqrqrqrqrqrqrq-------      k %d, gs %d, gaz %d, i %zd, tklo %d, rmin %zd, tkhi %d, rmax %zd, prev %d, sn %d\n", k, q_group_state[tokens[k].mask[0]], q_group_accepts_zero[tokens[k].mask[0]], i, tokens[k].count_lo, range_min, tokens[k].count_hi, range_max, prev, stack_n); } }
                        range_max = tokens[k].count_hi;
                        range_max -= 1;
                        range_min = q_group_accepts_zero[tokens[k].mask[0]] ? 0 : tokens[k].count_lo;
                        { if (verbose) { printf("qzqzqzqzqzqzqzq-------      rmin %zd, rmax %zd\n", range_min, range_max); } }
                        if (q_group_state[tokens[k].mask[0]] + 1 < range_min)
                        {
                            { if (verbose) { puts("continuing minimum matches for a quantified group"); } }
                            q_group_state[tokens[k].mask[0]] += 1;
                            { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1132, stack_n, s.prev); } } }
                            k += tokens[k].pair_offset;
                            k -= 1;
                            continue;
                        }
                        else if (tokens[k].count_hi != 0 && q_group_state[tokens[k].mask[0]] + 1 > range_max)
                        {
                            { if (verbose) { printf("hit maximum allowed instances of a quantified group %d %zd\n", q_group_state[tokens[k].mask[0]], range_max); } }
                            range_max -= 1;
                            { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1143, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
                            continue;
                        }
                        uint8_t force_zero = 0;
                        if (prev != 0 && (uint32_t)rewind_stack[prev].i > (uint32_t)i)
                        {
                            size_t n = stack_n - 1;
                            while (n > 0 && rewind_stack[n].k != k + tokens[k].pair_offset)
                                n -= 1;
                            ((void) sizeof ((n > 0) ? 1 : 0), __extension__ ({ if (n > 0) ; else __assert_fail ("n > 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1156, __extension__ __PRETTY_FUNCTION__); }));
                            if (rewind_stack[n].i == i)
                                force_zero = 1;
                        }
                        if ((force_zero || (prev != 0 && (uint32_t)rewind_stack[prev].i == (uint32_t)i)))
                        {
                            { if (verbose) { printf("rejecting zero-length match..... %d %zd %zd\n", force_zero, rewind_stack[prev].i, i); } }
                            { if (verbose) { printf("%d (k: %d)\n", q_group_state[tokens[k].mask[0]], k); } }
                            q_group_accepts_zero[tokens[k].mask[0]] = 1;
                            { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1168, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
                        }
                        else if (tokens[k].mode & REMIMU_MODE_LAZY)
                        {
                            { if (verbose) { printf("nidnfasidfnidfndifn-------      %d, %d, %zd\n", q_group_state[tokens[k].mask[0]], tokens[k].count_lo, range_min); } }
                            if (prev)
                                { if (verbose) { printf("lazy doesn't think it's zero-length. prev i %zd vs i %zd (depth %d)\n", rewind_stack[prev].i, i, stack_n); } }
                            q_group_state[tokens[k].mask[0]] += 1;
                            { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1179, stack_n, s.prev); } } }
                            q_group_state[tokens[k].mask[0]] = 0;
                        }
                        else
                        {
                            { if (verbose) { puts("wahiwahi"); } }
                            if ((tokens[k].mode & REMIMU_MODE_POSSESSIVE))
                            {
                                uint32_t k2 = k;
                                if (q_group_state[tokens[k].mask[0]] == 0)
                                    k2 = k + tokens[k].pair_offset;
                                if (stack_n == 0)
                                    return -1;
                                stack_n -= 1;
                                while (stack_n > 0 && rewind_stack[stack_n].k != k2)
                                    stack_n -= 1;
                                if (stack_n == 0)
                                    return -1;
                            }
                            if ((uint32_t)q_group_state[tokens[k + tokens[k].pair_offset].mask[0]] < (uint32_t)i)
                            {
                                { if (verbose) { puts("REWINDING FROM GREEDY NON-REWIND CLOSER"); } }
                                q_group_state[tokens[k].mask[0]] += 1;
                                { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1209, stack_n, s.prev); } } }
                                k += tokens[k].pair_offset;
                                k -= 1;
                            }
                            else
                                { if (verbose) { puts("CONTINUING FROM GREEDY NON-REWIND CLOSER"); } }
                        }
                    }
                    else
                    {
                        { if (verbose) { puts("IN CLOSER REWIND!!!"); } }
                        just_rewinded = 0;
                        if (tokens[k].mode & REMIMU_MODE_LAZY)
                        {
                            { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (1) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1225, stack_n, s.prev); } } }
                            q_group_stack[tokens[k].mask[0]] = stack_n;
                            k += tokens[k].pair_offset;
                            k -= 1;
                        }
                        else
                        {
                            { if (verbose) { printf("kufukufu %d %zd\n", tokens[k].count_lo, range_min); } }
                            if (q_group_state[tokens[k].mask[0]] < range_min && !q_group_accepts_zero[tokens[k].mask[0]])
                            {
                                { if (verbose) { printf("rewinding from greedy group because we're going to go out of range (%d vs %zd)\n", q_group_state[tokens[k].mask[0]], range_min); } }
                                { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1239, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
                            }
                            else
                            {
                                { if (verbose) { puts("continuing past greedy group"); } }
                                q_group_state[tokens[k].mask[0]] = 0;
                                uint16_t cap_index = q_group_cap_index[tokens[k].mask[0]];
                                if (cap_index != 0xFFFF)
                                    { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (1) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1250, stack_n, s.prev); } } }
                            }
                        }
                    }
                }
            }
            else if (tokens[k].kind == REMIMU_KIND_OR)
            {
                { if (verbose) { printf("hit OR at %d. adding %d\n", k, tokens[k].pair_offset); } }
                k += tokens[k].pair_offset;
                k -= 1;
            }
            else if (tokens[k].kind == REMIMU_KIND_NORMAL)
            {
                if (!just_rewinded)
                {
                    uint64_t n = 0;
                    uint64_t old_i = i;
                    while (n < tokens[k].count_lo && text[i] != 0 && (!!(tokens[k].mask[((uint8_t)text[i])>>4] & (1 << ((uint8_t)text[i] & 0xF)))))
                    {
                        i += 1;
                        n += 1;
                    }
                    if (n < tokens[k].count_lo)
                    {
                        { if (verbose) { printf("non-match A. rewinding (token %d)\n", k); } }
                        i = old_i;
                        { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1278, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
                        continue;
                    }
                    if (tokens[k].mode & REMIMU_MODE_LAZY)
                    {
                        range_min = n;
                        range_max = tokens[k].count_hi - 1;
                        { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1286, stack_n, s.prev); } } }
                    }
                    else
                    {
                        uint64_t limit = tokens[k].count_hi;
                        if (limit == 0)
                            limit = ~limit;
                        range_min = n;
                        while (text[i] != 0 && (!!(tokens[k].mask[((uint8_t)text[i])>>4] & (1 << ((uint8_t)text[i] & 0xF)))) && n + 1 < limit)
                        {
                            { if (verbose) { printf("match!! (%c)\n", text[i]); } }
                            i += 1;
                            n += 1;
                        }
                        range_max = n;
                        { if (verbose) { printf("set rmin to %zd and rmax to %zd on entry into normal greedy token with k %d\n", range_min, range_max, k); } }
                        if (!(tokens[k].mode & REMIMU_MODE_POSSESSIVE))
                            { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1303, stack_n, s.prev); } } }
                    }
                }
                else
                {
                    just_rewinded = 0;
                    if (tokens[k].mode & REMIMU_MODE_LAZY)
                    {
                        uint64_t limit = range_max;
                        if (limit == 0)
                            limit = ~limit;
                        if ((!!(tokens[k].mask[((uint8_t)text[i])>>4] & (1 << ((uint8_t)text[i] & 0xF)))) && text[i] != 0 && range_min < limit)
                        {
                            { if (verbose) { printf("match2!! (%c) (k: %d)\n", text[i], k); } }
                            i += 1;
                            range_min += 1;
                            { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1321, stack_n, s.prev); } } }
                        }
                        else
                        {
                            { if (verbose) { printf("core rewind lazy (k: %d)\n", k); } }
                            { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1326, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
                        }
                    }
                    else
                    {
                        if (range_max > range_min)
                        {
                            { if (verbose) { printf("greedy normal going back (k: %d)\n", k); } }
                            i -= 1;
                            range_max -= 1;
                            { if (stack_n >= stack_size_max) { puts("out of backtracking room. returning"); return -2; } RegexMatcherState s; memset(&s, 0, sizeof(RegexMatcherState)); s.i = i; s.k = (k); s.range_min = range_min; s.range_max = range_max; s.prev = 0; if (0) s.prev = 0xFAC7; else if (tokens[s.k].kind == REMIMU_KIND_CLOSE) { s.group_state = q_group_state[tokens[s.k].mask[0]]; s.prev = q_group_stack[tokens[s.k].mask[0]]; q_group_stack[tokens[s.k].mask[0]] = stack_n; } rewind_stack[stack_n++] = s; { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- saving rewind state k %u i %zd rmin %zu rmax %zd (line %d) (depth %d prev %d)\n", s.k, i, range_min, range_max, 1337, stack_n, s.prev); } } }
                        }
                        else
                        {
                            { if (verbose) { printf("core rewind greedy (k: %d)\n", k); } }
                            { if (stack_n == 0) return -1; stack_n -= 1; while (stack_n > 0 && rewind_stack[stack_n].prev == 0xFAC7) stack_n -= 1; just_rewinded = 1; range_min = rewind_stack[stack_n].range_min; range_max = rewind_stack[stack_n].range_max; ((void) sizeof ((rewind_stack[stack_n].i <= i) ? 1 : 0), __extension__ ({ if (rewind_stack[stack_n].i <= i) ; else __assert_fail ("rewind_stack[stack_n].i <= i", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1342, __extension__ __PRETTY_FUNCTION__); })); i = rewind_stack[stack_n].i; k = rewind_stack[stack_n].k; if (tokens[k].kind == REMIMU_KIND_CLOSE) { q_group_state[tokens[k].mask[0]] = rewind_stack[stack_n].group_state; q_group_stack[tokens[k].mask[0]] = rewind_stack[stack_n].prev; } { { if (verbose) { printf("\033[91m"); for (uint64_t q = 0; q < i; q++) printf("%c", text[q]); printf("\033[0m"); for (uint64_t q = i; text[q] != 0; q++) printf("%c", text[q]); printf("\n"); } } } { if (verbose) { printf("-- rewound to k %u i %zd rmin %zu rmax %zd (kind %d prev %d)\n", k, i, range_min, range_max, tokens[k].kind, rewind_stack[stack_n].prev); } } k -= 1; }
                        }
                    }
                }
            }
            else
            {
                fprintf(stderr, "unimplemented token kind %d\n", tokens[k].kind);
                ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h", 1350, __extension__ __PRETTY_FUNCTION__); }));
            }
        }
    }
    if (caps != 0)
    {
        fflush(stdout);
        for (size_t n = 0; n < stack_n; n++)
        {
            RegexMatcherState s = rewind_stack[n];
            int kind = tokens[s.k].kind;
            if (kind == REMIMU_KIND_OPEN || kind == REMIMU_KIND_CLOSE)
            {
                uint16_t cap_index = q_group_cap_index[tokens[s.k].mask[0]];
                if (cap_index == 0xFFFF)
                    continue;
                if (tokens[s.k].kind == REMIMU_KIND_OPEN)
                    cap_pos[cap_index] = s.i;
                else if (cap_pos[cap_index] >= 0)
                    cap_span[cap_index] = s.i - cap_pos[cap_index];
            }
        }
        for (size_t n = 0; n < caps; n++)
        {
            if (cap_span[n] == -1)
                cap_pos[n] = -1;
        }
    }
    return i;
}
static inline void print_regex_tokens(RegexToken * tokens)
{
    const char * kind_to_str[] = {
        "NORMAL",
        "OPEN",
        "NCOPEN",
        "CLOSE",
        "OR",
        "CARET",
        "DOLLAR",
        "BOUND",
        "NBOUND",
        "END",
    };
    const char * mode_to_str[] = {
        "GREEDY",
        "POSSESS",
        "LAZY",
    };
    for (int k = 0;; k++)
    {
        printf("%s\t%s\t", kind_to_str[tokens[k].kind], mode_to_str[tokens[k].mode]);
        int c_old = -1;
        for (int c = 0; c < (tokens[k].kind ? 0 : 256); c++)
        {
            if ((!!(tokens[k].mask[((uint8_t)c)>>4] & (1 << ((uint8_t)c & 0xF)))))
            {
                if (c_old == -1)
                    c_old = c;
            }
            else if (c_old != -1)
            {
                if (c - 1 == c_old)
                {
                    { if (c_old >= 0x20 && c_old <= 0x7E) printf("%c", c_old); else printf("\\x%02x", c_old); }
                    c_old = -1;
                }
                else if (c - 2 == c_old)
                {
                    { if (c_old >= 0x20 && c_old <= 0x7E) printf("%c", c_old); else printf("\\x%02x", c_old); }
                    { if (c_old + 1 >= 0x20 && c_old + 1 <= 0x7E) printf("%c", c_old + 1); else printf("\\x%02x", c_old + 1); }
                    c_old = -1;
                }
                else
                {
                    { if (c_old >= 0x20 && c_old <= 0x7E) printf("%c", c_old); else printf("\\x%02x", c_old); }
                    printf("-");
                    { if (c - 1 >= 0x20 && c - 1 <= 0x7E) printf("%c", c - 1); else printf("\\x%02x", c - 1); }
                    c_old = -1;
                }
            }
        }
        printf("\t{%d,%d}\t(%d)\n", tokens[k].count_lo, tokens[k].count_hi - 1, tokens[k].pair_offset);
        if (tokens[k].kind == REMIMU_KIND_END)
            break;
    }
}

