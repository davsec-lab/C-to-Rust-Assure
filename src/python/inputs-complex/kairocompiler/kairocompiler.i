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

struct pos
{
    int line;
    int col;
    const char* filename;
};
enum
{
    LEXICAL_ANALYSIS_ALL_OK,
    LEXICAL_ANALYSIS_INPUT_ERROR
};
enum
{
    TOKEN_TYPE_IDENTIFIER,
    TOKEN_TYPE_KEYWORD,
    TOKEN_TYPE_OPERATOR,
    TOKEN_TYPE_SYMBOL,
    TOKEN_TYPE_NUMBER,
    TOKEN_TYPE_STRING,
    TOKEN_TYPE_COMMENT,
    TOKEN_TYPE_NEWLINE
};
enum
{
    NUMBER_TYPE_NORMAL,
    NUMBER_TYPE_LONG,
    NUMBER_TYPE_FLOAT,
    NUMBER_TYPE_DOUBLE
};
struct token
{
    int type;
    int flags;
    struct pos pos;
    union
    {
        char cval;
        const char* sval;
        unsigned int inum;
        unsigned long lnum;
        unsigned long long llnum;
        void* any;
    };
    struct token_number
    {
        int type;
    }num;
    _Bool whitespace;
    const char* between_brackets;
};
struct lex_process;
typedef char(*LEX_PROCESS_NEXT_CHAR)(struct lex_process* process);
typedef char(*LEX_PROCESS_PEEK_CHAR)(struct lex_process* process);
typedef void(*LEX_PROCESS_PUSH_CHAR)(struct lex_process* process,char c);
struct lex_process_functions
{
    LEX_PROCESS_NEXT_CHAR next_char;
    LEX_PROCESS_PEEK_CHAR peek_char;
    LEX_PROCESS_PUSH_CHAR push_char;
};
struct lex_process
{
    struct pos pos;
    struct vector* token_vec;
    struct compile_process* compiler;
    int current_expression_count;
    struct buffer* parentheses_buffer;
    struct lex_process_functions* function;
    void* private;
};
enum{
    COMPILER_FILE_COMPILED_OK,
    COMPILER_FAILED_WITH_ERRORS
};
struct compile_process{
    int flags;
    struct pos pos;
    struct compile_process_input_file
    {
        FILE* fp;
        const char* abs_path;
    } cfile;
    struct vector* token_vec;
    struct vector* node_vec;
    struct vector* node_tree_vec;
    FILE* ofile;
};
enum
{
    PARSE_ALL_OK,
    PARSE_GENERAL_ERROR
};
enum
{
    NODE_TYPE_EXPRESSION,
    NODE_TYPE_EXPRESSION_PARENTHESES,
    NODE_TYPE_NUMBER,
    NODE_TYPE_IDENTIFIER,
    NODE_TYPE_STRING,
    NODE_TYPE_VARIABLE,
    NODE_TYPE_VARIABLE_LIST,
    NODE_TYPE_FUNCTION,
    NODE_TYPE_BODY,
    NODE_TYPE_STATEMENT_RETURN,
    NODE_TYPE_STATEMENT_IF,
    NODE_TYPE_STATEMENT_ELSE,
    NODE_TYPE_STATEMENT_WHILE,
    NODE_TYPE_STATEMENT_DO_WHILE,
    NODE_TYPE_STATEMENT_FOR,
    NODE_TYPE_STATEMENT_BREAK,
    NODE_TYPE_STATEMENT_CONTINUE,
    NODE_TYPE_STATEMENT_SWITCH,
    NODE_TYPE_STATEMENT_CASE,
    NODE_TYPE_STATEMENT_DEFAULT,
    NODE_TYPE_STATEMENT_GOTO,
    NODE_TYPE_UNARY,
    NODE_TYPE_TENARY,
    NODE_TYPE_LABEL,
    NODE_TYPE_STRUCT,
    NODE_TYPE_UNION,
    NODE_TYPE_BRACKET,
    NODE_TYPE_CAST,
    NODE_TYPE_BLANK
};
struct node
{
    int type;
    int flags;
    struct pos pos;
    struct node_binded
    {
        struct node* owner;
        struct node* function;
    }binded;
    union
    {
        char cval;
        const char* sval;
        unsigned int inum;
        unsigned long lnum;
        unsigned long long llnum;
    };
};
int compile_file(const char* filename,const char* out_filename,int flags);
struct compile_process* compile_process_create(const char* filename,const char* filename_out, int flags);
char compile_process_next_char(struct lex_process* lex_process);
char compile_process_peek_char(struct lex_process* lex_process);
void compile_process_push_char(struct lex_process* lex_process,char c);
void compiler_error(struct compile_process* compiler,const char* msg, ...);
void compiler_warning(struct compile_process* compiler,const char* msg, ...);
struct lex_process* lex_process_create(struct compile_process* compiler,struct lex_process_functions* functions, void* private);
void lex_process_free(struct lex_process* process);
void* lex_process_private(struct lex_process* process);
struct vector* lex_process_tokens(struct lex_process* process);
int lex(struct lex_process* process);
_Bool token_is_keyword(struct token* token, const char* value);
struct lex_process* tokens_build_for_string(struct compile_process* compiler,const char* str);
int parse(struct compile_process *process);
_Bool token_is_symbol(struct token* token, char c);
_Bool token_is_nl_or_comment_or_newline_separator(struct token *token);
struct node* node_pop();
struct node* node_peek();
struct node* node_peek_or_null();
void node_push(struct node* node);
void node_set_vector(struct vector* vec, struct vector* root_vec);
struct node* node_create(struct node* _node);

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

