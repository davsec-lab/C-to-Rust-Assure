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
typedef enum pgn_annotation_t {
    PGN_ANNOTATION_UNKNOWN = -1,
    PGN_ANNOTATION_NULL = 0,
    PGN_ANNOTATION_GOOD_MOVE,
    PGN_ANNOTATION_MISTAKE,
    PGN_ANNOTATION_BRILLIANT_MOVE,
    PGN_ANNOTATION_BLUNDER,
    PGN_ANNOTATION_INTRESTING_MOVE,
    PGN_ANNOTATION_DUBIOUS_MOVE,
} pgn_annotation_t;
pgn_annotation_t __pgn_annotation_nag_from_string(char *str, size_t *consumed);
pgn_annotation_t __pgn_annotation_from_string(char *str, size_t *consumed);
pgn_annotation_t pgn_annotation_from_string(char *str);
size_t pgn_annotation_to_string(pgn_annotation_t annotation, char *dest);
typedef long int ptrdiff_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
_Bool pgn_cursor_skip_whitespace(char *str, size_t *cursor);
_Bool pgn_cursor_revisit_whitespace(char *str, size_t *cursor);
_Bool pgn_cursor_skip_comment(char *str, size_t *cursor);
_Bool pgn_cursor_skip_newline(char *str, size_t *cursor);

