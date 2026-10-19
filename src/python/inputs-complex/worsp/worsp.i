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
typedef enum {
  TK_DIGIT,
  TK_LPAREN,
  TK_RPAREN,
  TK_SYMBOL,
  TK_STRING,
  TK_TRUE,
  TK_FALSE,
  TK_EOF,
  TK_QUOTE,
} TokenKind;
struct Token {
  TokenKind kind;
  struct Token *next;
  int val;
  char *str;
};
struct ParseState {
  struct Token *token;
  int pos;
};
struct ProgramNode {
  struct ExpressionList *expressions;
};
enum ExpressionType {
  EXP_LITERAL,
  EXP_SYMBOL,
  EXP_LIST,
  EXP_SYMBOLIC_EXP,
};
struct ExpressionList {
  struct ExpressionNode *expression;
  struct ExpressionList *next;
};
struct ExpressionNode {
  enum ExpressionType type;
  union {
    struct SymbolicExpNode *symbolic_exp;
    struct ListNode *list;
    struct LiteralNode *literal;
    struct SymbolNode *symbol;
  } data;
};
struct SymbolicExpNode {
  struct ExpressionList *expressions;
};
struct ListNode {
  struct ExpressionList *expressions;
};
enum LiteralType { LIT_INTERGER, LIT_STRING, LIT_BOOLEAN };
struct LiteralNode {
  enum LiteralType type;
  union {
    int int_value;
    _Bool boolean_value;
    char *string_value;
  };
};
struct SymbolNode {
  char *symbol_name;
};
struct ParseResult {
  struct ProgramNode *program;
};
int match(struct ParseState *state, TokenKind kind);
void next(char *source, struct ParseState *state);
void parse(char *source, struct ParseState *state, struct ParseResult *result);
typedef enum {
  OBJ_INTEGER,
  OBJ_STRING,
  OBJ_BOOL,
  OBJ_LIST,
  OBJ_NIL,
  OBJ_FUNCTION,
} ObjectType;
typedef enum {
  CONSCELL_TYPE_CELL,
  CONSCELL_TYPE_NIL,
} ConsCellType;
struct ConsCell {
  ConsCellType type;
  struct Object *car;
  struct Object *cdr;
};
struct Function {
  char **param_symbol_names;
  struct ExpressionNode *body;
};
struct Object {
  _Bool marked;
  ObjectType type;
  union {
    int int_value;
    char *string_value;
    int bool_value;
    struct ConsCell *list_value;
    struct Function *function_value;
  };
};
struct Binding {
  char *symbol_name;
  struct Object *value;
};
struct Env {
  struct Binding bindings[10];
  struct Env *parent;
};
struct ObjectStack {
  struct Object *objects[50];
  int top;
};
struct AllocatorContext {
  int gc_less_mode;
  struct ObjectStack *stack;
  struct Object *memory_pool;
  uint8_t free_bitmap[((sizeof(struct Object) * 50) / sizeof(struct Object))];
};
void evaluateExpression(struct ExpressionNode *expression,
                        struct Object *result, struct Env *env,
                        struct AllocatorContext *context);
void evaluateExpressionWithContext(struct ExpressionNode *expression,
                                   struct Object *result, struct Env *env);
void evaluate(struct ParseResult *result);
char *stringifyObject(struct Object *obj);
void initEnv(struct Env *env);
struct AllocatorContext *initAllocator();
struct Object *allocate(struct AllocatorContext *context, struct Env *env);
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