struct lex_process_functions compiler_lex_functions = {
    .next_char = compile_process_next_char,
    .peek_char = compile_process_peek_char,
    .push_char = compile_process_push_char
};
void compiler_error(struct compile_process* compiler,const char* msg, ...)
{
    va_list args;
    __builtin_va_start(args, msg);
    vfprintf(stderr,msg,args);
    __builtin_va_end(args);
    fprintf(stderr, " on line %i, col %i in file %s\n",compiler->pos.line,compiler->pos.col,compiler->pos.filename);
    exit(-1);
}
void compiler_warning(struct compile_process* compiler,const char* msg, ...)
{
    va_list args;
    __builtin_va_start(args, msg);
    vfprintf(stderr,msg,args);
    __builtin_va_end(args);
    fprintf(stderr, " on line %i, col %i in file %s\n",compiler->pos.line,compiler->pos.col,compiler->pos.filename);
}
int compile_file(const char* filename,const char* out_filename,int flags)
{
    struct compile_process* process = compile_process_create(filename,out_filename,flags);
    if(!process)
        return COMPILER_FAILED_WITH_ERRORS;
    struct lex_process* lex_process = lex_process_create(process, &compiler_lex_functions,((void*)0));
    if(!lex_process){
        return COMPILER_FAILED_WITH_ERRORS;
    }
    if(lex(lex_process)!=LEXICAL_ANALYSIS_ALL_OK)
    {
        return COMPILER_FAILED_WITH_ERRORS;
    }
    process->token_vec = lex_process->token_vec;
    if(parse(process)!=PARSE_ALL_OK)
    {
        return COMPILER_FAILED_WITH_ERRORS;
    }
    return COMPILER_FILE_COMPILED_OK;
}
typedef long int ptrdiff_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;

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
enum
{
    VECTOR_FLAG_PEEK_DECREMENT = 0b00000001
};
struct vector
{
    void* data;
    int pindex;
    int rindex;
    int mindex;
    int count;
    int flags;
    size_t esize;
    struct vector* saves;
};
struct vector* vector_create(size_t esize);
void vector_free(struct vector* vector);
void* vector_at(struct vector* vector, int index);
void* vector_peek_ptr_at(struct vector* vector, int index);
void* vector_peek_no_increment(struct vector* vector);
void* vector_peek(struct vector* vector);
void *vector_peek_at(struct vector *vector, int index);
void vector_set_flag(struct vector* vector, int flag);
void vector_unset_flag(struct vector* vector, int flag);
void vector_pop_last_peek(struct vector* vector);
void* vector_peek_ptr(struct vector* vector);
void vector_set_peek_pointer(struct vector* vector, int index);
void vector_set_peek_pointer_end(struct vector* vector);
void vector_push(struct vector* vector, void* elem);
void vector_push_at(struct vector *vector, int index, void *ptr);
void vector_pop(struct vector* vector);
void vector_peek_pop(struct vector* vector);
void* vector_back(struct vector* vector);
void *vector_back_or_null(struct vector *vector);
void* vector_back_ptr(struct vector* vector);
void* vector_back_ptr_or_null(struct vector* vector);
const char* vector_string(struct vector* vec);
_Bool vector_empty(struct vector* vector);
void vector_clear(struct vector* vector);
int vector_count(struct vector* vector);
int vector_fread(struct vector* vector, int amount, FILE* fp);
void* vector_data_ptr(struct vector* vector);
int vector_insert(struct vector *vector_dst, struct vector *vector_src, int dst_index);
int vector_pop_at_data_address(struct vector* vector, void* address);
int vector_pop_value(struct vector* vector, void* val);
void vector_pop_at(struct vector *vector, int index);
void vector_peek_back(struct vector* vector);
int vector_current_index(struct vector* vector);
void vector_save(struct vector* vector);
void vector_restore(struct vector* vector);
void vector_save_purge(struct vector* vector);
size_t vector_element_size(struct vector* vector);
struct vector* vector_clone(struct vector* vector);