pgn_annotation_t __pgn_annotation_nag_from_string(char *str, size_t *consumed)
{
    pgn_annotation_t annotation = PGN_ANNOTATION_UNKNOWN;
    size_t cursor = 0;
    if (str[cursor] != '$')
        return annotation;
    while (str[cursor] == '$')
    {
        ((void) sizeof ((((*__ctype_b_loc ())[(int) ((str[++cursor]))] & (unsigned short int) _ISdigit)) ? 1 : 0), __extension__ ({ if (((*__ctype_b_loc ())[(int) ((str[++cursor]))] & (unsigned short int) _ISdigit)) ; else __assert_fail ("isdigit(str[++cursor])", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/annotation.c", 42, __extension__ __PRETTY_FUNCTION__); }));
        char *endptr = ((void*)0);
        long num = strtol(str + cursor, &endptr, 10);
        annotation = num;
        cursor += endptr - (str + cursor);
        pgn_cursor_skip_whitespace(str, &cursor);
    }
    pgn_cursor_revisit_whitespace(str, &cursor);
    *consumed += cursor;
    return annotation;
}
pgn_annotation_t __pgn_annotation_from_string(char *str, size_t *consumed)
{
    pgn_annotation_t annotation = PGN_ANNOTATION_UNKNOWN;
    if (str[0] == '\0')
        return annotation;
    if (str[0] == '!') {
        (*consumed)++;
        annotation = PGN_ANNOTATION_GOOD_MOVE;
    }
    if (str[0] == '?') {
        (*consumed)++;
        annotation = PGN_ANNOTATION_MISTAKE;
    }
    if (str[1] == '\0')
        return annotation;
    if (str[0] == '!' && str[1] == '!') {
        (*consumed)++;
        annotation = PGN_ANNOTATION_BRILLIANT_MOVE;
    }
    if (str[0] == '!' && str[1] == '?') {
        (*consumed)++;
        annotation = PGN_ANNOTATION_INTRESTING_MOVE;
    }
    if (str[0] == '?' && str[1] == '!') {
        (*consumed)++;
        annotation = PGN_ANNOTATION_DUBIOUS_MOVE;
    }
    if (str[0] == '?' && str[1] == '?') {
        (*consumed)++;
        annotation = PGN_ANNOTATION_BLUNDER;
    }
    return annotation;
}
pgn_annotation_t pgn_annotation_from_string(char *str)
{
    size_t consumed = 0;
    return __pgn_annotation_from_string(str, &consumed);
}
size_t pgn_annotation_to_string(pgn_annotation_t annotation, char *dest)
{
    switch (annotation) {
    case PGN_ANNOTATION_UNKNOWN: return 0;
    case PGN_ANNOTATION_NULL: break;
    case PGN_ANNOTATION_GOOD_MOVE:
        strcpy(dest, "!");
        return 1;
    case PGN_ANNOTATION_MISTAKE:
        strcpy(dest, "?");
        return 1;
    case PGN_ANNOTATION_BRILLIANT_MOVE:
        strcpy(dest, "!!");
        return 2;
    case PGN_ANNOTATION_BLUNDER:
        strcpy(dest, "??");
        return 2;
    case PGN_ANNOTATION_INTRESTING_MOVE:
        strcpy(dest, "!?");
        return 2;
    case PGN_ANNOTATION_DUBIOUS_MOVE:
        strcpy(dest, "?!");
        return 2;
    }
    int bytes = sprintf(dest, "$%d", annotation);
    ((void) sizeof ((bytes >= 0) ? 1 : 0), __extension__ ({ if (bytes >= 0) ; else __assert_fail ("bytes >= 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/annotation.c", 137, __extension__ __PRETTY_FUNCTION__); }));
    return bytes;
}

typedef enum pgn_piece_t {
    PGN_PIECE_UNKNOWN = 0,
    PGN_PIECE_PAWN = 'P',
    PGN_PIECE_ROOK = 'R',
    PGN_PIECE_KNIGHT = 'N',
    PGN_PIECE_BISHOP = 'B',
    PGN_PIECE_QUEEN = 'Q',
    PGN_PIECE_KING = 'K',
} pgn_piece_t;
pgn_piece_t pgn_piece_from_char(char ch);
char *pgn_piece_to_string(pgn_piece_t piece);
void __pgn_export(void);
typedef struct pgn_buffer_t {
    char *buf;
    size_t length;
    size_t size;
} pgn_buffer_t;
pgn_buffer_t *pgn_buffer_init(void);
void pgn_buffer_grow(pgn_buffer_t *buf);
void pgn_buffer_reset(pgn_buffer_t *buf);
_Bool pgn_buffer_equal(pgn_buffer_t *buf, char *str);
void pgn_buffer_append(pgn_buffer_t *buf, char ch);
void pgn_buffer_append_null_terminator(pgn_buffer_t *buf);
void pgn_buffer_concat(pgn_buffer_t *buf, char *str);
char *pgn_buffer_detach(pgn_buffer_t *buf);
void pgn_buffer_cleanup(pgn_buffer_t *buf);
typedef struct __pgn_metadata_item_t {
    pgn_buffer_t *key;
    pgn_buffer_t *value;
} __pgn_metadata_item_t;
typedef struct pgn_metadata_t {
    __pgn_metadata_item_t *items;
    size_t length, size;
} pgn_metadata_t;
void __pgn_metadata_item_init(__pgn_metadata_item_t *item);
void __pgn_metadata_item_cleanup(__pgn_metadata_item_t *item);
           pgn_metadata_t *pgn_metadata_init(void);
           pgn_metadata_t *__pgn_metadata_from_string(char *str, size_t *consumed);
           pgn_metadata_t *pgn_metadata_from_string(char *str);
           void pgn_metadata_insert(pgn_metadata_t *metadata, char *key, char *value);
           char *pgn_metadata_get(pgn_metadata_t *metadata, char *key);
           void pgn_metadata_delete(pgn_metadata_t *metadata, char *key);
           void pgn_metadata_cleanup(pgn_metadata_t *metadata);
typedef struct pgn_coordinate_t {
    char file;
    int rank;
} pgn_coordinate_t;
int pgn_coordinate_file_as_index(char file);

typedef enum pgn_score_t {
    PGN_SCORE_UNKNOWN = 0,
    PGN_SCORE_ONGOING,
    PGN_SCORE_DRAW,
    PGN_SCORE_WHITE_WON,
    PGN_SCORE_BLACK_WON,
    PGN_SCORE_FORFEIT,
    PGN_SCORE_WHITE_FORFEIT,
    PGN_SCORE_BLACK_FORFEIT,
} pgn_score_t;
pgn_score_t __pgn_score_from_string(char *str, size_t *consumed);
pgn_score_t pgn_score_from_string(char *str);
char *pgn_score_to_string(pgn_score_t score);

typedef enum pgn_check_t {
    PGN_CHECK_MATE = -1,
    PGN_CHECK_NONE = 0,
    PGN_CHECK_SINGLE,
    PGN_CHECK_DOUBLE,
} pgn_check_t;
pgn_check_t __pgn_check_from_string(char *str, size_t *consumed);
pgn_check_t pgn_check_from_string(char *str);
typedef enum pgn_comment_position_t {
    PGN_COMMENT_POSITION_UNKNOWN = 0,
    PGN_COMMENT_POSITION_BEFORE_MOVE,
    PGN_COMMENT_POSITION_BETWEEN_MOVE,
    PGN_COMMENT_POSITION_AFTER_MOVE,
    PGN_COMMENT_POSITION_AFTER_ALTERNATIVE,
} pgn_comment_position_t;
typedef struct pgn_comment_t {
    pgn_comment_position_t position;
    pgn_buffer_t *value;
} pgn_comment_t;
typedef struct pgn_comments_t {
    pgn_comment_t *values;
    size_t length;
    size_t size;
} pgn_comments_t;
void pgn_comment_init(pgn_comment_t *comment);
char *pgn_comment_value(pgn_comment_t *comment);
pgn_comment_t __pgn_comment_from_string(char *str, size_t *consumed);
void pgn_comment_cleanup(pgn_comment_t *comment);
pgn_comments_t *pgn_comments_init(void);
void pgn_comments_push(pgn_comments_t *comments, pgn_comment_t comment);
size_t pgn_comments_poll(pgn_comments_t **comments, pgn_comment_position_t pos, char *str);
int pgn_comments_get_first_after_alternative_index(pgn_comments_t *comments);
void pgn_comments_cleanup(pgn_comments_t *comments);
typedef struct pgn_moves_t pgn_moves_t;
typedef struct __pgn_moves_item_t __pgn_moves_item_t;
typedef struct pgn_alternative_moves_t {
    pgn_moves_t **values;
    size_t length;
    size_t size;
} pgn_alternative_moves_t;
typedef struct pgn_move_t {
    pgn_piece_t piece, promoted_to;
    char notation[16];
    int castles;
    _Bool captures;
    _Bool en_passant;
    pgn_check_t check;
    pgn_coordinate_t from, dest;
    pgn_annotation_t annotation;
    pgn_comments_t *comments;
    pgn_alternative_moves_t *alternatives;
} pgn_move_t;
struct __pgn_moves_item_t {
    pgn_move_t white;
    pgn_move_t black;
};
struct pgn_moves_t {
    __pgn_moves_item_t *values;
    size_t length;
    size_t size;
};
pgn_move_t __pgn_move_from_string(char *str, size_t *consumed);
pgn_move_t pgn_move_from_string(char *str);
size_t pgn_move_to_string(pgn_move_t *move, char *dest);
pgn_moves_t *__pgn_moves_from_string(char *str, size_t *consumed);
pgn_moves_t *pgn_moves_from_string(char *str);
pgn_alternative_moves_t *pgn_alternative_moves_init(void);
size_t pgn_alternative_moves_poll(pgn_alternative_moves_t **alt, pgn_comments_t **placeholder, char *str, int expect);
void pgn_alternative_moves_push(pgn_alternative_moves_t *alt, pgn_moves_t *moves);
void pgn_alternative_moves_cleanup(pgn_alternative_moves_t *alt);
           pgn_moves_t *pgn_moves_init(void);
           void pgn_moves_push(pgn_moves_t *moves, __pgn_moves_item_t __moves);
           void pgn_moves_cleanup(pgn_moves_t *moves);
typedef struct pgn_t {
    pgn_metadata_t *metadata;
    pgn_moves_t *moves;
    pgn_score_t score;
} pgn_t;
           pgn_t *pgn_init(void);
           void pgn_cleanup(pgn_t *pgn);
           pgn_metadata_t *pgn_parse_metadata(char *str);
           pgn_move_t pgn_parse_move(char *str);
           pgn_moves_t *pgn_parse_moves(char *str);
           pgn_score_t pgn_parse_score(char *str);
           size_t pgn_parse(pgn_t *pgn, char *str);
void fmt_print(pgn_t *pgn);
_Bool fmt_print_moves(pgn_moves_t *moves, int depth, size_t last_number, _Bool root);
void fmt_print_tab(int depth, int width)
{
    for (int i = 0; i < depth; i++) {
        for (int j = 0; j < width; j++) {
            printf(" ");
        }
    }
}
_Bool fmt_print_metadata(pgn_metadata_t *mt)
{
    _Bool printed = 0;
    for (size_t i = 0; i < mt->length; i++) {
        printf("[%s \"%s\"]\n", mt->items[i].key->buf, mt->items[i].value->buf);
        printed = 1;
    }
    return printed;
}
_Bool fmt_print_alternative_moves(pgn_alternative_moves_t *alt, int depth, size_t last_number)
{
    _Bool printed = 0;
    for (size_t i = 0; i < alt->length; i++) {
        printf("\n");
        fmt_print_tab(depth, 4);
        printf("(");
        fmt_print_moves(alt->values[i], depth, last_number, 0);
        printf(")");
    }
    return printed;
}
_Bool __fmt_print_comment_before(pgn_comments_t *comments)
{
    _Bool printed = 0;
    for (size_t i = 0; i < comments->length; i++) {
        pgn_comment_t comment = comments->values[i];
        if (comment.position == PGN_COMMENT_POSITION_BEFORE_MOVE) {
            printf("{%s} ", comment.value->buf);
        }
        printed = 1;
    }
    return printed;
}
_Bool __fmt_print_comment_after(pgn_comments_t *comments)
{
    _Bool printed = 0;
    for (size_t i = 0; i < comments->length; i++) {
        pgn_comment_t comment = comments->values[i];
        if (comment.position == PGN_COMMENT_POSITION_AFTER_MOVE) {
            printf(" {%s}", comment.value->buf);
        }
        printed = 1;
    }
    return printed;
}
_Bool __fmt_print_white(pgn_move_t *move, size_t depth, size_t number)
{
    _Bool printed = 0;
    if (move->notation[0]) {
        if (move->comments) {
            __fmt_print_comment_before(move->comments);
        }
        printf("%zu. %s", number, move->notation);
        if (move->comments) {
            __fmt_print_comment_after(move->comments);
        }
        if (move->alternatives) {
            fmt_print_alternative_moves(move->alternatives, depth + 1, number);
        }
        printed = 1;
    }
    return printed;
}
_Bool __fmt_print_black(pgn_move_t *move, size_t depth, size_t number, _Bool white_printed)
{
    _Bool printed = 0;
    if (move->notation[0]) {
        if (white_printed) {
            printf(" ");
        }
        if (move->comments) {
            __fmt_print_comment_before(move->comments);
        }
        if (!white_printed) {
            printf("%zu... ", number);
        }
        printf("%s", move->notation);
        if (move->comments) {
            __fmt_print_comment_after(move->comments);
        }
        if (move->alternatives) {
            fmt_print_alternative_moves(move->alternatives, depth + 1, number);
        }
        printed = 1;
    }
    return printed;
}
_Bool fmt_print_moves(pgn_moves_t *moves, int depth, size_t last_number, _Bool root)
{
    _Bool printed = 0;
    for (size_t i = 0; i < moves->length; i++) {
        pgn_move_t white = moves->values[i].white;
        pgn_move_t black = moves->values[i].black;
        _Bool white_printed = __fmt_print_white(&white, depth, last_number + i);
        _Bool black_printed = __fmt_print_black(&black, depth, last_number + i, white_printed);
        if (i != moves->length - 1) {
            printf("\n");
            fmt_print_tab(depth, 4);
            if (!root)
                printf(" ");
        }
        printed = 1;
    }
    return printed;
}
_Bool fmt_print_score(pgn_t *pgn)
{
    char *score = pgn_metadata_get(pgn->metadata, "Result");
    if (!score) return 0;
    printf("%s\n", score);
    return 1;
}
void fmt_print(pgn_t *pgn)
{
    if (fmt_print_metadata(pgn->metadata))
        printf("\n");
    if (fmt_print_moves(pgn->moves, 0, 1, 1))
        printf("\n");
    fmt_print_score(pgn);
}
char *read_file(char *filename)
{
    FILE *fp = fopen(filename, "r");
    if (!fp) {
        fprintf(stderr, "ERROR: file '%s' is not found\n", filename);
        exit(1);
    }
    fseek(fp, 0, 2);
    int filesize = ftell(fp);
    fseek(fp, 0, 0);
    char *buf = malloc((sizeof *buf) * (filesize + 1));
    fread(buf, sizeof *buf, filesize, fp);
    buf[filesize] = '\0';
    fclose(fp);
    return buf;
}
void run_subcommand_fmt(int argc, char **argv)
{
    if (argc <= 2) {
        fprintf(stderr, "ERROR: no pgn file provided.\n");
        exit(1);
    }
    char *filename = argv[2];
    char *pgn_file_contents = read_file(filename);
    char *saved_ptr = pgn_file_contents;
    while (*pgn_file_contents) {
        pgn_t *pgn = pgn_init();
        size_t consumed = pgn_parse(pgn, pgn_file_contents);
        pgn_file_contents += consumed;
        while (((*__ctype_b_loc ())[(int) ((*pgn_file_contents))] & (unsigned short int) _ISspace))
            pgn_file_contents++;
        fmt_print(pgn);
        if (*pgn_file_contents)
            printf("\n");
        pgn_cleanup(pgn);
    }
    free(saved_ptr);
}
int main(int argc, char **argv)
{
    if (argc <= 1) {
        fprintf(stderr, "ERROR: no subcommand provided.\n");
        exit(1);
    }
    char *subcommand = argv[1];
    if (strcmp(subcommand, "fmt") == 0) {
        run_subcommand_fmt(argc, argv);
        return 0;
    }
    fprintf(stderr, "ERROR: unknown subcommand '%s'.\n", subcommand);
    return 1;
}
pgn_check_t __pgn_check_from_string(char *str, size_t *consumed)
{
    size_t cursor = 0;
    pgn_check_t check = PGN_CHECK_NONE;
    switch (str[cursor]) {
        case '+':
            while (str[cursor] == '+') {
                check++;
                cursor++;
            }
            ((void) sizeof ((check <= 2) ? 1 : 0), __extension__ ({ if (check <= 2) ; else __assert_fail ("check <= 2", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/check.c", 35, __extension__ __PRETTY_FUNCTION__); }));
            break;
        case '#':
            check = PGN_CHECK_MATE;
            cursor++;
            break;
    }
    *consumed += cursor;
    return check;
}
pgn_check_t pgn_check_from_string(char *str)
{
    size_t consumed = 0;
    return __pgn_check_from_string(str, &consumed);
}
void pgn_comment_init(pgn_comment_t *comment)
{
    comment->value = pgn_buffer_init();
    comment->position = PGN_COMMENT_POSITION_UNKNOWN;
}
char *pgn_comment_value(pgn_comment_t *comment)
{
    return comment->value->buf;
}
pgn_comment_t __pgn_comment_from_string(char *str, size_t *consumed)
{
    size_t cursor = 0;
    pgn_comment_t comment;
    pgn_comment_init(&comment);
    ((void) sizeof ((str[cursor++] == '{') ? 1 : 0), __extension__ ({ if (str[cursor++] == '{') ; else __assert_fail ("str[cursor++] == '{'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/comments.c", 43, __extension__ __PRETTY_FUNCTION__); }));
    unsigned int left_brace_count = 1, right_brace_count = 0;
    while (1) {
        if (str[cursor] == '\0')
            abort();
        left_brace_count += str[cursor] == '{';
        right_brace_count += str[cursor] == '}';
        if (right_brace_count == left_brace_count) {
            break;
        }
        pgn_buffer_append(comment.value, str[cursor]);
        cursor++;
    }
    ((void) sizeof ((str[cursor++] == '}') ? 1 : 0), __extension__ ({ if (str[cursor++] == '}') ; else __assert_fail ("str[cursor++] == '}'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/comments.c", 64, __extension__ __PRETTY_FUNCTION__); }));
    pgn_buffer_append_null_terminator(comment.value);
    *consumed += cursor;
    return comment;
}
void pgn_comment_cleanup(pgn_comment_t *comment)
{
    pgn_buffer_cleanup(comment->value);
}
pgn_comments_t *pgn_comments_init(void)
{
    pgn_comments_t *comments = malloc(sizeof *comments);
    comments->values = malloc((sizeof *comments->values) * 1);
    comments->size = 1;
    comments->length = 0;
    return comments;
}
void pgn_comments_push(pgn_comments_t *comments, pgn_comment_t comment)
{
    if (comments->length >= comments->size) {
        comments->size += 1;
        comments->values = realloc(comments->values, (sizeof *comments->values) * comments->size);
    }
    comments->values[comments->length++] = comment;
}
size_t pgn_comments_poll(pgn_comments_t **comments, pgn_comment_position_t pos, char *str)
{
    size_t cursor = 0;
    if (str[cursor] == '{') {
        if (!*comments) *comments = pgn_comments_init();
        while (str[cursor] == '{') {
            pgn_comment_t comment = __pgn_comment_from_string(str + cursor, &cursor);
            comment.position = pos;
            pgn_comments_push(*comments, comment);
            pgn_cursor_skip_whitespace(str, &cursor);
        }
        ((void) sizeof ((str[cursor] != '{') ? 1 : 0), __extension__ ({ if (str[cursor] != '{') ; else __assert_fail ("str[cursor] != '{'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/comments.c", 110, __extension__ __PRETTY_FUNCTION__); }));
        ((void) sizeof ((str[cursor] != '}') ? 1 : 0), __extension__ ({ if (str[cursor] != '}') ; else __assert_fail ("str[cursor] != '}'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/comments.c", 111, __extension__ __PRETTY_FUNCTION__); }));
        pgn_cursor_skip_whitespace(str, &cursor);
    }
    return cursor;
}
int pgn_comments_get_first_after_alternative_index(pgn_comments_t *comments)
{
    for (int i = 0; i < (int)comments->length; i++) {
        if (comments->values[i].position == PGN_COMMENT_POSITION_AFTER_ALTERNATIVE) {
            return i;
        }
    }
    return -1;
}
void pgn_comments_cleanup(pgn_comments_t *comments)
{
    for (size_t i = 0; i < comments->length; i++) {
        pgn_comment_cleanup(&comments->values[i]);
    }
    free(comments->values);
    free(comments);
}
int pgn_coordinate_file_as_index(char file)
{
    return file - (((*__ctype_b_loc ())[(int) ((file))] & (unsigned short int) _ISupper) ? 'A' : 'a');
}
pgn_metadata_t *__pgn_metadata_from_string(char *str, size_t *consumed)
{
    size_t cursor = 0;
    if (str[cursor] != '[') return ((void*)0);
    pgn_metadata_t *metadata = pgn_metadata_init();
    pgn_buffer_t *key_buffer = pgn_buffer_init();
    pgn_buffer_t *value_buffer = pgn_buffer_init();
    for (;;) {
        if (str[cursor] != '[') break;
        cursor++;
        while (str[cursor] != ' ') pgn_buffer_append(key_buffer, str[cursor++]);
        pgn_buffer_append_null_terminator(key_buffer);
        ((void) sizeof ((str[++cursor] == '"') ? 1 : 0), __extension__ ({ if (str[++cursor] == '"') ; else __assert_fail ("str[++cursor] == '\"'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/metadata.c", 45, __extension__ __PRETTY_FUNCTION__); }));
        cursor++;
        while (str[cursor] != '"') pgn_buffer_append(value_buffer, str[cursor++]);
        pgn_buffer_append_null_terminator(value_buffer);
        pgn_metadata_insert(metadata, key_buffer->buf, value_buffer->buf);
        pgn_buffer_reset(key_buffer);
        pgn_buffer_reset(value_buffer);
        ((void) sizeof ((str[++cursor] == ']') ? 1 : 0), __extension__ ({ if (str[++cursor] == ']') ; else __assert_fail ("str[++cursor] == ']'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/metadata.c", 55, __extension__ __PRETTY_FUNCTION__); }));
        cursor++;
        pgn_cursor_skip_newline(str, &cursor);
    }
    *consumed += cursor;
    pgn_buffer_cleanup(key_buffer);
    pgn_buffer_cleanup(value_buffer);
    return metadata;
}
pgn_metadata_t *pgn_metadata_from_string(char *str)
{
    size_t consumed = 0;
    return __pgn_metadata_from_string(str, &consumed);
}
void __pgn_metadata_item_init(__pgn_metadata_item_t *item)
{
    item->key = pgn_buffer_init();
    item->value = pgn_buffer_init();
}
void __pgn_metadata_item_cleanup(__pgn_metadata_item_t *item)
{
    pgn_buffer_cleanup(item->key);
    pgn_buffer_cleanup(item->value);
}
pgn_metadata_t *pgn_metadata_init(void)
{
    pgn_metadata_t *metadata = malloc(sizeof *metadata);
    metadata->items = malloc((sizeof *metadata->items) * 8);
    metadata->size = 8;
    metadata->length = 0;
    return metadata;
}
void pgn_metadata_insert(pgn_metadata_t *metadata, char *key, char *value)
{
    if (metadata->length >= metadata->size) {
        metadata->size += 8;
        metadata->items = realloc(metadata->items, (sizeof *metadata->items) * metadata->size);
    }
    __pgn_metadata_item_t item = {0};
    __pgn_metadata_item_init(&item);
    pgn_buffer_concat(item.key, key);
    pgn_buffer_concat(item.value, value);
    metadata->items[metadata->length++] = item;
}
char *pgn_metadata_get(pgn_metadata_t *metadata, char *key)
{
    for (size_t i = 0; i < metadata->length; i++) {
        if (pgn_buffer_equal(metadata->items[i].key, key)) {
            return metadata->items[i].value->buf;
        }
    }
    return ((void*)0);
}
void pgn_metadata_delete(pgn_metadata_t *metadata, char *key)
{
    for (size_t i = 0; i < metadata->length; i++) {
        if (!pgn_buffer_equal(metadata->items[i].key, key)) {
            continue;
        }
        __pgn_metadata_item_cleanup(&metadata->items[i]);
        for (size_t j = i; j < metadata->length - 1; j++) {
            metadata->items[j] = metadata->items[j + 1];
        }
        metadata->length--;
        break;
    }
}
void pgn_metadata_cleanup(pgn_metadata_t *metadata)
{
    for (size_t i = 0; i < metadata->length; i++) {
        __pgn_metadata_item_cleanup(&metadata->items[i]);
    }
    free(metadata->items);
    free(metadata);
}
pgn_move_t __pgn_move_from_string(char *str, size_t *consumed)
{
    pgn_move_t move = {0};
    size_t cursor = 0;
    if (str[cursor] == 'O') {
        ((void) sizeof ((str[++cursor] == '-') ? 1 : 0), __extension__ ({ if (str[++cursor] == '-') ; else __assert_fail ("str[++cursor] == '-'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 43, __extension__ __PRETTY_FUNCTION__); }));
        ((void) sizeof ((str[++cursor] == 'O') ? 1 : 0), __extension__ ({ if (str[++cursor] == 'O') ; else __assert_fail ("str[++cursor] == 'O'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 44, __extension__ __PRETTY_FUNCTION__); }));
        move.castles = 2;
        cursor++;
        if (str[cursor] == '-') {
            ((void) sizeof ((str[++cursor] == 'O') ? 1 : 0), __extension__ ({ if (str[++cursor] == 'O') ; else __assert_fail ("str[++cursor] == 'O'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 49, __extension__ __PRETTY_FUNCTION__); }));
            move.castles = 3;
            cursor++;
        }
        goto check;
    }
    move.piece = pgn_piece_from_char(str[cursor++]);
    if (move.piece == PGN_PIECE_UNKNOWN) {
        move.piece = PGN_PIECE_PAWN;
        cursor--;
    }
    if (((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISlower) && str[cursor] != 'x') move.from.file = str[cursor++];
    if (((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISdigit)) move.from.rank = str[cursor++] - '0';
    move.captures = str[cursor] == 'x' || str[cursor] == ':';
    cursor += move.captures;
    if (((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISlower)) {
        ((void) sizeof ((((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISlower)) ? 1 : 0), __extension__ ({ if (((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISlower)) ; else __assert_fail ("islower(str[cursor])", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 72, __extension__ __PRETTY_FUNCTION__); }));
        move.dest.file = str[cursor++];
        ((void) sizeof ((((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISdigit)) ? 1 : 0), __extension__ ({ if (((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISdigit)) ; else __assert_fail ("isdigit(str[cursor])", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 74, __extension__ __PRETTY_FUNCTION__); }));
        move.dest.rank = str[cursor++] - '0';
    } else {
        move.dest = move.from;
        move.from = (pgn_coordinate_t){0};
    }
    move.promoted_to = pgn_piece_from_char(str[cursor]);
    if (move.promoted_to == PGN_PIECE_UNKNOWN) {
        switch (str[cursor]) {
        case '(':
            move.promoted_to = pgn_piece_from_char(str[++cursor]);
            ((void) sizeof ((move.promoted_to != PGN_PIECE_UNKNOWN) ? 1 : 0), __extension__ ({ if (move.promoted_to != PGN_PIECE_UNKNOWN) ; else __assert_fail ("move.promoted_to != PGN_PIECE_UNKNOWN", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 86, __extension__ __PRETTY_FUNCTION__); }));
            ((void) sizeof ((str[++cursor] == ')') ? 1 : 0), __extension__ ({ if (str[++cursor] == ')') ; else __assert_fail ("str[++cursor] == ')'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 87, __extension__ __PRETTY_FUNCTION__); }));
            cursor++;
            break;
        case '=':
        case '/':
            move.promoted_to = pgn_piece_from_char(str[++cursor]);
            ((void) sizeof ((move.promoted_to != PGN_PIECE_UNKNOWN) ? 1 : 0), __extension__ ({ if (move.promoted_to != PGN_PIECE_UNKNOWN) ; else __assert_fail ("move.promoted_to != PGN_PIECE_UNKNOWN", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 93, __extension__ __PRETTY_FUNCTION__); }));
            cursor++;
            break;
        }
    }
    ((void) sizeof ((move.dest.file != 0) ? 1 : 0), __extension__ ({ if (move.dest.file != 0) ; else __assert_fail ("move.dest.file != 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 99, __extension__ __PRETTY_FUNCTION__); }));
    ((void) sizeof ((move.dest.rank != 0) ? 1 : 0), __extension__ ({ if (move.dest.rank != 0) ; else __assert_fail ("move.dest.rank != 0", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 100, __extension__ __PRETTY_FUNCTION__); }));
check:
    move.check = __pgn_check_from_string(str + cursor, &cursor);
    move.annotation = __pgn_annotation_from_string(str + cursor, &cursor);
    _Bool skipped_whitespace_before_ep = pgn_cursor_skip_whitespace(str, &cursor);
    if (str[cursor] == 'e' && str[cursor + 1] == '.') {
        ((void) sizeof ((skipped_whitespace_before_ep) ? 1 : 0), __extension__ ({ if (skipped_whitespace_before_ep) ; else __assert_fail ("skipped_whitespace_before_ep", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 112, __extension__ __PRETTY_FUNCTION__); }));
        ((void) sizeof ((str[cursor] == 'e') ? 1 : 0), __extension__ ({ if (str[cursor] == 'e') ; else __assert_fail ("str[cursor] == 'e'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 114, __extension__ __PRETTY_FUNCTION__); }));
        ((void) sizeof ((str[++cursor] == '.') ? 1 : 0), __extension__ ({ if (str[++cursor] == '.') ; else __assert_fail ("str[++cursor] == '.'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 115, __extension__ __PRETTY_FUNCTION__); }));
        ((void) sizeof ((str[++cursor] == 'p') ? 1 : 0), __extension__ ({ if (str[++cursor] == 'p') ; else __assert_fail ("str[++cursor] == 'p'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 116, __extension__ __PRETTY_FUNCTION__); }));
        ((void) sizeof ((str[++cursor] == '.') ? 1 : 0), __extension__ ({ if (str[++cursor] == '.') ; else __assert_fail ("str[++cursor] == '.'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 117, __extension__ __PRETTY_FUNCTION__); }));
        cursor++;
        move.en_passant = 1;
    }
    _Bool skipped_whitespace_after_ep = move.en_passant ? pgn_cursor_skip_whitespace(str, &cursor) : skipped_whitespace_before_ep;
    if (move.annotation == PGN_ANNOTATION_UNKNOWN) {
        move.annotation = __pgn_annotation_nag_from_string(str + cursor, &cursor);
        if (move.annotation != PGN_ANNOTATION_UNKNOWN) {
            ((void) sizeof ((skipped_whitespace_after_ep) ? 1 : 0), __extension__ ({ if (skipped_whitespace_after_ep) ; else __assert_fail ("skipped_whitespace_after_ep", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 132, __extension__ __PRETTY_FUNCTION__); }));
        }
    }
    pgn_cursor_revisit_whitespace(str, &cursor);
    size_t notation_len = cursor;
    strncpy(move.notation, str, notation_len);
    *consumed += cursor;
    return move;
}
pgn_move_t pgn_move_from_string(char *str)
{
    size_t consumed = 0;
    return __pgn_move_from_string(str, &consumed);
}
size_t pgn_move_to_string(pgn_move_t *move, char *dest)
{
    size_t cursor = 0;
    switch (move->castles) {
    case 0: break;
    case 2:
        strcpy(dest, "O-O");
        cursor += 2 * 2 - 1;
        goto check;
    case 3:
        strcpy(dest, "O-O-O");
        cursor += 3 * 2 - 1;
        goto check;
    }
    ((void) sizeof ((move->piece != PGN_PIECE_UNKNOWN) ? 1 : 0), __extension__ ({ if (move->piece != PGN_PIECE_UNKNOWN) ; else __assert_fail ("move->piece != PGN_PIECE_UNKNOWN", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 167, __extension__ __PRETTY_FUNCTION__); }));
    if (move->piece != PGN_PIECE_PAWN) {
        dest[cursor++] = move->piece;
    }
    if (move->from.file) dest[cursor++] = move->from.file;
    if (move->from.rank) dest[cursor++] = '0' + move->from.rank;
    if (move->captures) dest[cursor++] = 'x';
    dest[cursor++] = move->dest.file;
    dest[cursor++] = '0' + move->dest.rank;
    if (move->promoted_to) {
        ((void) sizeof ((move->piece == PGN_PIECE_PAWN) ? 1 : 0), __extension__ ({ if (move->piece == PGN_PIECE_PAWN) ; else __assert_fail ("move->piece == PGN_PIECE_PAWN", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 181, __extension__ __PRETTY_FUNCTION__); }));
        ((void) sizeof ((move->promoted_to != PGN_PIECE_PAWN) ? 1 : 0), __extension__ ({ if (move->promoted_to != PGN_PIECE_PAWN) ; else __assert_fail ("move->promoted_to != PGN_PIECE_PAWN", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 182, __extension__ __PRETTY_FUNCTION__); }));
        dest[cursor++] = '=';
        dest[cursor++] = move->promoted_to;
    }
check:
    switch (move->check) {
        case PGN_CHECK_NONE:
            break;
        case PGN_CHECK_MATE:
            dest[cursor++] = '#';
            break;
        case PGN_CHECK_SINGLE:
            dest[cursor++] = '+';
            break;
        case PGN_CHECK_DOUBLE:
            dest[cursor++] = '+';
            dest[cursor++] = '+';
            break;
    }
    if (move->annotation >= PGN_ANNOTATION_GOOD_MOVE && move->annotation <= PGN_ANNOTATION_DUBIOUS_MOVE) {
        cursor += pgn_annotation_to_string(move->annotation, dest + cursor);
    }
    if (move->en_passant) {
        dest[cursor++] = ' ';
        strcpy(dest + cursor, "e.p.");
        cursor += 4;
    }
    if (move->annotation > PGN_ANNOTATION_DUBIOUS_MOVE || move->annotation == PGN_ANNOTATION_NULL) {
        dest[cursor++] = ' ';
        cursor += pgn_annotation_to_string(move->annotation, dest + cursor);
    }
    dest[cursor] = '\0';
    return cursor;
}
pgn_moves_t *__pgn_moves_from_string_recurse(char *str, size_t *consumed, pgn_moves_t *moves, int expect)
{
    if (str[0] == ')' || str[0] == '\0')
        return moves;
    size_t cursor = 0;
    __pgn_moves_item_t move = {0};
    pgn_comments_t *comments = ((void*)0);
    pgn_cursor_skip_whitespace(str, &cursor);
    cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_BEFORE_MOVE, str + cursor);
    ((void) sizeof ((((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISdigit)) ? 1 : 0), __extension__ ({ if (((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISdigit)) ; else __assert_fail ("isdigit(str[cursor])", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 237, __extension__ __PRETTY_FUNCTION__); }));
    while (((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISdigit)) cursor++;
    int dots_count = 0;
    ((void) sizeof ((str[cursor] == '.') ? 1 : 0), __extension__ ({ if (str[cursor] == '.') ; else __assert_fail ("str[cursor] == '.'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 241, __extension__ __PRETTY_FUNCTION__); }));
    while (str[cursor] == '.') {
        cursor++;
        dots_count++;
    }
    if (expect == 0) ((void) sizeof ((dots_count == 1) ? 1 : 0), __extension__ ({ if (dots_count == 1) ; else __assert_fail ("dots_count == 1", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 247, __extension__ __PRETTY_FUNCTION__); }));
    if (expect == 1) ((void) sizeof ((dots_count == 3) ? 1 : 0), __extension__ ({ if (dots_count == 3) ; else __assert_fail ("dots_count == 3", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 248, __extension__ __PRETTY_FUNCTION__); }));
    pgn_cursor_skip_whitespace(str, &cursor);
    cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_BETWEEN_MOVE, str + cursor);
    if (dots_count == 3) {
        move.black = __pgn_move_from_string(str + cursor, &cursor);
        pgn_cursor_skip_whitespace(str, &cursor);
        cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_AFTER_MOVE, str + cursor);
        cursor += pgn_alternative_moves_poll(&move.black.alternatives, &comments, str + cursor, 1);
        pgn_cursor_skip_whitespace(str, &cursor);
        cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_AFTER_MOVE, str + cursor);
        if (comments) {
            move.black.comments = comments;
            comments = ((void*)0);
        }
        pgn_moves_push(moves, move);
        __pgn_moves_from_string_recurse(str + cursor, &cursor, moves, 0);
        *consumed += cursor;
        return moves;
    }
    move.white = __pgn_move_from_string(str + cursor, &cursor);
    pgn_cursor_skip_whitespace(str, &cursor);
    cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_AFTER_MOVE, str + cursor);
    cursor += pgn_alternative_moves_poll(&move.white.alternatives, &comments, str + cursor, 0);
    pgn_cursor_skip_whitespace(str, &cursor);
    cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_AFTER_MOVE, str + cursor);
    if (comments) {
        move.white.comments = comments;
        comments = ((void*)0);
    }
    if (pgn_score_from_string(str + cursor)) {
        pgn_moves_push(moves, move);
        *consumed += cursor;
        return moves;
    }
    if (str[cursor] == ')' || str[cursor] == '\0') {
        pgn_moves_push(moves, move);
        *consumed += cursor;
        return moves;
    }
    pgn_cursor_skip_whitespace(str, &cursor);
    cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_BEFORE_MOVE, str + cursor);
    if (((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISdigit)) {
        while (((*__ctype_b_loc ())[(int) ((str[cursor]))] & (unsigned short int) _ISdigit)) cursor++;
        for (int i = 0; i < 3; i++)
            ((void) sizeof ((str[cursor++] == '.') ? 1 : 0), __extension__ ({ if (str[cursor++] == '.') ; else __assert_fail ("str[cursor++] == '.'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 308, __extension__ __PRETTY_FUNCTION__); }));
    }
    pgn_cursor_skip_whitespace(str, &cursor);
    cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_BETWEEN_MOVE, str + cursor);
    move.black = __pgn_move_from_string(str + cursor, &cursor);
    pgn_cursor_skip_whitespace(str, &cursor);
    cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_AFTER_MOVE, str + cursor);
    cursor += pgn_alternative_moves_poll(&move.black.alternatives, &comments, str + cursor, 1);
    pgn_cursor_skip_whitespace(str, &cursor);
    cursor += pgn_comments_poll(&comments, PGN_COMMENT_POSITION_AFTER_MOVE, str + cursor);
    if (comments) {
        move.black.comments = comments;
        comments = ((void*)0);
    }
    pgn_moves_push(moves, move);
    if (pgn_score_from_string(str + cursor)) {
        *consumed += cursor;
        return moves;
    }
    __pgn_moves_from_string_recurse(str + cursor, &cursor, moves, 0);
    *consumed += cursor;
    return moves;
}
pgn_moves_t *__pgn_moves_from_string(char *str, size_t *consumed)
{
    return __pgn_moves_from_string_recurse(str, consumed, pgn_moves_init(), 0);
}
pgn_moves_t *pgn_moves_from_string(char *str)
{
    size_t consumed = 0;
    return __pgn_moves_from_string(str, &consumed);
}
pgn_alternative_moves_t *pgn_alternative_moves_init(void)
{
    pgn_alternative_moves_t *alt = malloc(sizeof *alt);
    alt->values = malloc(sizeof *alt->values * 1);
    alt->size = 1;
    alt->length = 0;
    return alt;
}
size_t pgn_alternative_moves_poll(pgn_alternative_moves_t **alt, pgn_comments_t **placeholder, char *str, int expect)
{
    size_t cursor = 0;
    while (str[cursor] == '(') {
        cursor++;
        if (!*alt)
            *alt = pgn_alternative_moves_init();
        pgn_cursor_skip_whitespace(str, &cursor);
        pgn_alternative_moves_push(*alt, __pgn_moves_from_string_recurse(str + cursor, &cursor, pgn_moves_init(), expect));
        pgn_cursor_skip_whitespace(str, &cursor);
        ((void) sizeof ((str[cursor++] == ')') ? 1 : 0), __extension__ ({ if (str[cursor++] == ')') ; else __assert_fail ("str[cursor++] == ')'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c", 371, __extension__ __PRETTY_FUNCTION__); }));
        pgn_cursor_skip_whitespace(str, &cursor);
        cursor += pgn_comments_poll(placeholder, PGN_COMMENT_POSITION_AFTER_ALTERNATIVE, str + cursor);
    }
    return cursor;
}
void pgn_alternative_moves_push(pgn_alternative_moves_t *alt, pgn_moves_t *moves)
{
    if (alt->length >= alt->size) {
        alt->size += 1;
        alt->values = realloc(alt->values, (sizeof *alt->values) * alt->size);
    }
    alt->values[alt->length++] = moves;
}
void pgn_alternative_moves_cleanup(pgn_alternative_moves_t *alt)
{
    for (size_t i = 0; i < alt->length; i++) {
        pgn_moves_cleanup(alt->values[i]);
    }
    free(alt->values);
    free(alt);
}
pgn_moves_t *pgn_moves_init(void)
{
    pgn_moves_t *moves = malloc(sizeof *moves);
    moves->values = malloc(sizeof *moves->values * 32);
    moves->size = 32;
    moves->length = 0;
    return moves;
}
void pgn_moves_push(pgn_moves_t *moves, __pgn_moves_item_t __moves)
{
    if (moves->length >= moves->size) {
        moves->size += 32;
        moves->values = realloc(moves->values, (sizeof *moves->values) * moves->size);
    }
    moves->values[moves->length++] = __moves;
}
void pgn_moves_cleanup(pgn_moves_t *moves)
{
    for (size_t i = 0; i < moves->length; i++) {
        if (moves->values[i].white.comments) {
            pgn_comments_cleanup(moves->values[i].white.comments);
        }
        if (moves->values[i].black.comments) {
            pgn_comments_cleanup(moves->values[i].black.comments);
        }
        if (moves->values[i].white.alternatives) {
            pgn_alternative_moves_cleanup(moves->values[i].white.alternatives);
        }
        if (moves->values[i].black.alternatives) {
            pgn_alternative_moves_cleanup(moves->values[i].black.alternatives);
        }
    }
    free(moves->values);
    free(moves);
}
pgn_t *pgn_init(void)
{
    pgn_t *pgn = malloc(sizeof *pgn);
    pgn->metadata = ((void*)0);
    pgn->moves = ((void*)0);
    return pgn;
}
void pgn_cleanup(pgn_t *pgn)
{
    if (pgn->metadata)
        pgn_metadata_cleanup(pgn->metadata);
    if (pgn->moves)
        pgn_moves_cleanup(pgn->moves);
    free(pgn);
}
pgn_metadata_t *pgn_parse_metadata(char *str)
{
    return pgn_metadata_from_string(str);
}
pgn_move_t pgn_parse_move(char *str)
{
    return pgn_move_from_string(str);
}
pgn_moves_t *pgn_parse_moves(char *str)
{
    return pgn_moves_from_string(str);
}
pgn_score_t pgn_parse_score(char *str)
{
    return pgn_score_from_string(str);
}
size_t pgn_parse(pgn_t *pgn, char *str)
{
    size_t cursor = 0;
    pgn->metadata = __pgn_metadata_from_string(str + cursor, &cursor);
    pgn_cursor_skip_whitespace(str, &cursor);
    pgn->moves = __pgn_moves_from_string(str + cursor, &cursor);
    pgn->score = __pgn_score_from_string(str + cursor, &cursor);
    return cursor;
}
pgn_piece_t pgn_piece_from_char(char ch)
{
    switch (ch) {
    case PGN_PIECE_PAWN:
    case PGN_PIECE_ROOK:
    case PGN_PIECE_KNIGHT:
    case PGN_PIECE_BISHOP:
    case PGN_PIECE_QUEEN:
    case PGN_PIECE_KING:
        return ch;
    default: return PGN_PIECE_UNKNOWN;
    }
}
char *pgn_piece_to_string(pgn_piece_t piece)
{
    switch (piece) {
    case PGN_PIECE_PAWN: return "Pawn";
    case PGN_PIECE_ROOK: return "Rook";
    case PGN_PIECE_KNIGHT: return "Knight";
    case PGN_PIECE_BISHOP: return "Bishop";
    case PGN_PIECE_QUEEN: return "Queen";
    case PGN_PIECE_KING: return "King";
    default: return ((void*)0);
    }
}
typedef enum pgn_score_single_t {
    ZERO = 0,
    ONE,
    HALF,
} pgn_score_single_t;
pgn_score_single_t __pgn_score_single_from_string(char *str, size_t *consumed)
{
    if (strncmp(str, "1/2", 3) == 0) {
        *consumed += 3;
        return HALF;
    } else if (*str == '0') {
        *consumed += 1;
        return ZERO;
    } else if (*str == '1') {
        *consumed += 1;
        return ONE;
    }
    return -1;
}
pgn_score_t __pgn_score_from_string(char *str, size_t *consumed)
{
    size_t cursor = 0;
    if (str[cursor] == '*') {
        cursor++;
        *consumed += cursor;
        return PGN_SCORE_ONGOING;
    }
    pgn_score_single_t white = __pgn_score_single_from_string(str + cursor, &cursor);
    if ((int)white == -1) return PGN_SCORE_UNKNOWN;
    if (str[cursor++] != '-') return PGN_SCORE_UNKNOWN;
    pgn_score_single_t black = __pgn_score_single_from_string(str + cursor, &cursor);
    if ((int)black == -1) return PGN_SCORE_UNKNOWN;
    *consumed += cursor;
    if (white == HALF && black == HALF) return PGN_SCORE_DRAW;
    else if (white == 1 && black == 0) return PGN_SCORE_WHITE_WON;
    else if (white == 0 && black == 1) return PGN_SCORE_BLACK_WON;
    else if (white == 0 && black == 0) return PGN_SCORE_FORFEIT;
    else if (white == 0 && black == HALF) return PGN_SCORE_WHITE_FORFEIT;
    else if (white == HALF && black == 0) return PGN_SCORE_BLACK_FORFEIT;
    else return PGN_SCORE_UNKNOWN;
}
pgn_score_t pgn_score_from_string(char *str)
{
    size_t consumed = 0;
    return __pgn_score_from_string(str, &consumed);
}
char *pgn_score_to_string(pgn_score_t score)
{
    switch (score) {
    case PGN_SCORE_UNKNOWN: break;
    case PGN_SCORE_ONGOING: return "*";
    case PGN_SCORE_DRAW: return "1/2-1/2";
    case PGN_SCORE_WHITE_WON: return "1-0";
    case PGN_SCORE_BLACK_WON: return "0-1";
    case PGN_SCORE_FORFEIT: return "0-0";
    case PGN_SCORE_WHITE_FORFEIT: return "0-1/2";
    case PGN_SCORE_BLACK_FORFEIT: return "1/2-0";
    }
    return "";
}
pgn_buffer_t *pgn_buffer_init(void)
{
    pgn_buffer_t *buf = malloc(sizeof *buf);
    buf->buf = malloc((sizeof *buf->buf) * 16);
    buf->size = 16;
    pgn_buffer_reset(buf);
    return buf;
}
_Bool pgn_buffer_equal(pgn_buffer_t *buf, char *str)
{
    for (size_t i = 0; i <= buf->length; i++) {
        if (buf->buf[i] != str[i]) {
            return 0;
        }
    }
    return 1;
}
void pgn_buffer_grow(pgn_buffer_t *buf)
{
    buf->size += 32;
    buf->buf = realloc(buf->buf, (sizeof *buf->buf) * buf->size);
}
void pgn_buffer_reset(pgn_buffer_t *buf)
{
    buf->length = 0;
    pgn_buffer_append_null_terminator(buf);
}
void pgn_buffer_append(pgn_buffer_t *buf, char ch)
{
    if (buf->length >= buf->size) {
        pgn_buffer_grow(buf);
    }
    buf->buf[buf->length++] = ch;
}
void pgn_buffer_append_null_terminator(pgn_buffer_t *buf)
{
    if (buf->length >= buf->size) {
        pgn_buffer_grow(buf);
    }
    buf->buf[buf->length] = '\0';
}
void pgn_buffer_concat(pgn_buffer_t *buf, char *str)
{
    for (; *str != '\0'; str++) {
        pgn_buffer_append(buf, *str);
    }
    pgn_buffer_append_null_terminator(buf);
}
char *pgn_buffer_detach(pgn_buffer_t *buf)
{
    char *value = buf->buf;
    free(buf);
    return value;
}
void pgn_buffer_cleanup(pgn_buffer_t *buf)
{
    free(buf->buf);
    free(buf);
}
_Bool pgn_cursor_skip_whitespace(char *str, size_t *cursor)
{
    _Bool skipped = 0;
    while (((*__ctype_b_loc ())[(int) ((str[*cursor]))] & (unsigned short int) _ISspace)) {
        (*cursor)++;
        skipped = 1;
    }
    return skipped;
}
_Bool pgn_cursor_revisit_whitespace(char *str, size_t *cursor)
{
    _Bool skipped = 0;
    while (((*__ctype_b_loc ())[(int) ((str[*cursor - 1]))] & (unsigned short int) _ISspace)) {
        (*cursor)--;
        skipped = 1;
    }
    return skipped;
}
_Bool pgn_cursor_skip_comment(char *str, size_t *cursor)
{
    if (str[*cursor] != '{')
        return 0;
    (*cursor)++;
    unsigned int left_brace_count = 1, right_brace_count = 0;
    while (right_brace_count != left_brace_count) {
        if (str[*cursor] == '\0')
            abort();
        left_brace_count += str[*cursor] == '{';
        right_brace_count += str[*cursor] == '}';
        (*cursor)++;
    }
    return 1;
}
_Bool pgn_cursor_skip_newline(char *str, size_t *cursor)
{
    if (str[*cursor] == '\r') {
        ((void) sizeof ((str[(*cursor)++] == '\r') ? 1 : 0), __extension__ ({ if (str[(*cursor)++] == '\r') ; else __assert_fail ("str[(*cursor)++] == '\\r'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/utils/cursor.c", 75, __extension__ __PRETTY_FUNCTION__); }));
        ((void) sizeof ((str[(*cursor)++] == '\n') ? 1 : 0), __extension__ ({ if (str[(*cursor)++] == '\n') ; else __assert_fail ("str[(*cursor)++] == '\\n'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/utils/cursor.c", 76, __extension__ __PRETTY_FUNCTION__); }));
        return 1;
    }
    ((void) sizeof ((str[(*cursor)++] == '\n') ? 1 : 0), __extension__ ({ if (str[(*cursor)++] == '\n') ; else __assert_fail ("str[(*cursor)++] == '\\n'", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/utils/cursor.c", 80, __extension__ __PRETTY_FUNCTION__); }));
    return 1;
}
void __pgn_export(void);