int main(int argc, char *argv[]) {
  if (argc != 2) {
    printf("filepath is required.\n");
    return 1;
  }
  char *filepath = argv[1];
  FILE *file =
      fopen(filepath, "rb");
  if (file == ((void*)0)) {
    perror("Cannot open file");
    return 1;
  }
  fseek(file, 0, 2);
  long file_size = ftell(file);
  fseek(file, 0, 0);
  char *file_contents = (char *)malloc(file_size + 1);
  if (file_contents == ((void*)0)) {
    perror("Failed to malloc");
    fclose(file);
    return 1;
  }
  fread(file_contents, 1, file_size, file);
  file_contents[file_size] = '\0';
  fclose(file);
  struct ParseState state = (struct ParseState){((void*)0), 0};
  struct ParseResult *result = malloc(sizeof(struct ParseResult));
  parse(file_contents, &state, result);
  evaluate(result);
  free(file_contents);
  free(result);
  return 0;
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
int isop(int ch) {
  return ch == '+' || ch == '-' || ch == '*' || ch == '/' || ch == '%' ||
         ch == '|' || ch == '&' || ch == '=' || ch == '<' || ch == '>';
}
int match(struct ParseState *state, TokenKind kind) {
  return state->token->kind == kind ? 1 : 0;
}
void next(char *source, struct ParseState *state) {
  while (((*__ctype_b_loc ())[(int) ((source[state->pos]))] & (unsigned short int) _ISspace) || source[state->pos] == '\n') {
    state->pos++;
  }
  struct Token *current = state->token;
  struct Token *new = malloc(sizeof(struct Token));
  if (source[state->pos] == '(') {
    new->kind = TK_LPAREN;
    new->str = "(";
    state->pos++;
  } else if (source[state->pos] == ')') {
    new->kind = TK_RPAREN;
    new->str = ")";
    state->pos++;
  } else if (source[state->pos] == '\'') {
    new->kind = TK_QUOTE;
    new->str = "'";
    state->pos++;
  } else if (source[state->pos] == '\0') {
    new->kind = TK_EOF;
    new->str = "\0";
  } else if (((*__ctype_b_loc ())[(int) ((source[state->pos]))] & (unsigned short int) _ISalpha) || isop(source[state->pos])) {
    int start = state->pos;
    while (((*__ctype_b_loc ())[(int) ((source[state->pos]))] & (unsigned short int) _ISalnum) || isop(source[state->pos])) {
      state->pos++;
    }
    int length = state->pos - start;
    char *str = malloc(length + 1);
    strncpy(str, &source[start], length);
    str[length] = '\0';
    if (strcmp(str, "true") == 0) {
      new->kind = TK_TRUE;
      free(str);
    } else if (strcmp(str, "false") == 0) {
      new->kind = TK_FALSE;
      free(str);
    } else {
      new->kind = TK_SYMBOL;
      new->str = str;
    }
  } else if (((*__ctype_b_loc ())[(int) ((source[state->pos]))] & (unsigned short int) _ISdigit)) {
    int start = state->pos;
    while (((*__ctype_b_loc ())[(int) ((source[state->pos]))] & (unsigned short int) _ISdigit)) {
      state->pos++;
    }
    int length = state->pos - start;
    char *str = malloc(length + 1);
    strncpy(str, &source[start], length);
    str[length] = '\0';
    int val = atoi(str);
    free(str);
    new->kind = TK_DIGIT;
    new->val = val;
  } else if (source[state->pos] == '"') {
    state->pos++;
    int start = state->pos;
    while (source[state->pos] != '"' && source[state->pos] != '\0') {
      state->pos++;
    }
    int length = state->pos - start;
    new->kind = TK_STRING;
    new->str = malloc(length + 1);
    strncpy(new->str, &source[start], length);
    new->str[length] = '\0';
    if (source[state->pos] == '"') {
      state->pos++;
    }
  } else if (source[state->pos] == ';') {
    while (source[state->pos] != '\n' && source[state->pos] != '\0') {
      state->pos++;
    }
    next(source, state);
    return;
  } else {
    printf("Unexpected token: %c\n", source[state->pos]);
    exit(1);
  }
  if (current == ((void*)0)) {
    state->token = new;
    return;
  }
  state->token = current->next = new;
}
void appendExpressionToListExpression(struct ListNode *listNode,
                                      struct ExpressionNode *expression) {
  struct ExpressionList *expressions = malloc(sizeof(struct ExpressionList));
  expressions->expression = expression;
  expressions->next = ((void*)0);
  if (listNode->expressions == ((void*)0)) {
    listNode->expressions = expressions;
    return;
  }
  struct ExpressionList *current = listNode->expressions;
  while (current->next != ((void*)0)) {
    current = current->next;
  }
  current->next = expressions;
}
void appendExpressionToSymbolicExpression(
    struct SymbolicExpNode *symbolicExpNode,
    struct ExpressionNode *expression) {
  struct ExpressionList *expressions = malloc(sizeof(struct ExpressionList));
  expressions->expression = expression;
  expressions->next = ((void*)0);
  if (symbolicExpNode->expressions == ((void*)0)) {
    symbolicExpNode->expressions = expressions;
    return;
  }
  struct ExpressionList *current = symbolicExpNode->expressions;
  while (current->next != ((void*)0)) {
    current = current->next;
  }
  current->next = expressions;
}
void parseExpression(char *source, struct ParseState *state,
                     struct ExpressionNode *expression);
void parseSymbolicExpression(char *source, struct ParseState *state,
                             struct ExpressionNode *expression) {
  struct SymbolicExpNode *symbolicExp = malloc(sizeof(struct SymbolicExpNode));
  expression->type = EXP_SYMBOLIC_EXP;
  expression->data.symbolic_exp = symbolicExp;
  expression->data.symbolic_exp->expressions = ((void*)0);
  next(source, state);
  while (!match(state, TK_RPAREN)) {
    struct ExpressionNode *expressionItem =
        malloc(sizeof(struct ExpressionNode));
    parseExpression(source, state, expressionItem);
    appendExpressionToSymbolicExpression(symbolicExp, expressionItem);
  }
  next(source, state);
}
void parseListExpression(char *source, struct ParseState *state,
                         struct ExpressionNode *expression) {
  struct ListNode *list = malloc(sizeof(struct ListNode));
  expression->type = EXP_LIST;
  expression->data.list = list;
  expression->data.list->expressions = ((void*)0);
  next(source, state);
  next(source, state);
  while (!match(state, TK_RPAREN)) {
    struct ExpressionNode *expressionItem =
        malloc(sizeof(struct ExpressionNode));
    parseExpression(source, state, expressionItem);
    appendExpressionToListExpression(list, expressionItem);
  }
  next(source, state);
}
void parseSymbolExpression(char *source, struct ParseState *state,
                           struct ExpressionNode *expression) {
  expression->type = EXP_SYMBOL;
  expression->data.symbol = malloc(sizeof(struct SymbolNode));
  expression->data.symbol->symbol_name = state->token->str;
  next(source, state);
}
void parseLiteralExpression(char *source, struct ParseState *state,
                            struct ExpressionNode *expression) {
  if (match(state, TK_DIGIT)) {
    expression->type = EXP_LITERAL;
    expression->data.literal = malloc(sizeof(struct LiteralNode));
    expression->data.literal->type = LIT_INTERGER;
    expression->data.literal->int_value = state->token->val;
    next(source, state);
  } else if (match(state, TK_STRING)) {
    expression->type = EXP_LITERAL;
    expression->data.literal = malloc(sizeof(struct LiteralNode));
    expression->data.literal->type = LIT_STRING;
    expression->data.literal->string_value = state->token->str;
    next(source, state);
  } else if (match(state, TK_TRUE)) {
    expression->type = EXP_LITERAL;
    expression->data.literal = malloc(sizeof(struct LiteralNode));
    expression->data.literal->type = LIT_BOOLEAN;
    expression->data.literal->boolean_value = 1;
    next(source, state);
  } else if (match(state, TK_FALSE)) {
    expression->type = EXP_LITERAL;
    expression->data.literal = malloc(sizeof(struct LiteralNode));
    expression->data.literal->type = LIT_BOOLEAN;
    expression->data.literal->boolean_value = 0;
    next(source, state);
  } else {
    printf("Unexpected token: %s\n", state->token->str);
    exit(1);
  }
}
void parseExpression(char *source, struct ParseState *state,
                     struct ExpressionNode *expression) {
  if (match(state, TK_LPAREN)) {
    parseSymbolicExpression(source, state, expression);
  } else if (match(state, TK_QUOTE)) {
    parseListExpression(source, state, expression);
  } else if (match(state, TK_SYMBOL)) {
    parseSymbolExpression(source, state, expression);
  } else if (match(state, TK_DIGIT) || match(state, TK_STRING) ||
             match(state, TK_TRUE) || match(state, TK_FALSE)) {
    parseLiteralExpression(source, state, expression);
  } else {
    printf("Unexpected token: %s\n", state->token->str);
    exit(1);
  }
}
void appendExpressionToProgram(struct ProgramNode *program,
                               struct ExpressionNode *expression) {
  struct ExpressionList *expressions = malloc(sizeof(struct ExpressionList));
  expressions->expression = expression;
  expressions->next = ((void*)0);
  if (program->expressions == ((void*)0)) {
    program->expressions = expressions;
    return;
  }
  struct ExpressionList *current = program->expressions;
  while (current->next != ((void*)0)) {
    current = current->next;
  }
  current->next = expressions;
}
void parseProgram(char *source, struct ParseState *state,
                  struct ParseResult *result) {
  next(source, state);
  struct ProgramNode *program = malloc(sizeof(struct ProgramNode));
  program->expressions = ((void*)0);
  result->program = program;
  while (!match(state, TK_EOF)) {
    struct ExpressionNode *expression = malloc(sizeof(struct ExpressionNode));
    parseExpression(source, state, expression);
    appendExpressionToProgram(program, expression);
  }
}
void parse(char *source, struct ParseState *state, struct ParseResult *result) {
  parseProgram(source, state, result);
}
void initializeObjectStack(struct ObjectStack *stack) { stack->top = -1; }
int isFullObjectStack(struct ObjectStack *stack) {
  return stack->top == 50;
}
int isEmptyObjectStack(struct ObjectStack *stack) { return stack->top == -1; }
void pushObjectStack(struct ObjectStack *stack, struct Object *obj) {
  if (isFullObjectStack(stack)) {
    printf("Object stack is full.\n");
    exit(1);
  }
  stack->top++;
  stack->objects[stack->top] = obj;
}
struct Object *popObjectStack(struct ObjectStack *stack) {
  if (isEmptyObjectStack(stack)) {
    printf("Object stack is empty.\n");
    exit(1);
  }
  struct Object *obj = stack->objects[stack->top];
  stack->top--;
  return obj;
}
struct AllocatorContext *initAllocator() {
  struct AllocatorContext *context = malloc(sizeof(struct AllocatorContext));
  context->memory_pool = (struct Object *)malloc((sizeof(struct Object) * 50));
  for (unsigned long i = 0; i < ((sizeof(struct Object) * 50) / sizeof(struct Object)); ++i) {
    context->free_bitmap[i] = 0;
  }
  context->gc_less_mode = 0;
  struct ObjectStack *stack = malloc(sizeof(struct ObjectStack));
  initializeObjectStack(stack);
  context->stack = stack;
  return context;
}
void freeObject(struct AllocatorContext *context, struct Object *object) {
  int index = object - context->memory_pool;
  context->free_bitmap[index] = 0;
}
void sweep(struct AllocatorContext *context) {
  for (unsigned long i = 0; i < ((sizeof(struct Object) * 50) / sizeof(struct Object)); ++i) {
    if (context->free_bitmap[i] == 1) {
      struct Object *obj = &context->memory_pool[i];
      if (obj->marked) {
        obj->marked = 0;
      } else {
        freeObject(context, obj);
      }
    }
  }
}
int isLastConsCell(struct ConsCell *conscell) {
  return conscell->cdr->type == OBJ_NIL;
}
void mark(struct Object *obj) {
  if (obj->marked) {
    return;
  }
  obj->marked = 1;
  if (obj->type == OBJ_LIST) {
    struct Object *current = obj;
    while (1) {
      mark(current);
      if (current->list_value == ((void*)0)) {
        break;
      }
      mark(current->list_value->car);
      if (isLastConsCell(current->list_value)) {
        break;
      }
      current = current->list_value->cdr;
    }
  }
}
void markAll(struct Env *env, struct AllocatorContext *context) {
  for (int i = 0; i <= context->stack->top; i++) {
    struct Object *obj = context->stack->objects[i];
    mark(obj);
  }
  int i = 0;
  while (env->bindings[i].symbol_name != ((void*)0)) {
    struct Object *obj = env->bindings[i].value;
    mark(obj);
    i++;
  }
  if (env->parent != ((void*)0)) {
    markAll(env->parent, context);
  }
}
void gc(struct AllocatorContext *context, struct Env *env) {
  markAll(env, context);
  sweep(context);
}
struct Object *allocate(struct AllocatorContext *context, struct Env *env) {
  size_t object_size = sizeof(struct Object);
  if (context->gc_less_mode) {
    return malloc(object_size);
  }
  for (unsigned long i = 0; i < ((sizeof(struct Object) * 50) / sizeof(struct Object)); ++i) {
    if (context->free_bitmap[i] == 0) {
      context->free_bitmap[i] = 1;
      return &context->memory_pool[i];
    }
  }
  gc(context, env);
  for (unsigned long i = 0; i < ((sizeof(struct Object) * 50) / sizeof(struct Object)); ++i) {
    if (context->free_bitmap[i] == 0) {
      context->free_bitmap[i] = 1;
      return &context->memory_pool[i];
    }
  }
  fprintf(stderr, "Out of Memory\n");
  exit(1);
}
_Bool boolVal(struct Object *obj) {
  if (obj->type == OBJ_BOOL) {
    return obj->bool_value;
  } else if (obj->type == OBJ_NIL) {
    return 0;
  } else {
    return 1;
  }
}
int eq(struct Object *op1, struct Object *op2) {
  if (op1->type != op2->type) {
    return 0;
  } else {
    if (op1->type == OBJ_INTEGER) {
      return op1->int_value == op2->int_value;
    } else if (op1->type == OBJ_STRING) {
      return strcmp(op1->string_value, op2->string_value) == 0;
    } else if (op1->type == OBJ_BOOL) {
      return op1->bool_value == op2->bool_value;
    } else if (op1->type == OBJ_LIST) {
      return op1->list_value == op2->list_value;
    } else if (op1->type == OBJ_NIL) {
      return 1;
    }
  }
  return 0;
}
char *stringifyObject(struct Object *obj) {
  if (obj->type == OBJ_INTEGER) {
    if (obj->int_value == 0) {
      char *str = (char *)malloc(2 * sizeof(char));
      strncpy(str, "0", 2);
      return str;
    }
    int digits = (int)log10(obj->int_value) + 1;
    char *str = (char *)malloc((digits + 1) * sizeof(char));
    sprintf(str, "%d", obj->int_value);
    return str;
  } else if (obj->type == OBJ_STRING) {
    char *str = (char *)malloc((strlen(obj->string_value) + 1) * sizeof(char));
    strncpy(str, obj->string_value, strlen(obj->string_value) + 1);
    return str;
  } else if (obj->type == OBJ_BOOL) {
    char *str = (char *)malloc(1 * sizeof(char));
    if (obj->bool_value) {
      strncpy(str, "T", 2);
    } else {
      strncpy(str, "F", 2);
    }
    return str;
  } else if (obj->type == OBJ_LIST) {
    int length = 2;
    char *str = (char *)malloc(length + 1 * sizeof(char));
    memset(str, 0, length + 1);
    str[0] = '(';
    struct ConsCell *current = obj->list_value;
    while (1) {
      char *serialized = stringifyObject(current->car);
      length += strlen(serialized);
      str = realloc(str, length + 1);
      strncat(str, serialized, strlen(serialized));
      if (isLastConsCell(current)) {
        break;
      } else {
        length += 1;
        str = realloc(str, length + 1);
        strncat(str, " ", 1);
      }
      current = current->cdr->list_value;
    }
    str[length - 1] = ')';
    str[length] = '\0';
    return str;
  } else if (obj->type == OBJ_NIL) {
    char *str = (char *)malloc(4 * sizeof(char));
    strncpy(str, "nil", 4);
    return str;
  } else if (obj->type == OBJ_FUNCTION) {
    char *str = (char *)malloc(9 * sizeof(char));
    strncpy(str, "<function>", 10);
    return str;
  } else {
    printf("Unexpected object type: %d\n", obj->type);
    exit(1);
  }
}
void definedFunctionAdd(struct Object *op1, struct Object *op2,
                        struct Object *evaluated) {
  if (op1->type == OBJ_INTEGER && op2->type == OBJ_INTEGER) {
    evaluated->type = OBJ_INTEGER;
    evaluated->int_value = op1->int_value + op2->int_value;
  } else if (op1->type == OBJ_STRING && op2->type == OBJ_STRING) {
    evaluated->type = OBJ_STRING;
    evaluated->string_value =
        malloc((strlen(op1->string_value) + strlen(op2->string_value) + 1) *
               sizeof(char));
    strncpy(evaluated->string_value, op1->string_value,
            strlen(op1->string_value) + 1);
    strcat(evaluated->string_value, op2->string_value);
  } else {
    printf("Type error: operands for + must be integers or strings.\n");
    exit(1);
  }
}
void definedFunctionSub(struct Object *op1, struct Object *op2,
                        struct Object *evaluated) {
  if (op1->type == OBJ_INTEGER && op2->type == OBJ_INTEGER) {
    evaluated->type = OBJ_INTEGER;
    evaluated->int_value = op1->int_value - op2->int_value;
  } else {
    printf("Type error: operands for - must be integers.\n");
    exit(1);
  }
}
void definedFunctionMul(struct Object *op1, struct Object *op2,
                        struct Object *evaluated) {
  if (op1->type == OBJ_INTEGER && op2->type == OBJ_INTEGER) {
    evaluated->type = OBJ_INTEGER;
    evaluated->int_value = op1->int_value * op2->int_value;
  } else {
    printf("Type error: operands for * must be integers.\n");
    exit(1);
  }
}
void definedFunctionDiv(struct Object *op1, struct Object *op2,
                        struct Object *evaluated) {
  if (op1->type == OBJ_INTEGER && op2->type == OBJ_INTEGER) {
    evaluated->type = OBJ_INTEGER;
    evaluated->int_value = op1->int_value / op2->int_value;
  } else {
    printf("Type error: operands for / must be integers.\n");
    exit(1);
  }
}
void definedFunctionMod(struct Object *op1, struct Object *op2,
                        struct Object *evaluated) {
  if (op1->type == OBJ_INTEGER && op2->type == OBJ_INTEGER) {
    evaluated->type = OBJ_INTEGER;
    evaluated->int_value = op1->int_value % op2->int_value;
  } else {
    printf("Type error: operands for % must be integers.\n");
    exit(1);
  }
}
void definedFunctionOr(struct Object *op1, struct Object *op2,
                       struct Object *evaluated) {
  if (boolVal(op1) || boolVal(op2)) {
    evaluated->type = OBJ_BOOL;
    evaluated->bool_value = 1;
  } else {
    evaluated->type = OBJ_BOOL;
    evaluated->bool_value = 0;
  }
}
void definedFunctionAnd(struct Object *op1, struct Object *op2,
                        struct Object *evaluated) {
  if (boolVal(op1) && boolVal(op2)) {
    evaluated->type = OBJ_BOOL;
    evaluated->bool_value = 1;
  } else {
    evaluated->type = OBJ_BOOL;
    evaluated->bool_value = 0;
  }
}
void definedFunctionLt(struct Object *op1, struct Object *op2,
                       struct Object *evaluated) {
  if (op1->type == OBJ_INTEGER && op2->type == OBJ_INTEGER) {
    if (op1->int_value < op2->int_value) {
      evaluated->type = OBJ_BOOL;
      evaluated->bool_value = 1;
    } else {
      evaluated->type = OBJ_BOOL;
      evaluated->bool_value = 0;
    }
  } else {
    printf("Type error: operands for < must be integers.\n");
    exit(1);
  }
}
void definedFunctionGt(struct Object *op1, struct Object *op2,
                       struct Object *evaluated) {
  if (op1->type == OBJ_INTEGER && op2->type == OBJ_INTEGER) {
    if (op1->int_value > op2->int_value) {
      evaluated->type = OBJ_BOOL;
      evaluated->bool_value = 1;
    } else {
      evaluated->type = OBJ_BOOL;
      evaluated->bool_value = 0;
    }
  } else {
    printf("Type error: operands for < must be integers.\n");
    exit(1);
  }
}
void definedFunctionEq(struct Object *op1, struct Object *op2,
                       struct Object *evaluated) {
  if (eq(op1, op2)) {
    evaluated->type = OBJ_BOOL;
    evaluated->bool_value = 1;
  } else {
    evaluated->type = OBJ_BOOL;
    evaluated->bool_value = 0;
  }
}
void definedFunctionCar(struct Object *op, struct Object *evaluated) {
  if (op->type != OBJ_LIST) {
    printf("Type error: car operand must be list.\n");
    exit(1);
  }
  *evaluated = *(op->list_value->car);
}
void definedFunctionCdr(struct Object *op, struct Object *evaluated) {
  if (op->type != OBJ_LIST) {
    printf("Type error: cdr operand must be list.\n");
    exit(1);
  }
  *evaluated = *op->list_value->cdr;
}
void definedFunctionCons(struct Object *op1, struct Object *op2,
                         struct Object *evaluated, struct Env *env,
                         struct AllocatorContext *context) {
  evaluated->type = OBJ_LIST;
  evaluated->list_value = malloc(sizeof(struct ConsCell));
  evaluated->list_value->car = op1;
  if (op2->type == OBJ_LIST) {
    evaluated->list_value->type = CONSCELL_TYPE_CELL;
    evaluated->list_value->cdr = op2;
  } else if (op2->type == OBJ_NIL) {
    evaluated->list_value->cdr = op2;
  } else {
    struct Object *cdr_obj = allocate(context, env);
    cdr_obj->type = OBJ_LIST;
    struct ConsCell *new_conscell = malloc(sizeof(struct ConsCell));
    new_conscell->car = op2;
    new_conscell->type = CONSCELL_TYPE_CELL;
    new_conscell->cdr = allocate(context, env);
    new_conscell->cdr->type = OBJ_NIL;
    cdr_obj->list_value = new_conscell;
    evaluated->list_value->cdr = cdr_obj;
  }
}
void definedFunctionNot(struct Object *op, struct Object *evaluated) {
  if (op->type != OBJ_BOOL) {
    printf("Type error: not operand must be boolean.\n");
    exit(1);
  }
  evaluated->type = OBJ_BOOL;
  if (op->bool_value) {
    evaluated->bool_value = 0;
  } else {
    evaluated->bool_value = 1;
  }
}
void definedFunctionSplit(struct Object *op1, struct Object *op2,
                          struct Object *evaluated, struct Env *env,
                          struct AllocatorContext *context) {
  if (op1->type != OBJ_STRING) {
    printf("Type error: split first operand must be string.\n");
    exit(1);
  }
  if (op2->type != OBJ_STRING) {
    printf("Type error: split second operand must be string.\n");
    exit(1);
  }
  if (strcmp(op2->string_value, "") == 0) {
    evaluated->type = OBJ_LIST;
    evaluated->list_value = malloc(sizeof(struct ConsCell));
    evaluated->list_value->type = CONSCELL_TYPE_CELL;
    evaluated->list_value->car = allocate(context, env);
    evaluated->list_value->car->type = OBJ_STRING;
    evaluated->list_value->car->string_value = malloc(sizeof(char));
    evaluated->list_value->car->string_value[0] = op1->string_value[0];
    evaluated->list_value->cdr = allocate(context, env);
    evaluated->list_value->cdr->type = OBJ_NIL;
    struct ConsCell *current = evaluated->list_value;
    for (unsigned long i = 1; i < strlen(op1->string_value); i++) {
      struct ConsCell *new_conscell = malloc(sizeof(struct ConsCell));
      new_conscell->type = CONSCELL_TYPE_CELL;
      new_conscell->car = allocate(context, env);
      new_conscell->car->type = OBJ_STRING;
      new_conscell->car->string_value = malloc(sizeof(char));
      new_conscell->car->string_value[0] = op1->string_value[i];
      new_conscell->cdr = allocate(context, env);
      new_conscell->cdr->type = OBJ_NIL;
      current->cdr = allocate(context, env);
      current->cdr->type = OBJ_LIST;
      current->cdr->list_value = new_conscell;
      current = current->cdr->list_value;
    }
    return;
  }
  evaluated->type = OBJ_LIST;
  evaluated->list_value = malloc(sizeof(struct ConsCell));
  evaluated->list_value->type = CONSCELL_TYPE_CELL;
  evaluated->list_value->car = allocate(context, env);
  evaluated->list_value->car->type = OBJ_STRING;
  evaluated->list_value->car->string_value =
      strtok(op1->string_value, op2->string_value);
  evaluated->list_value->cdr = allocate(context, env);
  evaluated->list_value->cdr->type = OBJ_NIL;
  struct ConsCell *current = evaluated->list_value;
  while (1) {
    char *token = strtok(((void*)0), op2->string_value);
    if (token == ((void*)0)) {
      break;
    }
    struct ConsCell *new_conscell = malloc(sizeof(struct ConsCell));
    new_conscell->type = CONSCELL_TYPE_CELL;
    new_conscell->car = allocate(context, env);
    new_conscell->car->type = OBJ_STRING;
    new_conscell->car->string_value = token;
    new_conscell->cdr = allocate(context, env);
    new_conscell->cdr->type = OBJ_NIL;
    current->cdr = allocate(context, env);
    current->cdr->type = OBJ_LIST;
    current->cdr->list_value = new_conscell;
    current = current->cdr->list_value;
  }
}
void definedFunctionListRef(struct Object *op1, struct Object *op2,
                            struct Object *evaluated) {
  if (op1->type != OBJ_LIST) {
    printf("Type error: list-ref first operand must be list.\n");
    exit(1);
  }
  if (op2->type != OBJ_INTEGER) {
    printf("Type error: list-ref second operand must be integer.\n");
    exit(1);
  }
  int index = op2->int_value;
  struct ConsCell *current = op1->list_value;
  for (int i = 0; i < index; i++) {
    if (current->cdr->type == OBJ_NIL) {
      printf("Index out of range.\n");
      exit(1);
    }
    current = current->cdr->list_value;
  }
  *evaluated = *current->car;
}
void definedFunctionRemoveWhitespaces(struct Object *op1,
                                      struct Object *evaluated) {
  if (op1->type != OBJ_STRING) {
    printf("Type error: remove-whitespaces operand must be string.\n");
    exit(1);
  }
  char *str = op1->string_value;
  char *new_str = malloc(sizeof(char) * (strlen(str) + 1));
  int i = 0;
  int j = 0;
  while (str[i]) {
    if (!((*__ctype_b_loc ())[(int) ((str[i]))] & (unsigned short int) _ISspace)) {
      new_str[j++] = str[i];
    }
    i++;
  }
  new_str[j] = '\0';
  evaluated->type = OBJ_STRING;
  evaluated->string_value = new_str;
}
void definedFunctionPop(struct Object *op, struct Object *evaluated) {
  if (op->type == OBJ_NIL) {
    evaluated->type = OBJ_NIL;
    return;
  }
  if (op->type != OBJ_LIST) {
    printf("Type error: pop operand must be list.\n");
    exit(1);
  }
  struct ConsCell *current = op->list_value;
  struct ConsCell *prev = ((void*)0);
  while (1) {
    if (isLastConsCell(current)) {
      if (prev == ((void*)0)) {
        *evaluated = *current->car;
      } else {
        prev->cdr->type = OBJ_NIL;
        prev->cdr->list_value = ((void*)0);
        *evaluated = *current->car;
      }
      break;
    }
    prev = current;
    current = current->cdr->list_value;
  }
}
void definedFunctionPush(struct Object *op1, struct Object *op2,
                         struct Object *evaluated, struct Env *env,
                         struct AllocatorContext *context) {
  if (op1->type == OBJ_NIL) {
    *evaluated = *op2;
    int i = 0;
    while (env->bindings[i].symbol_name != ((void*)0)) {
      if (env->bindings[i].value == op1) {
        struct Object *new_list = allocate(context, env);
        new_list->type = OBJ_LIST;
        new_list->list_value = malloc(sizeof(struct ConsCell));
        new_list->list_value->type = CONSCELL_TYPE_CELL;
        new_list->list_value->car = op2;
        new_list->list_value->cdr = allocate(context, env);
        new_list->list_value->cdr->type = OBJ_NIL;
        env->bindings[i].value = new_list;
        break;
      }
      i++;
    }
    return;
  }
  if (op1->type != OBJ_LIST) {
    printf("Type error: push second operand must be list.\n");
    exit(1);
  }
  struct ConsCell *current = op1->list_value;
  while (1) {
    if (isLastConsCell(current)) {
      struct ConsCell *new_conscell = malloc(sizeof(struct ConsCell));
      new_conscell->type = CONSCELL_TYPE_CELL;
      new_conscell->car = op2;
      new_conscell->cdr = allocate(context, env);
      new_conscell->cdr->type = OBJ_NIL;
      current->cdr->type = OBJ_LIST;
      current->cdr->list_value = new_conscell;
      break;
    }
    current = current->cdr->list_value;
  }
  *evaluated = *op2;
}
void definedFunctionLength(struct Object *op, struct Object *evaluated) {
  if (op->type == OBJ_NIL) {
    evaluated->type = OBJ_INTEGER;
    evaluated->int_value = 0;
    return;
  }
  if (op->type == OBJ_LIST) {
    int length = 1;
    struct ConsCell *current = op->list_value;
    while (1) {
      if (isLastConsCell(current)) {
        break;
      }
      length++;
      current = current->cdr->list_value;
    }
    evaluated->type = OBJ_INTEGER;
    evaluated->int_value = length;
  } else if (op->type == OBJ_STRING) {
    evaluated->type = OBJ_INTEGER;
    evaluated->int_value = strlen(op->string_value);
  } else {
    printf("Type error: length operand must be list or string.\n");
    exit(1);
  }
}
void definedFunctionIsIntString(struct Object *op, struct Object *evaluated) {
  if (op->type == OBJ_STRING) {
    char *str = op->string_value;
    int i = 0;
    while (str[i]) {
      if (!((*__ctype_b_loc ())[(int) ((str[i]))] & (unsigned short int) _ISdigit)) {
        evaluated->type = OBJ_BOOL;
        evaluated->bool_value = 0;
        return;
      }
      i++;
    }
    evaluated->type = OBJ_BOOL;
    evaluated->bool_value = 1;
  } else {
    evaluated->type = OBJ_BOOL;
    evaluated->bool_value = 0;
  }
}
void definedFunctionParseInt(struct Object *op, struct Object *evaluated) {
  if (op->type != OBJ_STRING) {
    printf("Type error: parse-int operand must be string.\n");
    exit(1);
  }
  char *str = op->string_value;
  int i = 0;
  while (str[i]) {
    if (!((*__ctype_b_loc ())[(int) ((str[i]))] & (unsigned short int) _ISdigit)) {
      printf("Type error: parse-int operand must be string of digits.\n");
      exit(1);
    }
    i++;
  }
  evaluated->type = OBJ_INTEGER;
  evaluated->int_value = atoi(str);
}
void definedFunctionStringRef(struct Object *op1, struct Object *op2, struct Object *evaluated) {
  if (op1->type != OBJ_STRING) {
    printf("Type error: string-ref first operand must be string.\n");
    exit(1);
  }
  if (op2->type != OBJ_INTEGER) {
    printf("Type error: string-ref second operand must be integer.\n");
    exit(1);
  }
  int index = op2->int_value;
  if (index < 0 || index >= (int)strlen(op1->string_value)) {
    printf("Index out of range.\n");
    exit(1);
  }
  evaluated->type = OBJ_STRING;
  evaluated->string_value = malloc(sizeof(char) * 2);
  evaluated->string_value[0] = op1->string_value[index];
  evaluated->string_value[1] = '\0';
}
void evaluateListExpression(struct ExpressionNode *expression,
                            struct Object *evaluated, struct Env *env,
                            struct AllocatorContext *context) {
  struct ExpressionList *expressions = expression->data.list->expressions;
  if (expressions == ((void*)0)) {
    evaluated->type = OBJ_NIL;
    return;
  }
  evaluated->type = OBJ_LIST;
  struct ConsCell *car_conscell = ((void*)0);
  struct ConsCell *prev_conscell = ((void*)0);
  while (expressions != ((void*)0)) {
    struct ConsCell *new_conscell = malloc(sizeof(struct ConsCell));
    if (car_conscell == ((void*)0)) {
      car_conscell = new_conscell;
    }
    struct Object *evaluatedItem = allocate(context, env);
    new_conscell->car = evaluatedItem;
    evaluateExpression(expressions->expression, evaluatedItem, env, context);
    expressions = expressions->next;
    if (prev_conscell != ((void*)0)) {
      struct Object *new_cdr = allocate(context, env);
      new_cdr->type = OBJ_LIST;
      new_cdr->list_value = new_conscell;
      prev_conscell->cdr = new_cdr;
      prev_conscell->type = CONSCELL_TYPE_CELL;
    }
    prev_conscell = new_conscell;
    if (expressions == ((void*)0)) {
      struct Object *nilObj = allocate(context, env);
      nilObj->type = OBJ_NIL;
      prev_conscell->type = CONSCELL_TYPE_NIL;
      prev_conscell->cdr = nilObj;
    }
  }
  evaluated->list_value = car_conscell;
}
void setObjectToEnv(struct Env *env, char *symbolName, struct Object *obj) {
  int i = 0;
  while (env->bindings[i].symbol_name != ((void*)0)) {
    if (strcmp(env->bindings[i].symbol_name, symbolName) == 0) {
      env->bindings[i].value = obj;
      return;
    }
    i++;
  }
  struct Binding *binding = malloc(sizeof(struct Binding));
  binding->symbol_name = symbolName;
  binding->value = obj;
  i = 0;
  while (env->bindings[i].symbol_name != ((void*)0)) {
    i++;
  }
  env->bindings[i] = *binding;
}
void evaluateSymbolicExpression(struct ExpressionNode *expression,
                                struct Object *evaluated, struct Env *env,
                                struct AllocatorContext *context) {
  struct ExpressionList *expressions = expression->data.list->expressions;
  if (expressions != ((void*)0)) {
    struct ExpressionNode *expr = expressions->expression;
    if (expr != ((void*)0) && expr->type == EXP_SYMBOL) {
      if (strcmp(expr->data.symbol->symbol_name, "if") == 0) {
        struct ExpressionNode *cond = expressions->next->expression;
        if (cond == ((void*)0)) {
          printf("if must have condition.\n");
          exit(1);
        }
        struct ExpressionNode *then = expressions->next->next->expression;
        if (then == ((void*)0)) {
          printf("if must have then clause.\n");
          exit(1);
        }
        struct Object *condObj = allocate(context, env);
        evaluateExpression(cond, condObj, env, context);
        if (boolVal(condObj)) {
          evaluateExpression(then, evaluated, env, context);
        } else {
          if (expressions->next->next->next != ((void*)0)) {
            struct ExpressionNode *els =
                expressions->next->next->next->expression;
            evaluateExpression(els, evaluated, env, context);
          } else {
            evaluated->type = OBJ_NIL;
          }
        }
      } else if (strcmp(expr->data.symbol->symbol_name, "while") == 0) {
        struct ExpressionNode *cond = expressions->next->expression;
        if (cond == ((void*)0)) {
          printf("if must have condition.\n");
          exit(1);
        }
        struct ExpressionNode *then = expressions->next->next->expression;
        if (then == ((void*)0)) {
          printf("if must have then clause.\n");
          exit(1);
        }
        while (1) {
          struct Object *condObj = allocate(context, env);
          evaluateExpression(cond, condObj, env, context);
          if (boolVal(condObj)) {
            evaluateExpression(then, evaluated, env, context);
          } else {
            evaluated->type = OBJ_NIL;
            break;
          }
        }
      } else if (strcmp(expr->data.symbol->symbol_name, "=") == 0) {
        struct ExpressionNode symbolExpr = *expressions->next->expression;
        if (symbolExpr.type != EXP_SYMBOL) {
          printf("Variable name must be symbol.\n");
          exit(1);
        }
        char *symbol_name = symbolExpr.data.symbol->symbol_name;
        struct ExpressionNode *expr = expressions->next->next->expression;
        if (expr == ((void*)0)) {
          printf("assignment must have expression.\n");
          exit(1);
        }
        struct Object *evaluatedExpr = allocate(context, env);
        evaluateExpression(expr, evaluatedExpr, env, context);
        *evaluated = *evaluatedExpr;
        setObjectToEnv(env, symbol_name, evaluatedExpr);
      } else if ((strcmp(expr->data.symbol->symbol_name, "defun") == 0)) {
        struct ExpressionNode symbolExpr = *expressions->next->expression;
        if (symbolExpr.type != EXP_SYMBOL) {
          printf("Function name must be symbol.\n");
          exit(1);
        }
        char *symbol_name = symbolExpr.data.symbol->symbol_name;
        struct ExpressionNode *paramsExpr = expressions->next->next->expression;
        if (paramsExpr == ((void*)0)) {
          printf("Function must have parameter.\n");
          exit(1);
        }
        if (paramsExpr->type != EXP_SYMBOLIC_EXP) {
          printf("Function parameter must be list.\n");
          exit(1);
        }
        struct ExpressionList *params =
            paramsExpr->data.symbolic_exp->expressions;
        char **param_symbol_names = malloc(sizeof(char *) * 10);
        int i = 0;
        while (params != ((void*)0)) {
          if (params->expression->type != EXP_SYMBOL) {
            printf("Function parameter must be symbol.\n");
            exit(1);
          }
          param_symbol_names[i] = params->expression->data.symbol->symbol_name;
          i++;
          params = params->next;
        }
        struct ExpressionNode *bodyExpr =
            expressions->next->next->next->expression;
        if (bodyExpr == ((void*)0)) {
          printf("Function must have body.\n");
          exit(1);
        }
        struct Function *function = malloc(sizeof(struct Function));
        function->param_symbol_names = param_symbol_names;
        function->body = bodyExpr;
        evaluated->type = OBJ_FUNCTION;
        evaluated->function_value = function;
        setObjectToEnv(env, symbol_name, evaluated);
      } else {
        if (strcmp(expr->data.symbol->symbol_name, "+") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionAdd(operand1, operand2, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "-") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionSub(operand1, operand2, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "*") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionMul(operand1, operand2, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "/") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionDiv(operand1, operand2, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "%") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionMod(operand1, operand2, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "||") == 0) {
          struct ExpressionList *exprs = expressions->next;
          struct Object *operand = ((void*)0);
          while (exprs != ((void*)0)) {
            operand = allocate(context, env);
            evaluateExpression(exprs->expression, operand, env, context);
            if (boolVal(operand)) {
              evaluated->type = OBJ_BOOL;
              evaluated->bool_value = 1;
              return;
            }
            exprs = exprs->next;
          }
          evaluated->type = OBJ_BOOL;
          evaluated->bool_value = 0;
        } else if (strcmp(expr->data.symbol->symbol_name, "&&") == 0) {
          struct ExpressionList *exprs = expressions->next;
          struct Object *operand = ((void*)0);
          while (exprs != ((void*)0)) {
            operand = allocate(context, env);
            evaluateExpression(exprs->expression, operand, env, context);
            if (!boolVal(operand)) {
              evaluated->type = OBJ_BOOL;
              evaluated->bool_value = 0;
              return;
            }
            exprs = exprs->next;
          }
          evaluated->type = OBJ_BOOL;
          evaluated->bool_value = 1;
        } else if (strcmp(expr->data.symbol->symbol_name, "<") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionLt(operand1, operand2, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, ">") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionGt(operand1, operand2, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "eq") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionEq(operand1, operand2, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "not") == 0) {
          struct Object *operand = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand, env,
                             context);
          definedFunctionNot(operand, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "print") == 0) {
          struct Object *operand = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand, env,
                             context);
          char *str = stringifyObject(operand);
          printf("%s\n", str);
          free(str);
          evaluated->type = OBJ_NIL;
        } else if (strcmp(expr->data.symbol->symbol_name, "car") == 0) {
          struct Object *operand = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand, env,
                             context);
          definedFunctionCar(operand, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "cdr") == 0) {
          struct Object *operand = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand, env,
                             context);
          definedFunctionCdr(operand, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "cons") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionCons(operand1, operand2, evaluated, env, context);
        } else if (strcmp(expr->data.symbol->symbol_name, "readline") == 0) {
          char *line = ((void*)0);
          size_t len = 0;
          ssize_t read;
          if ((read = getline(&line, &len, stdin)) != -1) {
            evaluated->type = OBJ_STRING;
            line[read - 1] = '\0';
            evaluated->string_value = line;
          } else {
            evaluated->type = OBJ_NIL;
          }
        } else if (strcmp(expr->data.symbol->symbol_name, "split") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionSplit(operand1, operand2, evaluated, env, context);
        } else if (strcmp(expr->data.symbol->symbol_name, "list-ref") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                             context);
          definedFunctionListRef(operand1, operand2, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "progn") == 0) {
          struct ExpressionList *exprs = expressions->next;
          struct Object *operand = ((void*)0);
          while (exprs != ((void*)0)) {
            operand = allocate(context, env);
            evaluateExpression(exprs->expression, operand, env, context);
            exprs = exprs->next;
          }
          if (operand != ((void*)0)) {
            *evaluated = *operand;
          } else {
            evaluated->type = OBJ_NIL;
          }
        } else if (strcmp(expr->data.symbol->symbol_name,
                          "remove-whitespaces") == 0) {
          struct Object *operand = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand, env,
                             context);
          definedFunctionRemoveWhitespaces(operand, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "pop") == 0) {
          struct Object *operand = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand, env,
                             context);
          definedFunctionPop(operand, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "push") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->expression, operand2, env,
                             context);
          definedFunctionPush(operand2, operand1, evaluated, env, context);
        } else if (strcmp(expr->data.symbol->symbol_name, "length") == 0) {
          struct Object *operand = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand, env,
                             context);
          definedFunctionLength(operand, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "is-int-string") ==
                   0) {
          struct Object *operand = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand, env,
                             context);
          definedFunctionIsIntString(operand, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "parse-int") == 0) {
          struct Object *operand = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand, env,
                             context);
          definedFunctionParseInt(operand, evaluated);
        } else if (strcmp(expr->data.symbol->symbol_name, "string-ref") == 0) {
          struct Object *operand1 = allocate(context, env);
          struct Object *operand2 = allocate(context, env);
          evaluateExpression(expressions->next->expression, operand1, env,
                             context);
          evaluateExpression(expressions->next->next->expression, operand2, env,
                              context);
          definedFunctionStringRef(operand1, operand2, evaluated);
        } else {
          int i = 0;
          struct Env *current_env = env;
          struct Env *looked_up_env = current_env;
          while (looked_up_env->bindings[i].symbol_name != ((void*)0)) {
            if (strcmp(looked_up_env->bindings[i].symbol_name,
                       expr->data.symbol->symbol_name) == 0) {
              struct Function *function =
                  looked_up_env->bindings[i].value->function_value;
              struct Env *new_env = malloc(sizeof(struct Env));
              new_env->parent = current_env;
              int j = 0;
              struct ExpressionList *param_expr = expressions->next;
              while (function->param_symbol_names[j] != ((void*)0)) {
                struct Object *param = allocate(context, env);
                evaluateExpression(param_expr->expression, param, current_env,
                                   context);
                param_expr = param_expr->next;
                setObjectToEnv(new_env, function->param_symbol_names[j], param);
                j++;
              }
              evaluateExpression(function->body, evaluated, new_env, context);
              return;
            }
            i++;
            if (env->bindings[i].symbol_name == ((void*)0)) {
              looked_up_env = looked_up_env->parent;
              i = 0;
            }
          }
          printf("Undefined function: %s\n", expr->data.symbol->symbol_name);
          exit(1);
        }
      }
    } else {
      printf("S-exp must be started with symbol.\n");
      exit(1);
    }
  } else {
    evaluated->type = OBJ_NIL;
  }
}
void evaluateLiteralExpression(struct ExpressionNode *expression,
                               struct Object *evaluated) {
  if (expression->data.literal->type == LIT_INTERGER) {
    evaluated->type = OBJ_INTEGER;
    evaluated->int_value = expression->data.literal->int_value;
  } else if (expression->data.literal->type == LIT_STRING) {
    evaluated->type = OBJ_STRING;
    evaluated->string_value = expression->data.literal->string_value;
  } else if (expression->data.literal->type == LIT_BOOLEAN) {
    evaluated->type = OBJ_BOOL;
    evaluated->bool_value = expression->data.literal->boolean_value;
  }
}
void evaluateSymbolExpression(struct ExpressionNode *expression,
                              struct Object *evaluated, struct Env *env,
                              struct AllocatorContext *context) {
  if (strcmp(expression->data.symbol->symbol_name, "nil") == 0) {
    evaluated->type = OBJ_NIL;
  } else {
    int i = 0;
    while (env->bindings[i].symbol_name != ((void*)0)) {
      if (strcmp(env->bindings[i].symbol_name,
                 expression->data.symbol->symbol_name) == 0) {
        *evaluated = *env->bindings[i].value;
        env->bindings[i].value = evaluated;
        return;
      }
      i++;
    }
    if (env->parent != ((void*)0)) {
      evaluateSymbolExpression(expression, evaluated, env->parent, context);
    } else {
      printf("Undefined symbol: %s\n", expression->data.symbol->symbol_name);
      exit(1);
    }
  }
}
void evaluateExpression(struct ExpressionNode *expression,
                        struct Object *evaluated, struct Env *env,
                        struct AllocatorContext *context) {
  pushObjectStack(context->stack, evaluated);
  if (expression->type == EXP_LIST) {
    evaluateListExpression(expression, evaluated, env, context);
  } else if (expression->type == EXP_SYMBOLIC_EXP) {
    evaluateSymbolicExpression(expression, evaluated, env, context);
  } else if (expression->type == EXP_LITERAL) {
    evaluateLiteralExpression(expression, evaluated);
  } else if (expression->type == EXP_SYMBOL) {
    evaluateSymbolExpression(expression, evaluated, env, context);
  }
  popObjectStack(context->stack);
}
void evaluateExpressionWithContext(struct ExpressionNode *expression,
                                   struct Object *evaluated, struct Env *env) {
  struct AllocatorContext *context = initAllocator();
  evaluateExpression(expression, evaluated, env, context);
}
void initEnv(struct Env *env) {
  env->parent = ((void*)0);
  env->bindings[0].symbol_name = ((void*)0);
  env->bindings[0].value = ((void*)0);
}
void evaluateProgram(struct ProgramNode *program) {
  struct ExpressionList *expressions = program->expressions;
  struct Env *env = malloc(sizeof(struct Env));
  initEnv(env);
  struct AllocatorContext *context = initAllocator();
  while (expressions != ((void*)0)) {
    struct Object *evaluated = allocate(context, env);
    evaluateExpression(expressions->expression, evaluated, env, context);
    expressions = expressions->next;
  }
}
void evaluate(struct ParseResult *result) { evaluateProgram(result->program); }