struct compile_process* compile_process_create(const char* filename,const char* filename_out, int flags)
{
    FILE* file =fopen(filename,"r");
    if(!file)
    {
        return ((void*)0);
    }
    FILE* out_file=((void*)0);
    if(filename_out)
    {
    out_file = fopen(filename_out,"w");
    if(!out_file)
    {
        return ((void*)0);
    }
    }
    struct compile_process* process= calloc(1,sizeof(struct compile_process));
    process->node_vec = vector_create(sizeof(struct node*));
    process->node_tree_vec = vector_create(sizeof(struct node*));
    process->flags=flags;
    process->cfile.fp=file;
    process->ofile=out_file;
    return process;
}
char compile_process_next_char(struct lex_process* lex_process)
{
    struct compile_process* compiler = lex_process->compiler;
    compiler->pos.col +=1;
    char c = getc(compiler->cfile.fp);
    if(c=='\n')
    {
        compiler->pos.line +=1;
        compiler->pos.col = 1;
    }
    return c;
}
char compile_process_peek_char(struct lex_process* lex_process)
{
    struct compile_process* compiler = lex_process->compiler;
    char c =getc(compiler->cfile.fp);
    ungetc(c,compiler->cfile.fp);
    return c;
}
void compile_process_push_char(struct lex_process* lex_process,char c)
{
     struct compile_process* compiler = lex_process->compiler;
     ungetc(c,compiler->cfile.fp);
}
struct buffer
{
    char* data;
    int rindex;
    int len;
    int msize;
};
struct buffer* buffer_create();
char buffer_read(struct buffer* buffer);
char buffer_peek(struct buffer* buffer);
void buffer_extend(struct buffer* buffer, size_t size);
void buffer_printf(struct buffer* buffer, const char* fmt, ...);
void buffer_printf_no_terminator(struct buffer* buffer, const char* fmt, ...);
void buffer_write(struct buffer* buffer, char c);
void* buffer_ptr(struct buffer* buffer);
void buffer_free(struct buffer* buffer);
struct buffer* buffer_create()
{
    struct buffer* buf = calloc(sizeof(struct buffer), 1);
    buf->data = calloc(2000, 1);
    buf->len = 0;
    buf->msize = 2000;
    return buf;
}
void buffer_extend(struct buffer* buffer, size_t size)
{
    buffer->data = realloc(buffer->data, buffer->msize+size);
    buffer->msize+=size;
}
void buffer_need(struct buffer* buffer, size_t size)
{
    if (buffer->msize <= (buffer->len+size))
    {
        size += 2000;
        buffer_extend(buffer, size);
    }
}
void buffer_printf(struct buffer* buffer, const char* fmt, ...)
{
    va_list args;
    __builtin_va_start(args, fmt);
    int index = buffer->len;
    int len = 2048;
    buffer_extend(buffer, len);
    int actual_len = vsnprintf(&buffer->data[index], len, fmt, args);
    buffer->len += actual_len;
    __builtin_va_end(args);
}
void buffer_printf_no_terminator(struct buffer* buffer, const char* fmt, ...)
{
    va_list args;
    __builtin_va_start(args, fmt);
    int index = buffer->len;
    int len = 2048;
    buffer_extend(buffer, len);
    int actual_len = vsnprintf(&buffer->data[index], len, fmt, args);
    buffer->len += actual_len-1;
    __builtin_va_end(args);
}
void buffer_write(struct buffer* buffer, char c)
{
    buffer_need(buffer, sizeof(char));
    buffer->data[buffer->len] = c;
    buffer->len++;
}
void* buffer_ptr(struct buffer* buffer)
{
    return buffer->data;
}
char buffer_read(struct buffer* buffer)
{
    if (buffer->rindex >= buffer->len)
    {
        return -1;
    }
    char c = buffer->data[buffer->rindex];
    buffer->rindex++;
    return c;
}
char buffer_peek(struct buffer* buffer)
{
    if (buffer->rindex >= buffer->len)
    {
        return -1;
    }
    char c = buffer->data[buffer->rindex];
    return c;
}
void buffer_free(struct buffer* buffer)
{
    free(buffer->data);
    free(buffer);
}

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
static _Bool vector_in_bounds_for_at(struct vector *vector, int index)
{
    return (index >= 0 && index < vector->rindex);
}
static _Bool vector_in_bounds_for_pop(struct vector *vector, int index)
{
    return (index >= 0 && index < vector->mindex);
}
static void vector_assert_bounds_for_pop(struct vector *vector, int index)
{
    ((void) sizeof ((vector_in_bounds_for_pop(vector, index)) ? 1 : 0), __extension__ ({ if (vector_in_bounds_for_pop(vector, index)) ; else __assert_fail ("vector_in_bounds_for_pop(vector, index)", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/kairocompiler/helpers/vector.c", 22, __extension__ __PRETTY_FUNCTION__); }));
}
struct vector *vector_create_no_saves(size_t esize)
{
    struct vector *vector = calloc(sizeof(struct vector), 1);
    vector->data = malloc(esize * 20);
    vector->mindex = 20;
    vector->rindex = 0;
    vector->pindex = 0;
    vector->esize = esize;
    vector->count = 0;
    return vector;
}
size_t vector_total_size(struct vector *vector)
{
    return vector->count * vector->esize;
}
size_t vector_element_size(struct vector *vector)
{
    return vector->esize;
}
struct vector *vector_clone(struct vector *vector)
{
    void *new_data_address = calloc(vector->esize, vector->count + 20);
    memcpy(new_data_address, vector->data, vector_total_size(vector));
    struct vector *new_vec = calloc(sizeof(struct vector), 1);
    memcpy(new_vec, vector, sizeof(struct vector));
    new_vec->data = new_data_address;
    return new_vec;
}
struct vector *vector_create(size_t esize)
{
    struct vector *vec = vector_create_no_saves(esize);
    vec->saves = vector_create_no_saves(sizeof(struct vector));
    return vec;
}
void vector_free(struct vector *vector)
{
    free(vector->data);
    free(vector);
}
int vector_current_index(struct vector *vector)
{
    return vector->rindex;
}
void vector_resize_for_index(struct vector *vector, int start_index, int total_elements)
{
    if (start_index + total_elements < vector->mindex)
    {
        return;
    }
    vector->data = realloc(vector->data, ((start_index + total_elements + 20) * vector->esize));
    ((void) sizeof ((vector->data) ? 1 : 0), __extension__ ({ if (vector->data) ; else __assert_fail ("vector->data", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/kairocompiler/helpers/vector.c", 87, __extension__ __PRETTY_FUNCTION__); }));
    vector->mindex = start_index + total_elements;
}
void vector_resize_for(struct vector *vector, int total_elements)
{
    vector_resize_for_index(vector, vector->rindex, total_elements);
}
void vector_resize(struct vector *vector)
{
    vector_resize_for(vector, 0);
}
void *vector_at(struct vector *vector, int index)
{
    return vector->data + (index * vector->esize);
}
void vector_set_peek_pointer(struct vector *vector, int index)
{
    vector->pindex = index;
}
void vector_set_peek_pointer_end(struct vector *vector)
{
    vector_set_peek_pointer(vector, vector->rindex - 1);
}
void *vector_peek_at(struct vector *vector, int index)
{
    if (!vector_in_bounds_for_at(vector, index))
    {
        return ((void*)0);
    }
    void* ptr = vector_at(vector, index);
    return ptr;
}
void *vector_peek_no_increment(struct vector *vector)
{
    if (!vector_in_bounds_for_at(vector, vector->pindex))
    {
        return ((void*)0);
    }
    void *ptr = vector_at(vector, vector->pindex);
    return ptr;
}
void vector_peek_back(struct vector* vector)
{
    vector->pindex--;
}
void *vector_peek(struct vector *vector)
{
    void *ptr = vector_peek_no_increment(vector);
    if (!ptr)
    {
        return ((void*)0);
    }
    if (vector->flags & VECTOR_FLAG_PEEK_DECREMENT)
        vector->pindex--;
    else
        vector->pindex++;
    return ptr;
}
void vector_set_flag(struct vector *vector, int flag)
{
    vector->flags |= flag;
}
void vector_unset_flag(struct vector *vector, int flag)
{
    vector->flags &= ~flag;
}
void *vector_peek_ptr(struct vector *vector)
{
    void **ptr = vector_peek(vector);
    if (!ptr)
    {
        return ((void*)0);
    }
    return *ptr;
}
void *vector_peek_ptr_at(struct vector *vector, int index)
{
    if (index < 0 || index > vector->count)
    {
        return ((void*)0);
    }
    void **ptr = vector_at(vector, index);
    if (!ptr)
    {
        return ((void*)0);
    }
    return *ptr;
}
void *vector_back_ptr(struct vector *vector)
{
    void **ptr = vector_back(vector);
    if (!ptr)
    {
        return ((void*)0);
    }
    return *ptr;
}
void vector_save(struct vector *vector)
{
    struct vector tmp_vec = *vector;
    tmp_vec.saves = ((void*)0);
    vector_push(vector->saves, &tmp_vec);
}
void vector_restore(struct vector *vector)
{
    struct vector save_vec = *((struct vector *)(vector_back(vector->saves)));
    save_vec.saves = vector->saves;
    *vector = save_vec;
    vector_pop(vector->saves);
}
void vector_save_purge(struct vector *vector)
{
    vector_pop(vector->saves);
}
void vector_pop_last_peek(struct vector* vector)
{
    ((void) sizeof ((vector->pindex >= 1) ? 1 : 0), __extension__ ({ if (vector->pindex >= 1) ; else __assert_fail ("vector->pindex >= 1", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/kairocompiler/helpers/vector.c", 233, __extension__ __PRETTY_FUNCTION__); }));
    vector_pop_at(vector, vector->pindex-1);
}
void vector_push(struct vector *vector, void *elem)
{
    void *ptr = vector_at(vector, vector->rindex);
    memcpy(ptr, elem, vector->esize);
    vector->rindex++;
    vector->count++;
    if (vector->rindex >= vector->mindex)
    {
        vector_resize(vector);
    }
}
int vector_fread(struct vector *vector, int amount, FILE *fp)
{
    size_t read_amount = fread(vector->data, 1, 1, fp);
    while (read_amount)
    {
        vector_push(vector, &read_amount);
        read_amount = fread(vector->data, 1, 1, fp);
    }
    return 0;
}
const char *vector_string(struct vector *vec)
{
    return vec->data;
}
void *vector_data_end(struct vector *vector)
{
    return vector->data + vector->rindex * vector->esize;
}
size_t vector_elements_left(struct vector *vector, int index)
{
    return vector->count - index;
}
int vector_elements_until_end(struct vector *vector, int index)
{
    return vector->count - index;
}
void vector_shift_right_in_bounds_no_increment(struct vector *vector, int index, int amount)
{
    vector_resize_for_index(vector, index, amount);
    int eindex = (index + amount);
    size_t bytes_to_move = vector_elements_until_end(vector, index) * vector->esize;
    memcpy(vector_at(vector, eindex), vector_at(vector, index), bytes_to_move);
    memset(vector_at(vector, index), 0x00, amount * vector->esize);
}
void vector_shift_right_in_bounds(struct vector *vector, int index, int amount)
{
    vector_shift_right_in_bounds_no_increment(vector, index, amount);
    vector->rindex += amount;
    vector->count += amount;
}
void vector_stretch(struct vector *vector, int index)
{
    if (index < vector->rindex)
        return;
    vector_resize_for_index(vector, index, 0);
    vector->count = index;
    vector->rindex = index;
}
int vector_pop_value(struct vector* vector, void* val)
{
    int old_pp = vector->pindex;
    vector_set_peek_pointer(vector, 0);
    void* ptr = vector_peek_ptr(vector);
    int index = 0;
    while(ptr)
    {
        if (ptr == val)
        {
            vector_pop_at(vector, index);
            break;
        }
        ptr = vector_peek_ptr(vector);
        index++;
    }
    vector_set_peek_pointer(vector, old_pp);
}
int vector_pop_at_data_address(struct vector *vector, void *address)
{
    int index = (address - vector->data) / vector->esize;
    vector_pop_at(vector, index);
    return index;
}
void vector_shift_right(struct vector *vector, int index, int amount)
{
    if (index < vector->rindex)
    {
        vector_shift_right_in_bounds(vector, index, amount);
        return;
    }
    vector_stretch(vector, index + amount);
    vector_shift_right_in_bounds_no_increment(vector, index, amount);
}
void vector_pop_at(struct vector *vector, int index)
{
    void *dst_pos = vector_at(vector, index);
    void *next_element_pos = dst_pos + vector->esize;
    void *end_pos = vector_data_end(vector);
    size_t total = (size_t)end_pos - (size_t)next_element_pos;
    memcpy(dst_pos, next_element_pos, total);
    vector->count -= 1;
    vector->rindex -= 1;
}
void vector_peek_pop(struct vector *vector)
{
    vector_pop_at(vector, vector->pindex);
}
void vector_push_multiple_at(struct vector *vector, int dst_index, void *ptr, int total)
{
    vector_shift_right(vector, dst_index, total);
    void *dst_ptr = vector_at(vector, dst_index);
    size_t total_bytes = total * vector->esize;
    memcpy(dst_ptr, ptr, total_bytes);
}
void vector_push_at(struct vector *vector, int index, void *ptr)
{
    vector_shift_right(vector, index, 1);
    void *data_ptr = vector_at(vector, index);
    memcpy(data_ptr, ptr, vector->esize);
}
int vector_insert(struct vector *vector_dst, struct vector *vector_src, int dst_index)
{
    if (vector_dst->esize != vector_src->esize)
    {
        return -1;
    }
    vector_push_multiple_at(vector_dst, dst_index, vector_at(vector_src, 0), vector_count(vector_src));
    return 0;
}
void vector_pop(struct vector *vector)
{
    vector->rindex -= 1;
    vector->count -= 1;
    vector_assert_bounds_for_pop(vector, vector->rindex);
}
void *vector_data_ptr(struct vector *vector)
{
    return vector->data;
}
_Bool vector_empty(struct vector *vector)
{
    return vector_count(vector) == 0;
}
void vector_clear(struct vector *vector)
{
    while (vector_count(vector))
    {
        vector_pop(vector);
    }
}
void *vector_back_or_null(struct vector *vector)
{
    if (!vector_in_bounds_for_at(vector, vector->rindex - 1))
    {
        return ((void*)0);
    }
    return vector_at(vector, vector->rindex - 1);
}
void *vector_back_ptr_or_null(struct vector *vector)
{
    void **ptr = vector_back_or_null(vector);
    if (ptr)
    {
        return *ptr;
    }
    return ((void*)0);
}
void *vector_back(struct vector *vector)
{
    vector_assert_bounds_for_pop(vector, vector->rindex - 1);
    return vector_at(vector, vector->rindex - 1);
}
int vector_count(struct vector *vector)
{
    return vector->count;
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
_Bool lex_is_in_expression();
struct token *read_next_token();
static struct lex_process *lex_process;
static struct token tmp_token;
static char peekc()
{
    return lex_process->function->peek_char(lex_process);
}
static char nextc()
{
    char c = lex_process->function->next_char(lex_process);
    if(lex_is_in_expression())
    {
        buffer_write(lex_process->parentheses_buffer,c);
    }
    lex_process->pos.col += 1;
    if (c == '\n')
    {
        lex_process->pos.line += 1;
        lex_process->pos.col = 1;
    }
    return c;
}
static void pushc(char c)
{
    lex_process->function->push_char(lex_process, c);
}
static char assert_next_char(char c)
{
     char next_c = nextc();
     ((void) sizeof ((c == next_c) ? 1 : 0), __extension__ ({ if (c == next_c) ; else __assert_fail ("c == next_c", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/kairocompiler/lexer.c", 49, __extension__ __PRETTY_FUNCTION__); }));
     return next_c;
}
static struct pos lex_file_position()
{
    return lex_process->pos;
}
struct token *token_create(struct token *_token)
{
    memcpy(&tmp_token, _token, sizeof(struct token));
    tmp_token.pos = lex_file_position();
    if(lex_is_in_expression())
    {
        tmp_token.between_brackets = buffer_ptr(lex_process->parentheses_buffer);
    }
    return &tmp_token;
}
static struct token *lexer_last_token()
{
    return vector_back_or_null(lex_process->token_vec);
}
static struct token *handle_whitespace()
{
    struct token *last_token = lexer_last_token();
    if (last_token)
    {
        last_token->whitespace = 1;
    }
    nextc();
    return read_next_token();
}
const char *read_number_str()
{
    const char *num = ((void*)0);
    struct buffer *buffer = buffer_create();
    char c = peekc();
    for (c = peekc(); (c >= '0' && c <= '9'); c = peekc()) { buffer_write(buffer, c); nextc(); }
    buffer_write(buffer, 0x00);
    return buffer_ptr(buffer);
}
unsigned long long read_number()
{
    const char *s = read_number_str();
    return atoll(s);
}
 int lexer_number_type(char c)
 {
    int res = NUMBER_TYPE_NORMAL;
    if(c == 'L')
        res = NUMBER_TYPE_LONG;
    else if (c == 'f')
        res = NUMBER_TYPE_FLOAT;
    return res;
 }
struct token *token_make_number_for_value(unsigned long number)
{
    int number_type = lexer_number_type(peekc());
    if(number_type != NUMBER_TYPE_NORMAL)
    {
        nextc();
    }
    return token_create(&(struct token){.type = TOKEN_TYPE_NUMBER, .llnum = number,.num.type=number_type});
}
struct token *token_make_number()
{
    return token_make_number_for_value(read_number());
}
struct token *token_make_string(char start_delim, char end_delim)
{
    struct buffer *buf = buffer_create();
    ((void) sizeof ((nextc() == start_delim) ? 1 : 0), __extension__ ({ if (nextc() == start_delim) ; else __assert_fail ("nextc() == start_delim", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/kairocompiler/lexer.c", 129, __extension__ __PRETTY_FUNCTION__); }));
    char c = nextc();
    for (; c != end_delim && c != (-1); c = nextc())
    {
        if (c == '\\')
        {
            continue;
        }
        buffer_write(buf, c);
    }
    buffer_write(buf, 0x00);
    return token_create(&(struct token){.type = TOKEN_TYPE_STRING, .sval = buffer_ptr(buf)});
}
static _Bool op_treated_as_one(char op)
{
    return op == '(' || op == '[' || op == ',' || op == '.' || op == '*' || op == '?';
}
static _Bool is_single_operator(char op)
{
    return op == '+' || op == '-' || op == '/' || op == '*' || op == '=' ||
           op == '>' || op == '<' || op == '|' || op == '&' || op == '^' ||
           op == '%' || op == '~' || op == '!' || op == '(' || op == '[' ||
           op == ',' || op == '.' || op == '?';
}
_Bool op_valid(char *op)
{
    return (op && "+" && (strcmp(op,"+")==0)) ||
           (op && "-" && (strcmp(op,"-")==0)) ||
           (op && "*" && (strcmp(op,"*")==0)) ||
           (op && "/" && (strcmp(op,"/")==0)) ||
           (op && "!" && (strcmp(op,"!")==0)) ||
           (op && "^" && (strcmp(op,"^")==0)) ||
           (op && "+=" && (strcmp(op,"+=")==0)) ||
           (op && "-=" && (strcmp(op,"-=")==0)) ||
           (op && "*=" && (strcmp(op,"*=")==0)) ||
           (op && "/=" && (strcmp(op,"/=")==0)) ||
           (op && ">>" && (strcmp(op,">>")==0)) ||
           (op && "<<" && (strcmp(op,"<<")==0)) ||
           (op && ">=" && (strcmp(op,">=")==0)) ||
           (op && "<=" && (strcmp(op,"<=")==0)) ||
           (op && ">" && (strcmp(op,">")==0)) ||
           (op && "<" && (strcmp(op,"<")==0)) ||
           (op && "||" && (strcmp(op,"||")==0)) ||
           (op && "&&" && (strcmp(op,"&&")==0)) ||
           (op && "|" && (strcmp(op,"|")==0)) ||
           (op && "&" && (strcmp(op,"&")==0)) ||
           (op && "++" && (strcmp(op,"++")==0)) ||
           (op && "--" && (strcmp(op,"--")==0)) ||
           (op && "= " && (strcmp(op,"= ")==0)) ||
           (op && "!=" && (strcmp(op,"!=")==0)) ||
           (op && "==" && (strcmp(op,"==")==0)) ||
           (op && "->" && (strcmp(op,"->")==0)) ||
           (op && "(" && (strcmp(op,"(")==0)) ||
           (op && "[" && (strcmp(op,"[")==0)) ||
           (op && "," && (strcmp(op,",")==0)) ||
           (op && "." && (strcmp(op,".")==0)) ||
           (op && "..." && (strcmp(op,"...")==0)) ||
           (op && "~" && (strcmp(op,"~")==0)) ||
           (op && "?" && (strcmp(op,"?")==0)) ||
           (op && "%" && (strcmp(op,"%")==0));
}
void read_op_flush_back_keep_first(struct buffer *buffer)
{
    const char *data = buffer_ptr(buffer);
    int len = buffer->len;
    for (int i = len - 1; i >= 1; i--)
    {
        if (data[i] == 0x00)
        {
            continue;
        }
        pushc(data[i]);
    }
}
const char *read_op()
{
    _Bool single_operator = 1;
    char op = nextc();
    struct buffer *buffer = buffer_create();
    buffer_write(buffer, op);
    if (!op_treated_as_one(op))
    {
        op = peekc();
        if (is_single_operator(op))
        {
            buffer_write(buffer, op);
            nextc();
            single_operator = 0;
        }
    }
    buffer_write(buffer, 0x00);
    char *ptr = buffer_ptr(buffer);
    if (!single_operator)
    {
        if (!op_valid(ptr))
        {
            read_op_flush_back_keep_first(buffer);
            ptr[1] = 0x00;
        }
    }
    else if (!op_valid)
    {
        compiler_error(lex_process->compiler, "The operator %s is not valid\n", ptr);
    }
}
static void lex_new_expression()
{
    lex_process->current_expression_count++;
    if (lex_process->current_expression_count == 1)
    {
        lex_process->parentheses_buffer = buffer_create();
    }
}
static void lex_finish_expression()
{
    lex_process->current_expression_count--;
    if (lex_process->current_expression_count < 0)
    {
        compiler_error(lex_process->compiler, "You closed an expression that you never opened\n");
    }
}
_Bool lex_is_in_expression()
{
    return lex_process->current_expression_count > 0;
}
_Bool is_keyword(const char *str)
{
    return (str && "auto" && (strcmp(str,"auto")==0)) ||
           (str && "break" && (strcmp(str,"break")==0)) ||
           (str && "case" && (strcmp(str,"case")==0)) ||
           (str && "char" && (strcmp(str,"char")==0)) ||
           (str && "const" && (strcmp(str,"const")==0)) ||
           (str && "continue" && (strcmp(str,"continue")==0)) ||
           (str && "default" && (strcmp(str,"default")==0)) ||
           (str && "do" && (strcmp(str,"do")==0)) ||
           (str && "double" && (strcmp(str,"double")==0)) ||
           (str && "else" && (strcmp(str,"else")==0)) ||
           (str && "enum" && (strcmp(str,"enum")==0)) ||
           (str && "extern" && (strcmp(str,"extern")==0)) ||
           (str && "float" && (strcmp(str,"float")==0)) ||
           (str && "for" && (strcmp(str,"for")==0)) ||
           (str && "goto" && (strcmp(str,"goto")==0)) ||
           (str && "if" && (strcmp(str,"if")==0)) ||
           (str && "inline" && (strcmp(str,"inline")==0)) ||
           (str && "int" && (strcmp(str,"int")==0)) ||
           (str && "long" && (strcmp(str,"long")==0)) ||
           (str && "register" && (strcmp(str,"register")==0)) ||
           (str && "restrict" && (strcmp(str,"restrict")==0)) ||
           (str && "return" && (strcmp(str,"return")==0)) ||
           (str && "short" && (strcmp(str,"short")==0)) ||
           (str && "signed" && (strcmp(str,"signed")==0)) ||
           (str && "sizeof" && (strcmp(str,"sizeof")==0)) ||
           (str && "static" && (strcmp(str,"static")==0)) ||
           (str && "struct" && (strcmp(str,"struct")==0)) ||
           (str && "switch" && (strcmp(str,"switch")==0)) ||
           (str && "typedef" && (strcmp(str,"typedef")==0)) ||
           (str && "union" && (strcmp(str,"union")==0)) ||
           (str && "unsigned" && (strcmp(str,"unsigned")==0)) ||
           (str && "void" && (strcmp(str,"void")==0)) ||
           (str && "volatile" && (strcmp(str,"volatile")==0)) ||
           (str && "while" && (strcmp(str,"while")==0)) ||
           (str && "_Alignas" && (strcmp(str,"_Alignas")==0)) ||
           (str && "_Alignof" && (strcmp(str,"_Alignof")==0)) ||
           (str && "_Atomic" && (strcmp(str,"_Atomic")==0)) ||
           (str && "_Bool" && (strcmp(str,"_Bool")==0)) ||
           (str && "_Complex" && (strcmp(str,"_Complex")==0)) ||
           (str && "_Generic" && (strcmp(str,"_Generic")==0)) ||
           (str && "_Imaginary" && (strcmp(str,"_Imaginary")==0)) ||
           (str && "_Noreturn" && (strcmp(str,"_Noreturn")==0)) ||
           (str && "_Static_assert" && (strcmp(str,"_Static_assert")==0)) ||
           (str && "_Thread_local" && (strcmp(str,"_Thread_local")==0)) ||
           (str && "__ignore_typecheck" && (strcmp(str,"__ignore_typecheck")==0));
}
static struct token *token_make_operator_or_string()
{
    char op = peekc();
    if (op == '<')
    {
        struct token *last_token = lexer_last_token();
        if (token_is_keyword(last_token, "include"))
        {
            return token_make_string('<', '>');
        }
    }
    struct token *token = token_create(&(struct token){.type = TOKEN_TYPE_OPERATOR, .sval = read_op()});
    if (op == '(')
    {
        lex_new_expression();
    }
    return token;
}
static struct token *token_make_symbol()
{
    char c = nextc();
    if (c == ')')
    {
        lex_finish_expression();
    }
    struct token *token = token_create(&(struct token){.type = TOKEN_TYPE_SYMBOL, .cval = c});
    return token;
}
static struct token *token_make_identifier_or_keyword()
{
    struct buffer *buffer = buffer_create();
    char c = 0;
    for (c = peekc(); (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_'; c = peekc()) { buffer_write(buffer, c); nextc(); };
    buffer_write(buffer, 0x00);
    if(is_keyword(buffer_ptr(buffer)))
    {
        return token_create(&(struct token){.type=TOKEN_TYPE_KEYWORD,.sval=buffer_ptr(buffer)});
    }
    return token_create(&(struct token){.type = TOKEN_TYPE_IDENTIFIER, .sval = buffer_ptr(buffer)});
}
struct token *read_special_token()
{
    char c = peekc();
    if (((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISalpha) || c == '_')
    {
        return token_make_identifier_or_keyword();
    }
    return ((void*)0);
}
struct token* token_make_newline()
{
    nextc();
    return token_create(&(struct token){.type=TOKEN_TYPE_NEWLINE});
}
struct token* token_make_one_line_comment()
{
    struct buffer* buffer=buffer_create();
    char c=0;
    for (c = peekc(); (c!='\n' && c!=(-1)); c = peekc()) { buffer_write(buffer, c); nextc(); };
    return token_create(&(struct token){.type=TOKEN_TYPE_COMMENT});
}
struct token* token_make_multiline_comment()
{
    struct buffer* buffer=buffer_create();
    char c=0;
    while (1)
    {
        for (c = peekc(); (c!='*' && c!=(-1)); c = peekc()) { buffer_write(buffer, c); nextc(); };
        if(c==(-1))
        {
            compiler_error(lex_process->compiler,"You did not close this multiline comment\n");
        }
        else if(c=='*')
        {
            nextc();
            if(peekc()=='/')
            {
                nextc();
                break;
            }
        }
    }
    return token_create(&(struct token){.type=TOKEN_TYPE_COMMENT,.sval=buffer_ptr(buffer)});
}
struct token* handle_comment()
{
    char c = peekc();
    if(c == '/')
    {
        nextc();
        if(peekc() == '/')
        {
            nextc();
            return token_make_one_line_comment();
        }
        else if(peekc() == '*')
        {
            nextc();
            return token_make_multiline_comment();
        }
        pushc('/');
        return token_make_operator_or_string();
    }
    return ((void*)0);
}
char lex_get_escaped_char(char c)
{
    char co = 0;
    switch (c)
    {
    case 'n':
        co = '\n';
        break;
    case '\\':
        co = '\\';
        break;
    case 't':
        co = '\t';
        break;
    case 'b':
        co = '\b';
        break;
    case '\'':
        co = '\'';
        break;
    }
    return co;
}
void lexer_pop_token()
{
    vector_pop(lex_process->token_vec);
}
_Bool is_hex_char(char c)
{
     c = tolower(c);
    return (c>='0' && c<='9') || (c>='a' && c<='f');
}
const char* read_hex_number_str()
{
    struct buffer* buffer = buffer_create();
    char c = peekc();
    for (c = peekc(); is_hex_char(c); c = peekc()) { buffer_write(buffer, c); nextc(); };
    buffer_write(buffer,0x00);
    return buffer_ptr(buffer);
}
struct token* token_make_special_number_hexadecimal()
{
    nextc();
    unsigned long number = 0;
    const char* number_str = read_hex_number_str();
    number = strtol(number_str,0,16);
    return token_make_number_for_value(number);
}
void lexer_validate_binary_string(const char* str)
{
    size_t len = strlen(str);
    for(int i=0;i<len;i++)
    {
        if(str[i]!='0' && str[i]!='1')
        {
            compiler_error(lex_process->compiler,"Invalid Binary number\n");
        }
    }
}
struct token* token_make_special_number_binary()
{
    nextc();
    unsigned long number = 0;
    const char* number_str = read_number_str();
    lexer_validate_binary_string(number_str);
    number = strtol(number_str,0,2);
    return token_make_number_for_value(number);
}
struct token* token_make_special_number()
{
     struct token* token =((void*)0);
     struct token* last_token = lexer_last_token();
    if(!last_token || !(last_token->type=TOKEN_TYPE_NUMBER && last_token->llnum == 0))
    {
        return token_make_identifier_or_keyword();
    }
     lexer_pop_token();
     char c = peekc();
     if(c == 'x')
     {
        token = token_make_special_number_hexadecimal();
     }
     else if(c == 'b')
     {
        token = token_make_special_number_binary();
     }
     return token;
}
struct token* token_make_quote()
{
     assert_next_char('\'');
    char c = nextc();
    if(c=='\\')
    {
        c = nextc();
        c = lex_get_escaped_char(c);
    }
    if(nextc()!='\'')
    {
        compiler_error(lex_process->compiler,"You opened a quote ' but did not close it\n");
    }
    return token_create(&(struct token){.type=TOKEN_TYPE_NUMBER,.cval=c});
}
struct token *read_next_token()
{
    struct token *token = ((void*)0);
    char c = peekc();
    token = handle_comment();
    if(token)
    {
        return token;
    }
    switch (c)
    {
    case '0': case '1': case '2': case '3': case '4': case '5': case '6': case '7': case '8': case '9':
        token = token_make_number();
        break;
    case '+': case '-': case '*': case '>': case '<': case '^': case '%': case '!': case '=': case '~': case '|': case '&': case '(': case '[': case ',': case '.': case '?':
        token = token_make_operator_or_string();
        break;
    case '{': case '}': case ':': case ';': case '#': case '\\': case ')': case ']':
        token = token_make_symbol();
        break;
    case 'b':
        token = token_make_special_number();
        break;
    case 'x':
        token = token_make_special_number();
        break;
    case '\'':
        token = token_make_quote();
        break;
    case '"':
        token = token_make_string('"', '"');
        break;
    case ' ':
    case '\t':
        token = handle_whitespace();
        break;
    case '\n':
        token = token_make_newline();
        break;
    case '$':
        break;
    default:
        token = read_special_token();
        if (!token)
            compiler_error(lex_process->compiler, "Unexpected token\n");
    }
    return token;
}
int lex(struct lex_process *process)
{
    process->current_expression_count = 0;
    process->parentheses_buffer = ((void*)0);
    lex_process = process;
    process->pos.filename = process->compiler->cfile.abs_path;
    struct token *token = read_next_token();
    while (token)
    {
        vector_push(process->token_vec, token);
        token = read_next_token();
    }
    return LEXICAL_ANALYSIS_ALL_OK;
}
char lexer_string_buffer_next_char(struct lex_process* process)
{
    struct buffer* buf = lex_process_private(process);
    return buffer_read(buf);
}
char lexer_string_buffer_peek_char(struct lex_process* process)
{
    struct buffer* buf = lex_process_private(process);
    return buffer_peek(buf);
}
void lexer_string_buffer_push_char(struct lex_process* process,char c)
{
    struct buffer* buf = lex_process_private(process);
    buffer_write(buf,c);
}
struct lex_process_functions lexer_string_buffer_functions = {
    .next_char = lexer_string_buffer_next_char,
    .peek_char = lexer_string_buffer_peek_char,
    .push_char = lexer_string_buffer_push_char
};
struct lex_process* tokens_build_for_string(struct compile_process* compiler,const char* str)
{
    struct buffer* buffer = buffer_create();
    buffer_printf(buffer,str);
    struct lex_process* lex_process = lex_process_create(compiler,&lexer_string_buffer_functions,buffer);
    if(!lex_process)
    {
        return ((void*)0);
    }
    if(lex(lex_process)!=LEXICAL_ANALYSIS_ALL_OK)
    {
        return ((void*)0);
    }
    return lex_process;
}
struct lex_process* lex_process_create(struct compile_process* compiler,struct lex_process_functions* functions, void* private)
{
    struct lex_process* process = calloc(1,sizeof(struct lex_process));
    process->function = functions;
    process->token_vec = vector_create(sizeof(struct token));
    process->compiler = compiler;
    process->private = private;
    process->pos.line = 1;
    process->pos.col = 1;
    return process;
}
void lex_process_free(struct lex_process* process)
{
    vector_free(process->token_vec);
    free(process);
}
void* lex_process_private(struct lex_process* process)
{
    return process->private;
}
struct vector* lex_process_tokens(struct lex_process* process)
{
    return process->token_vec;
}

struct vector* node_vector = ((void*)0);
struct vector* node_vector_root = ((void*)0);
void node_set_vector(struct vector* vec, struct vector* root_vec)
{
    node_vector = vec;
    node_vector_root = root_vec;
}
void node_push(struct node* node)
{
    vector_push(node_vector, &node);
}
struct node* node_peek_or_null()
{
    return vector_back_ptr_or_null(node_vector);
}
struct node* node_peek()
{
    return *(struct node**)(vector_back(node_vector));
};
struct node* node_pop()
{
    struct node* last_node = vector_back_ptr(node_vector);
    struct node* last_node_root = vector_empty(node_vector) ? ((void*)0) : vector_back_ptr(node_vector_root);
    vector_pop(node_vector);
    if(last_node == last_node_root)
    {
        vector_pop(node_vector_root);
    }
    return last_node;
}
struct node* node_create(struct node* _node)
{
    struct node* node = malloc(sizeof(struct node));
    memcpy(node,_node,sizeof(struct node));
    node_push(node);
    return node;
}
static struct compile_process *current_process;
static struct token* parser_last_token;
static void parser_ignore_nl_or_comment(struct token* token)
{
    while(token && token_is_nl_or_comment_or_newline_separator(token))
    {
        vector_peek(current_process->token_vec);
        token = vector_peek_no_increment(current_process->token_vec);
    }
}
static struct token* token_next()
{
    struct token* next_token = vector_peek_no_increment(current_process->token_vec);
    parser_ignore_nl_or_comment(next_token);
    current_process->pos = next_token->pos;
    parser_last_token = next_token;
    return vector_peek(current_process->token_vec);
}
static struct token* token_peek_next()
{
    struct token* next_token = vector_peek_no_increment(current_process->token_vec);
    parser_ignore_nl_or_comment(next_token);
    return vector_peek_no_increment(current_process->token_vec);
}
void parse_single_token_to_node()
{
    struct token* token = token_next();
    struct node* node =((void*)0);
    switch (token->type)
    {
    case TOKEN_TYPE_NUMBER:
        node = node_create(&(struct node){.type = NODE_TYPE_NUMBER, .llnum = token->llnum});
        break;
    case TOKEN_TYPE_IDENTIFIER:
        node = node_create(&(struct node){.type = NODE_TYPE_IDENTIFIER, .sval = token->sval});
        break;
    case TOKEN_TYPE_STRING:
        node = node_create(&(struct node){.type = NODE_TYPE_STRING, .sval = token->sval});
        break;
    default:
        compiler_error(current_process,"This is not a token that can be converted to a node");
    }
}
int parse_next()
{
    struct token* token = token_peek_next();
    if(!token)
    {
        return -1;
    }
    int res = 0;
    switch (token->type)
    {
    case TOKEN_TYPE_NUMBER:
    case TOKEN_TYPE_IDENTIFIER:
    case TOKEN_TYPE_STRING:
        parse_single_token_to_node();
        break;
    default:
        break;
    }
    return 0;
}
int parse(struct compile_process *process)
{
    current_process = process;
    parser_last_token = ((void*)0);
    node_set_vector(process->node_vec,process->node_tree_vec);
    struct node* node = ((void*)0);
    vector_set_peek_pointer(process->token_vec, 0);
    while(parse_next() == 0)
    {
        node = node_peek();
        vector_push(process->node_tree_vec, &node);
    }
    return PARSE_ALL_OK;
}
_Bool token_is_keyword(struct token *token, const char *value)
{
    return token->type = TOKEN_TYPE_KEYWORD && (token->sval && value && (strcmp(token->sval,value)==0));
}
_Bool token_is_symbol(struct token* token, char c)
{
    return token->type == TOKEN_TYPE_SYMBOL && token->cval == c;
}
_Bool token_is_nl_or_comment_or_newline_separator(struct token *token)
{
    return token->type == TOKEN_TYPE_NEWLINE ||
           token->type == TOKEN_TYPE_COMMENT ||
           token_is_symbol(token, '\\');
}

