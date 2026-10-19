typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
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

struct dstate;
struct nfa {
  struct nstate *initial;
  struct nstate *final;
  _Bool complemented;
};
void nfa_free(struct nfa nfa);
void dfa_free(struct dstate *dfa);
uint8_t *dfa_serialize(struct dstate *dfa, size_t *size);
struct dstate *dfa_deserialize(uint8_t *buf, size_t *size);
struct nfa ltre_parse(char **regex, char **error);
struct nfa ltre_fixed_string(char *string);
void ltre_partial(struct nfa *nfa);
void ltre_ignorecase(struct nfa *nfa);
void ltre_complement(struct nfa *nfa);
struct dstate *ltre_compile(struct nfa nfa);
struct nfa ltre_uncompile(struct dstate *dfa);
char *ltre_decompile(struct dstate *dfa);
_Bool ltre_matches(struct dstate *dfa, uint8_t *input);
_Bool ltre_matches_lazy(struct dstate **dfap, struct nfa nfa, uint8_t *input);
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
typedef uint8_t symset_t[256 / 8];
struct nstate {
  symset_t label;
  struct nstate *target;
  struct nstate *epsilon0;
  struct nstate *epsilon1;
  struct nstate *next;
  int id;
};
struct dstate {
  struct dstate *transitions[256];
  _Bool accepting;
  _Bool terminating;
  int id;
  struct dstate *next;
  uint8_t bitset[];
};
static _Bool bitset_get(uint8_t bitset[], unsigned id) {
  return bitset[id / 8] & 1 << id % 8;
}
static void bitset_set(uint8_t bitset[], unsigned id) {
  bitset[id / 8] |= 1 << id % 8;
}
static char *symset_fmt(symset_t symset) {
  static char buf[1024], nbuf[1024];
  char *bufp = buf, *nbufp = nbuf;
  int nsym = 0, nnsym = 0;
  *nbufp++ = '^';
  *bufp++ = *nbufp++ = '[';
  for (int chr = 0; chr < 256; chr++) {
  append_chr:
    bitset_get(symset, chr) ? nsym++ : nnsym++;
    char **p = bitset_get(symset, chr) ? &bufp : &nbufp;
    _Bool is_metachar = chr && strchr("\\.-^$*+?{}[]<>()|&~", chr);
    if (!((*__ctype_b_loc ())[(int) ((chr))] & (unsigned short int) _ISprint) && !is_metachar)
      *p += sprintf(*p, "\\x%02hhx", chr);
    else {
      if (is_metachar)
        *(*p)++ = '\\';
      *(*p)++ = chr;
    }
    int start = chr;
    while (chr < 255 && bitset_get(symset, chr) == bitset_get(symset, chr + 1))
      chr++;
    if (chr - start >= 2)
      *(*p)++ = '-', bitset_get(symset, chr) ? nsym-- : nnsym--;
    if (chr - start >= 1)
      goto append_chr;
  }
  *bufp++ = *nbufp++ = ']';
  *bufp++ = *nbufp++ = '\0';
  if (nnsym == 0) {
    return "<>";
  } else if (nsym == 1) {
    bufp[-2] = '\0';
    return buf + 1;
  } else if (nnsym == 1) {
    nbufp[-2] = '\0', nbuf[1] = '^';
    return nbuf + 1;
  }
  return (bufp - buf < nbufp - nbuf) ? buf : nbuf;
}
static struct nstate *nstate_alloc(void) {
  struct nstate *nstate = malloc(sizeof(struct nstate));
  *nstate = (struct nstate){.id = -1};
  return nstate;
}
void nfa_free(struct nfa nfa) {
  for (struct nstate *next, *nstate = nfa.initial; nstate; nstate = next)
    next = nstate->next, free(nstate);
}
static int nfa_get_size(struct nfa nfa) {
  int nfa_size = 0;
  for (struct nstate *nstate = nfa.initial; nstate; nstate = nstate->next)
    if ((nstate->id = nfa_size++) == 2147483647)
      abort();
  return nfa_size;
}
static struct nfa nfa_clone(struct nfa nfa) {
  int nfa_size = nfa_get_size(nfa);
  struct nstate *nstates[nfa_size];
  for (int id = 0; id < nfa_size; id++)
    nstates[id] = nstate_alloc();
  for (struct nstate *nstate = nfa.initial; nstate; nstate = nstate->next) {
    memcpy(nstates[nstate->id]->label, nstate->label, sizeof(symset_t));
    if (nstate->target) nstates[nstate->id]->target = nstates[nstate->target->id];;
    if (nstate->epsilon0) nstates[nstate->id]->epsilon0 = nstates[nstate->epsilon0->id];;
    if (nstate->epsilon1) nstates[nstate->id]->epsilon1 = nstates[nstate->epsilon1->id];;
    if (nstate->next) nstates[nstate->id]->next = nstates[nstate->next->id];;
  }
  return (struct nfa){
      .initial = nstates[nfa.initial->id],
      .final = nstates[nfa.final->id],
      .complemented = nfa.complemented,
  };
}
static void nfa_concat(struct nfa *nfap, struct nfa nfa) {
  if (nfap->initial == nfap->final)
    nfa_free(*nfap), *nfap = nfa;
  else if (nfa.initial != nfa.final) {
    memcpy(nfap->final, nfa.initial, sizeof(struct nstate));
    nfap->final = nfa.final;
    free(nfa.initial);
  }
}
static void nfa_pad_initial(struct nfa *nfa) {
  struct nstate *initial = nstate_alloc();
  initial->epsilon0 = nfa->initial;
  initial->next = nfa->initial;
  nfa->initial = initial;
}
static void nfa_pad_final(struct nfa *nfa) {
  struct nstate *final = nstate_alloc();
  nfa->final->epsilon0 = final;
  nfa->final->next = final;
  nfa->final = final;
}
static void nfa_uncomplement(struct nfa *nfa) {
  if (!nfa->complemented)
    return;
  struct dstate *dfa = ltre_compile(*nfa);
  struct nfa uncomplemented = ltre_uncompile(dfa);
  dfa_free(dfa), nfa_free(*nfa);
  memcpy(nfa, &uncomplemented, sizeof(struct nfa));
}
void nfa_dump(struct nfa nfa) {
  (void)nfa_get_size(nfa);
  printf("graph LR\n");
  printf("  I( ) --> %d\n", nfa.initial->id);
  printf("  %d --> F( )\n", nfa.final->id);
  for (struct nstate *nstate = nfa.initial; nstate; nstate = nstate->next) {
    if (nstate->epsilon0)
      printf("  %d --> %d\n", nstate->id, nstate->epsilon0->id);
    if (nstate->epsilon1)
      printf("  %d --> %d\n", nstate->id, nstate->epsilon1->id);
    _Bool empty = 1;
    for (int i = 0; i < sizeof(symset_t); i++)
      empty &= !nstate->label[i];
    if (empty)
      continue;
    printf("  %d --", nstate->id);
    for (char *fmt = symset_fmt(nstate->label); *fmt; fmt++)
      printf(strchr("\\\"#&{}()xo=- ", *fmt) ? "#%hhu;" : "%c", *fmt);
    printf("--> %d\n", nstate->target->id);
  }
}
static struct dstate *dstate_alloc(int bitset_size) {
  struct dstate *dstate = malloc(sizeof(struct dstate) + bitset_size);
  *dstate = (struct dstate){.id = -1};
  memset(dstate->bitset, 0x00, bitset_size);
  return dstate;
}
void dfa_free(struct dstate *dstate) {
  for (struct dstate *next; dstate; dstate = next)
    next = dstate->next, free(dstate);
}
static int dfa_get_size(struct dstate *dfa) {
  int dfa_size = 0;
  for (struct dstate *dstate = dfa; dstate; dstate = dstate->next)
    if ((dstate->id = dfa_size++) == 2147483647)
      abort();
  return dfa_size;
}
static void leb128_put(uint8_t **p, int n) {
  while (n >> 7)
    *(*p)++ = (n & 0x7f) | 0x80, n >>= 7;
  *(*p)++ = n;
}
static int leb128_get(uint8_t **p) {
  int n = 0, c = 0;
  do
    n |= (**p & 0x7f) << c++ * 7;
  while (*(*p)++ & 0x80);
  return n;
}
uint8_t *dfa_serialize(struct dstate *dfa, size_t *size) {
  int dfa_size = dfa_get_size(dfa);
  int ceil_log128 = 0;
  for (int s = dfa_size; s >>= 7;)
    ceil_log128++;
  ceil_log128++;
  uint8_t *buf = malloc(ceil_log128), *p = buf;
  leb128_put(&p, dfa_size);
  for (struct dstate *dstate = dfa; dstate; dstate = dstate->next) {
    ptrdiff_t len = p - buf;
    uint8_t *new = realloc(buf, len + 1 + 256 * (1 + ceil_log128));
    buf = new, p = new + len;
    *p++ = dstate->accepting << 1 | dstate->terminating;
    for (int chr = 0; chr < 256;) {
      int start = chr;
      while (chr < 255 &&
             dstate->transitions[chr] == dstate->transitions[chr + 1])
        chr++;
      *p++ = chr - start;
      leb128_put(&p, dstate->transitions[chr++]->id);
    }
  }
  *size = p - buf;
  return realloc(buf, p - buf);
}
struct dstate *dfa_deserialize(uint8_t *buf, size_t *size) {
  uint8_t *p = buf;
  int dfa_size = leb128_get(&p);
  struct dstate *dstates[dfa_size];
  for (int id = 0; id < dfa_size; id++)
    dstates[id] = dstate_alloc(0);
  for (int id = 0; id < dfa_size; id++) {
    dstates[id]->accepting = *p >> 1 & 1;
    dstates[id]->terminating = *p++ & 1;
    for (int chr = 0; chr < 256;) {
      int len = *p++;
      struct dstate *target = dstates[leb128_get(&p)];
      do
        dstates[id]->transitions[chr++] = target;
      while (len--);
    }
    if (id != 0)
      dstates[id - 1]->next = dstates[id];
  }
  *size = p - buf;
  return *dstates;
}
void dfa_dump(struct dstate *dfa) {
  (void)dfa_get_size(dfa);
  printf("graph LR\n");
  printf("  I( ) --> %d\n", dfa->id);
  for (struct dstate *ds1 = dfa; ds1; ds1 = ds1->next) {
    if (ds1->accepting)
      printf("  %d --> F( )\n", ds1->id);
    for (struct dstate *ds2 = dfa; ds2; ds2 = ds2->next) {
      _Bool empty = 1;
      symset_t transitions = {0};
      for (int chr = 0; chr < 256; chr++)
        if (ds1->transitions[chr] == ds2)
          bitset_set(transitions, chr), empty = 0;
      if (empty)
        continue;
      printf("  %d --", ds1->id);
      for (char *fmt = symset_fmt(transitions); *fmt; fmt++)
        printf(strchr("\\\"#&{}()xo=- ", *fmt) ? "#%hhu;" : "%c", *fmt);
      printf("--> %d\n", ds2->id);
    }
  }
}
static unsigned parse_natural(char **regex, char **error) {
  if (!((*__ctype_b_loc ())[(int) ((**regex))] & (unsigned short int) _ISdigit)) {
    *error = "expected natural number";
    return 0;
  }
  unsigned natural = 0;
  for (; ((*__ctype_b_loc ())[(int) ((**regex))] & (unsigned short int) _ISdigit); ++*regex) {
    int digit = **regex - '0';
    if (natural > (2147483647 *2U +1U) / 10 || natural * 10 > (2147483647 *2U +1U) - digit) {
      *error = "natural number overflow";
      return (2147483647 *2U +1U);
    }
    natural *= 10, natural += digit;
  }
  return natural;
}
static uint8_t parse_hexbyte(char **regex, char **error) {
  uint8_t byte = 0;
  for (int i = 0; i < 2; i++) {
    byte <<= 4;
    char chr = **regex;
    if (((*__ctype_b_loc ())[(int) ((chr))] & (unsigned short int) _ISdigit))
      byte |= chr - '0';
    else if (((*__ctype_b_loc ())[(int) ((chr))] & (unsigned short int) _ISxdigit))
      byte |= tolower(chr) - 'a' + 10;
    else {
      *error = "expected hex digit";
      return 0;
    }
    ++*regex;
  }
  return byte;
}
static uint8_t parse_escape(char **regex, char **error) {
  if (strchr("\\.-^$*+?{}[]<>()|&~", **regex))
    return *(*regex)++;
  switch (*(*regex)++) {
  case 'a':
    return '\a';
  case 'b':
    return '\b';
  case 'f':
    return '\f';
  case 'n':
    return '\n';
  case 'r':
    return '\r';
  case 't':
    return '\t';
  case 'v':
    return '\v';
  case 'x':;
    uint8_t chr = parse_hexbyte(regex, error);
    if (*error)
      return 0;
    return chr;
  }
  --*regex;
  *error = "unknown escape";
  return 0;
}
static uint8_t parse_symbol(char **regex, char **error) {
  if (**regex == '\\') {
    ++*regex;
    uint8_t escape = parse_escape(regex, error);
    if (*error)
      return 0;
    return escape;
  }
  if (**regex == '\0') {
    *error = "expected symbol";
    return 0;
  }
  if (strchr("\\.-^$*+?{}[]<>()|&~", **regex)) {
    *error = "unexpected metacharacter";
    return 0;
  }
  if (!((*__ctype_b_loc ())[(int) ((**regex))] & (unsigned short int) _ISprint)) {
    *error = "unexpected nonprintable character";
    return 0;
  }
  return *(*regex)++;
}
static void parse_shorthand(symset_t symset, char **regex, char **error) {
  memset(symset, 0x00, sizeof(symset_t));
  if (**regex == '\\') {
    ++*regex;
    switch (*(*regex)++) {
    case 'd':
      for (int chr = 0; chr < 256; chr++) if (((*__ctype_b_loc ())[(int) ((chr))] & (unsigned short int) _ISdigit)) bitset_set(symset, chr); return;
    case 'D':
      for (int chr = 0; chr < 256; chr++) if (!((*__ctype_b_loc ())[(int) ((chr))] & (unsigned short int) _ISdigit)) bitset_set(symset, chr); return;
    case 's':
      for (int chr = 0; chr < 256; chr++) if (((*__ctype_b_loc ())[(int) ((chr))] & (unsigned short int) _ISspace)) bitset_set(symset, chr); return;
    case 'S':
      for (int chr = 0; chr < 256; chr++) if (!((*__ctype_b_loc ())[(int) ((chr))] & (unsigned short int) _ISspace)) bitset_set(symset, chr); return;
    case 'w':
      for (int chr = 0; chr < 256; chr++) if (chr == '_' || ((*__ctype_b_loc ())[(int) ((chr))] & (unsigned short int) _ISalnum)) bitset_set(symset, chr); return;
    case 'W':
      for (int chr = 0; chr < 256; chr++) if (chr != '_' && !((*__ctype_b_loc ())[(int) ((chr))] & (unsigned short int) _ISalnum)) bitset_set(symset, chr); return;
    }
    --*regex, --*regex;
  }
  if (**regex == '.') {
    ++*regex;
    for (int chr = 0; chr < 256; chr++) if (chr != '\n') bitset_set(symset, chr); return;
  }
  *error = "expected shorthand class";
  return;
}
static void parse_symset(symset_t symset, char **regex, char **error) {
  _Bool complement = 0;
  if (**regex == '^')
    ++*regex, complement = 1;
  char *last_regex = *regex;
  parse_shorthand(symset, regex, error);
  if (!*error)
    goto process_complement;
  *error = ((void*)0);
  *regex = last_regex;
  if (**regex == '[') {
    ++*regex;
    memset(symset, 0x00, sizeof(symset_t));
    while (!strchr("]", **regex)) {
      symset_t sub;
      parse_symset(sub, regex, error);
      if (*error)
        return;
      for (int i = 0; i < sizeof(symset_t); i++)
        symset[i] |= sub[i];
    }
    if (**regex != ']') {
      *error = "expected ']'";
      return;
    }
    ++*regex;
    goto process_complement;
  }
  *regex = last_regex;
  if (**regex == '<') {
    ++*regex;
    memset(symset, 0xff, sizeof(symset_t));
    while (!strchr(">", **regex)) {
      symset_t sub;
      parse_symset(sub, regex, error);
      if (*error)
        return;
      for (int i = 0; i < sizeof(symset_t); i++)
        symset[i] &= sub[i];
    }
    if (**regex != '>') {
      *error = "expected '>'";
      return;
    }
    ++*regex;
    goto process_complement;
  }
  *regex = last_regex;
  uint8_t begin = parse_symbol(regex, error);
  if (!*error) {
    uint8_t end = begin;
    if (**regex == '-') {
      ++*regex;
      end = parse_symbol(regex, error);
      if (*error)
        return;
    }
    end++;
    memset(symset, 0x00, sizeof(symset_t));
    uint8_t chr = begin;
    do
      bitset_set(symset, chr);
    while (++chr != end);
    goto process_complement;
  }
  return;
process_complement:
  if (complement)
    for (int i = 0; i < sizeof(symset_t); i++)
      symset[i] = ~symset[i];
  return;
}
static struct nfa parse_regex(char **regex, char **error);
static struct nfa parse_atom(char **regex, char **error) {
  if (**regex == '(') {
    ++*regex;
    struct nfa sub = parse_regex(regex, error);
    if (*error)
      return (struct nfa){((void*)0)};
    if (**regex != ')') {
      *error = "expected ')'";
      nfa_free(sub);
      return (struct nfa){((void*)0)};
    }
    ++*regex;
    return sub;
  }
  struct nfa chars = {.initial = nstate_alloc(),
                      .final = nstate_alloc(),
                      .complemented = 0};
  chars.initial->next = chars.final;
  chars.initial->target = chars.final;
  parse_symset(chars.initial->label, regex, error);
  if (*error) {
    nfa_free(chars);
    return (struct nfa){((void*)0)};
  }
  return chars;
}
static struct nfa parse_factor(char **regex, char **error) {
  struct nfa atom = parse_atom(regex, error);
  if (*error)
    return (struct nfa){((void*)0)};
  if (**regex == '*') {
    ++*regex;
    nfa_uncomplement(&atom);
    atom.final->epsilon1 = atom.initial;
    nfa_pad_initial(&atom), nfa_pad_final(&atom);
    atom.initial->epsilon1 = atom.final;
    return atom;
  }
  if (**regex == '+') {
    ++*regex;
    nfa_uncomplement(&atom);
    atom.final->epsilon1 = atom.initial;
    nfa_pad_initial(&atom), nfa_pad_final(&atom);
    return atom;
  }
  if (**regex == '?') {
    ++*regex;
    nfa_uncomplement(&atom);
    if (atom.initial->epsilon1)
      nfa_pad_initial(&atom);
    atom.initial->epsilon1 = atom.final;
    return atom;
  }
  char *last_regex = *regex;
  if (**regex == '{') {
    ++*regex;
    nfa_uncomplement(&atom);
    unsigned min = parse_natural(regex, error);
    if (*error && min == (2147483647 *2U +1U)) {
      nfa_free(atom);
      return (struct nfa){((void*)0)};
    } else if (*error)
      min = 0, *error = ((void*)0);
    unsigned max = min;
    _Bool max_unbounded = 0;
    if (**regex == ',') {
      ++*regex;
      max = parse_natural(regex, error);
      if (*error && max == (2147483647 *2U +1U)) {
        nfa_free(atom);
        return (struct nfa){((void*)0)};
      } else if (*error)
        max_unbounded = 1, *error = ((void*)0);
    }
    if (**regex != '}') {
      *error = "expected '}'";
      nfa_free(atom);
      return (struct nfa){((void*)0)};
    }
    ++*regex;
    if (min > max && !max_unbounded) {
      *regex = last_regex;
      *error = "misbounded quantifier";
      nfa_free(atom);
      return (struct nfa){((void*)0)};
    }
    struct nfa atoms = {.complemented = 0};
    atoms.initial = atoms.final = nstate_alloc();
    for (unsigned i = 0; max_unbounded ? i <= min : i < max; i++) {
      struct nfa clone = nfa_clone(atom);
      if (i >= min) {
        if (max_unbounded) {
          clone.final->epsilon1 = clone.initial;
          nfa_pad_initial(&clone), nfa_pad_final(&clone);
        }
        clone.initial->epsilon1 = clone.final;
      }
      nfa_concat(&atoms, clone);
      if (i == (2147483647 *2U +1U))
        break;
    }
    nfa_free(atom);
    return atoms;
  }
  return atom;
}
static struct nfa parse_term(char **regex, char **error) {
  _Bool complement = 0;
  if (**regex == '~')
    ++*regex, complement = 1;
  struct nfa term = {.complemented = 0};
  term.initial = term.final = nstate_alloc();
  while (!strchr(")|&", **regex)) {
    struct nfa factor = parse_factor(regex, error);
    if (*error) {
      nfa_free(term);
      return (struct nfa){((void*)0)};
    }
    nfa_uncomplement(&factor);
    nfa_concat(&term, factor);
  }
  if (complement)
    term.complemented = 1;
  return term;
}
static struct nfa parse_regex(char **regex, char **error) {
  struct nfa re = parse_term(regex, error);
  if (*error)
    return (struct nfa){((void*)0)};
  while (**regex == '|' || **regex == '&') {
    _Bool intersect = *(*regex)++ == '&';
    struct nfa alt = parse_term(regex, error);
    if (*error) {
      nfa_free(re);
      return (struct nfa){((void*)0)};
    }
    re.complemented ^= intersect, alt.complemented ^= intersect;
    nfa_uncomplement(&re), nfa_uncomplement(&alt);
    nfa_pad_initial(&re), nfa_pad_final(&alt);
    re.initial->epsilon1 = alt.initial;
    re.final->epsilon0 = alt.final;
    re.final->next = alt.initial;
    re.final = alt.final;
    re.complemented ^= intersect;
  }
  return re;
}
struct nfa ltre_parse(char **regex, char **error) {
  char *e, *r = *regex;
  if (error == ((void*)0))
    error = &e, regex = &r;
  *error = ((void*)0);
  struct nfa nfa = parse_regex(regex, error);
  if (*error)
    return (struct nfa){((void*)0)};
  if (**regex != '\0') {
    *error = "expected end of input";
    nfa_free(nfa);
    return (struct nfa){((void*)0)};
  }
  return nfa;
}
struct nfa ltre_fixed_string(char *string) {
  struct nfa nfa = {.complemented = 0};
  nfa.initial = nfa.final = nstate_alloc();
  for (; *string; string++) {
    struct nstate *initial = nfa.final;
    nfa.final = nstate_alloc();
    initial->next = nfa.final;
    initial->target = nfa.final;
    bitset_set(initial->label, (uint8_t)*string);
  }
  return nfa;
}
void ltre_partial(struct nfa *nfa) {
  nfa_uncomplement(nfa);
  nfa_pad_initial(nfa), nfa_pad_final(nfa);
  nfa->initial->target = nfa->initial;
  nfa->final->target = nfa->final;
  memset(nfa->initial->label, 0xff, sizeof(symset_t));
  memset(nfa->final->label, 0xff, sizeof(symset_t));
}
void ltre_ignorecase(struct nfa *nfa) {
  nfa_uncomplement(nfa);
  for (struct nstate *nstate = nfa->initial; nstate; nstate = nstate->next) {
    for (int chr = 0; chr < 256; chr++) {
      if (bitset_get(nstate->label, chr)) {
        bitset_set(nstate->label, tolower(chr));
        bitset_set(nstate->label, toupper(chr));
      }
    }
  }
}
void ltre_complement(struct nfa *nfa) {
  nfa->complemented = !nfa->complemented;
}
static void epsilon_closure(struct nstate *nstate, uint8_t bitset[]) {
  if (!nstate)
    return;
  if (bitset_get(bitset, nstate->id))
    return;
  bitset_set(bitset, nstate->id);
  epsilon_closure(nstate->epsilon0, bitset);
  epsilon_closure(nstate->epsilon1, bitset);
}
static void dfa_step(struct dstate **dfap, struct dstate *dstate, uint8_t chr,
                     struct nfa nfa, int nfa_size, struct nstate *nstates[]) {
  int bitset_size = (nfa_size + 7) / 8;
  uint8_t bitset_union[bitset_size];
  memset(bitset_union, 0x00, bitset_size);
  if (dstate) {
    for (int id = 0; id < nfa_size; id++)
      if (bitset_get(dstate->bitset, id) && bitset_get(nstates[id]->label, chr))
        epsilon_closure(nstates[id]->target, bitset_union);
  } else
    epsilon_closure(nfa.initial, bitset_union);
  struct dstate **dstatep = dfap;
  while (*dstatep && memcmp((*dstatep)->bitset, bitset_union, bitset_size))
    dstatep = &(*dstatep)->next;
  if (!*dstatep) {
    *dstatep = dstate_alloc(bitset_size);
    memcpy((*dstatep)->bitset, bitset_union, bitset_size);
    (*dstatep)->accepting = bitset_get(bitset_union, nfa.final->id);
    (*dstatep)->accepting ^= nfa.complemented;
  }
  if (dstate)
    dstate->transitions[chr] = *dstatep;
}
struct dstate *ltre_compile(struct nfa nfa) {
  int nfa_size = nfa_get_size(nfa);
  struct nstate *nstates[nfa_size];
  for (struct nstate *nstate = nfa.initial; nstate; nstate = nstate->next)
    nstates[nstate->id] = nstate;
  struct dstate *dfa = ((void*)0);
  dfa_step(&dfa, ((void*)0), 0, nfa, nfa_size, nstates);
  for (struct dstate *dstate = dfa; dstate; dstate = dstate->next)
    for (int chr = 0; chr < 256; chr++)
      dfa_step(&dfa, dstate, chr, nfa, nfa_size, nstates);
  int dfa_size = dfa_get_size(dfa);
  struct dstate *dstates[dfa_size];
  for (struct dstate *dstate = dfa; dstate; dstate = dstate->next)
    dstates[dstate->id] = dstate;
  uint8_t dis[dfa_size][(dfa_size + 7) / 8];
  memset(dis, 0x00, sizeof(dis));
  for (struct dstate *ds1 = dfa; ds1; ds1 = ds1->next)
    for (struct dstate *ds2 = ds1->next; ds2; ds2 = ds2->next)
      if (ds1->accepting != ds2->accepting)
        bitset_set(dis[ds1->id], ds2->id), bitset_set(dis[ds2->id], ds1->id);
  for (_Bool done = 0; done = !done;)
    for (int id1 = 0; id1 < dfa_size; id1++)
      for (int id2 = id1 + 1; id2 < dfa_size; id2++)
        if (!bitset_get(dis[id1], id2))
          for (int chr = 0; chr < 256; chr++)
            if (dstates[id1]->transitions[chr] !=
                dstates[id2]->transitions[chr])
              if (bitset_get(dis[dstates[id1]->transitions[chr]->id], dstates[id2]->transitions[chr]->id)) {
                bitset_set(dis[id1], id2), bitset_set(dis[id2], id1), done = 0;
                break;
              }
  for (struct dstate *ds1 = dfa; ds1; ds1 = ds1->next) {
    for (struct dstate *prev = ds1; prev; prev = prev->next) {
      for (struct dstate *ds2; ds2 = prev->next;) {
        if (bitset_get(dis[ds1->id], ds2->id))
          break;
        for (struct dstate *dstate = dfa; dstate; dstate = dstate->next)
          for (int chr = 0; chr < 256; chr++)
            if (dstate->transitions[chr] == ds2)
              dstate->transitions[chr] = ds1;
        prev->next = ds2->next, free(ds2);
      }
    }
    ds1->terminating = 1;
    for (int chr = 0; chr < 256; chr++)
      if (ds1->transitions[chr] != ds1)
        ds1->terminating = 0;
  }
  return dfa;
}
_Bool ltre_matches(struct dstate *dfa, uint8_t *input) {
  for (; !dfa->terminating && *input; input++)
    dfa = dfa->transitions[*input];
  return dfa->accepting;
}
_Bool ltre_matches_lazy(struct dstate **dfap, struct nfa nfa, uint8_t *input) {
  int nfa_size = nfa_get_size(nfa);
  struct nstate *nstates[nfa_size];
  for (struct nstate *nstate = nfa.initial; nstate; nstate = nstate->next)
    nstates[nstate->id] = nstate;
  dfa_step(dfap, ((void*)0), 0, nfa, nfa_size, nstates);
  struct dstate *dstate = *dfap;
  for (; *input; dstate = dstate->transitions[*input++])
    if (!dstate->transitions[*input])
      dfa_step(dfap, dstate, *input, nfa, nfa_size, nstates);
  return dstate->accepting;
}
struct nfa ltre_uncompile(struct dstate *dfa) {
  int dfa_size = dfa_get_size(dfa);
  struct nfa nfa = {.initial = nstate_alloc(),
                    .final = nstate_alloc(),
                    .complemented = 0};
  struct nstate *tail = nfa.initial;
  struct nstate *nstates[dfa_size];
  for (int id = 0; id < dfa_size; id++)
    nstates[id] = tail->next = nstate_alloc(), tail = tail->next;
  nfa.initial->epsilon1 = nstates[dfa->id];
  for (struct dstate *dstate = dfa; dstate; dstate = dstate->next)
    if (dstate->accepting)
      nstates[dstate->id]->epsilon1 = nfa.final;
  for (struct dstate *ds1 = dfa; ds1; ds1 = ds1->next) {
    struct nstate *free = ((void*)0);
    for (struct dstate *ds2 = dfa; ds2; ds2 = ds2->next) {
      _Bool empty = 1;
      symset_t transitions = {0};
      for (int chr = 0; chr < 256; chr++)
        if (ds1->transitions[chr] == ds2)
          bitset_set(transitions, chr), empty = 0;
      if (empty)
        continue;
      struct nstate *src;
      if (free == ((void*)0))
        free = nstates[ds1->id], src = free;
      else {
        src = tail->next = nstate_alloc(), tail = tail->next;
        if (!free->epsilon1)
          free->epsilon1 = tail;
        else
          free->epsilon0 = tail, free = tail;
      }
      src->target = nstates[ds2->id];
      memcpy(src->label, transitions, sizeof(symset_t));
    }
  }
  tail->next = nfa.final;
  return nfa;
}
char *ltre_decompile(struct dstate *dfa) {
  enum prec {
    ALT,
    CONCAT,
    QUANT,
    SYMSET,
  };
  struct arrow {
    char *label;
    enum prec prec;
  };
  int dfa_size = dfa_get_size(dfa);
  struct arrow arrows[dfa_size + 1][dfa_size + 1];
  for (int id = 0; id <= dfa_size; id++)
    arrows[dfa_size][id].label = arrows[id][dfa_size].label = ((void*)0);
  arrows[dfa_size][dfa->id].label = malloc(1);
  *arrows[dfa_size][dfa->id].label = '\0';
  arrows[dfa_size][dfa->id].prec = SYMSET;
  for (struct dstate *ds1 = dfa; ds1; ds1 = ds1->next) {
    if (ds1->accepting) {
      arrows[ds1->id][dfa_size].label = malloc(1);
      *arrows[ds1->id][dfa_size].label = '\0';
      arrows[ds1->id][dfa_size].prec = SYMSET;
    }
    for (struct dstate *ds2 = dfa; ds2; ds2 = ds2->next) {
      _Bool empty = 1;
      symset_t transitions = {0};
      for (int chr = 0; chr < 256; chr++)
        if (ds1->transitions[chr] == ds2)
          bitset_set(transitions, chr), empty = 0;
      arrows[ds1->id][ds2->id].label = ((void*)0);
      if (empty)
        continue;
      char *fmt = symset_fmt(transitions);
      arrows[ds1->id][ds2->id].label = malloc(strlen(fmt) + 1);
      strcpy(arrows[ds1->id][ds2->id].label, fmt);
      arrows[ds1->id][ds2->id].prec = SYMSET;
    }
  }
  while (1) {
    int best_fit;
    int min_degree = 2147483647;
    for (int id1 = 0; id1 < dfa_size; id1++) {
      int degree = 0;
      for (int id2 = 0; id2 < dfa_size; id2++)
        degree +=
            (arrows[id1][id2].label != ((void*)0)) + (arrows[id2][id1].label != ((void*)0));
      if (degree == 0)
        continue;
      if (degree < min_degree)
        min_degree = degree, best_fit = id1;
    }
    if (min_degree == 2147483647)
      break;
    for (int id1 = 0; id1 <= dfa_size; id1++) {
      if (id1 == best_fit)
        continue;
      for (int id2 = 0; id2 <= dfa_size; id2++) {
        if (id2 == best_fit)
          continue;
        struct arrow in = arrows[id1][best_fit];
        struct arrow out = arrows[best_fit][id2];
        struct arrow self = arrows[best_fit][best_fit];
        struct arrow existing = arrows[id1][id2];
        if (!in.label || !out.label)
          continue;
        struct arrow first, second;
        ptrdiff_t diff;
        if (!self.label || !*self.label) {
          first = in, second = out;
        } else if (in.prec >= CONCAT && self.prec >= CONCAT &&
                   (diff = strlen(in.label) - strlen(self.label)) >= 0 &&
                   strcmp(in.label + diff, self.label) == 0) {
          if (diff >= 1 && strchr("^-\\", in.label[diff - 1]) &&
              (diff == 1 || in.label[diff - 2] != '\\'))
            goto nevermind;
          if (diff >= 2 && strncmp(&in.label[diff - 2], "\\x", 2) == 0 &&
              (diff == 2 || in.label[diff - 3] != '\\'))
            goto nevermind;
          if (diff >= 3 && strncmp(&in.label[diff - 3], "\\x", 2) == 0 &&
              (diff == 3 || in.label[diff - 4] != '\\'))
            goto nevermind;
          first.label = malloc(strlen(in.label) + 5 + 1);
          char *p = first.label;
          if (diff != 0 && in.prec < CONCAT)
            *p++ = '(';
          memcpy(p, in.label, diff), p += diff;
          if (diff != 0 && in.prec < CONCAT)
            *p++ = ')';
          if (self.prec <= QUANT)
            *p++ = '(';
          strcpy(p, self.label), p += strlen(self.label);
          if (self.prec <= QUANT)
            *p++ = ')';
          *p++ = '+';
          *p++ = '\0';
          first.prec = CONCAT;
          second = out;
        } else
        nevermind:
          if (out.prec >= CONCAT && self.prec >= CONCAT &&
              (diff = strlen(out.label) - strlen(self.label)) >= 0 &&
              strncmp(out.label, self.label, strlen(self.label)) == 0) {
            second.label = malloc(strlen(out.label) + 5 + 1);
            char *p = second.label;
            if (self.prec <= QUANT)
              *p++ = '(';
            strcpy(p, self.label), p += strlen(self.label);
            if (self.prec <= QUANT)
              *p++ = ')';
            *p++ = '+';
            if (diff != 0 && out.prec < CONCAT)
              *p++ = '(';
            memcpy(p, out.label + diff, diff), p += diff;
            if (diff != 0 && out.prec < CONCAT)
              *p++ = ')';
            *p++ = '\0';
            second.prec = CONCAT;
            first = in;
          } else {
            second.label =
                malloc(strlen(self.label) + strlen(out.label) + 5 + 1);
            char *p = second.label;
            if (self.prec <= QUANT)
              *p++ = '(';
            strcpy(p, self.label), p += strlen(self.label);
            if (self.prec <= QUANT)
              *p++ = ')';
            *p++ = '*';
            if (out.prec < CONCAT)
              *p++ = '(';
            strcpy(p, out.label), p += strlen(out.label);
            if (out.prec < CONCAT)
              *p++ = ')';
            *p++ = '\0';
            second.prec = CONCAT;
            first = in;
          }
        struct arrow bypass;
        if (!*first.label) {
          bypass = second;
        } else if (!*second.label) {
          bypass = first;
        } else {
          bypass.label =
              malloc(strlen(first.label) + strlen(second.label) + 4 + 1);
          char *p = bypass.label;
          if (first.prec < CONCAT)
            *p++ = '(';
          strcpy(p, first.label), p += strlen(first.label);
          if (first.prec < CONCAT)
            *p++ = ')';
          if (second.prec < CONCAT)
            *p++ = '(';
          strcpy(p, second.label), p += strlen(second.label);
          if (second.prec < CONCAT)
            *p++ = ')';
          *p++ = '\0';
          bypass.prec = CONCAT;
        }
        struct arrow merged;
        if (!bypass.label) {
          merged = existing;
        } else if (!existing.label) {
          if (bypass.label == first.label || bypass.label == second.label) {
            merged.label = malloc(strlen(bypass.label) + 1);
            strcpy(merged.label, bypass.label);
            merged.prec = bypass.prec;
          } else
            merged = bypass;
        } else if (!*existing.label) {
          merged.label = malloc(strlen(bypass.label) + 3 + 1);
          char *p = merged.label;
          if (bypass.prec <= QUANT)
            *p++ = '(';
          strcpy(p, bypass.label), p += strlen(bypass.label);
          if (bypass.prec <= QUANT)
            *p++ = ')';
          *p++ = '?';
          *p++ = '\0';
          merged.prec = QUANT;
        } else {
          merged.label =
              malloc(strlen(existing.label) + strlen(bypass.label) + 1 + 1);
          char *p = merged.label;
          strcpy(p, existing.label), p += strlen(existing.label);
          *p++ = '|';
          strcpy(p, bypass.label), p += strlen(bypass.label);
          *p++ = '\0';
          merged.prec = ALT;
        }
        if (first.label != in.label)
          free(first.label);
        if (second.label != out.label)
          free(second.label);
        if (bypass.label != first.label && bypass.label != second.label &&
            bypass.label != merged.label)
          free(bypass.label);
        if (existing.label != merged.label)
          free(existing.label);
        arrows[id1][id2] = merged;
      }
    }
    for (int id = 0; id <= dfa_size; id++) {
      free(arrows[id][best_fit].label), arrows[id][best_fit].label = ((void*)0);
      free(arrows[best_fit][id].label), arrows[best_fit][id].label = ((void*)0);
    }
  }
  char *regex = arrows[dfa_size][dfa_size].label;
  if (!regex)
    regex = malloc(3), strcpy(regex, "[]");
  return regex;
}

