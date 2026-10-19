

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
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
typedef struct OutputInterface_struct OutputInterface;
struct OutputInterface_struct {
 _Bool (*write)(OutputInterface* enc, const void* data, size_t data_size);
 void* private_data;
};
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
void file_output_new(OutputInterface* output, FILE* file);

static _Bool file_write(OutputInterface* output, const void* data, size_t data_size)
{
 FILE* file = (FILE*) output->private_data;
 return fwrite(data, data_size, 1, file) == 1;
}
void file_output_new(OutputInterface* output, FILE* file)
{
 output->write = file_write;
 output->private_data = file;
}


typedef struct {
 uint16_t choice_1;
 uint16_t choice_2;
 uint16_t low_coder[1 << 4][1 << 3];
 uint16_t mid_coder[1 << 4][1 << 3];
 uint16_t high_coder[1 << 8];
} LengthProbabilityModel;
typedef struct {
 uint16_t pos_slot_coder[4][1 << 6];
 uint16_t align_coder[1 << 4];
 uint16_t pos_coder[1 + (1 << (14 >> 1)) - 14];
} DistanceProbabilityModel;
typedef struct {
 uint16_t is_match[12 << 4];
 uint16_t is_rep[12];
 uint16_t is_rep_g0[12];
 uint16_t is_rep_g1[12];
 uint16_t is_rep_g2[12];
 uint16_t is_rep0_long[12 << 4];
} ContextStateProbabilityModel;
typedef struct {
 uint16_t lit[0x300];
 LengthProbabilityModel len;
 LengthProbabilityModel rep_len;
 DistanceProbabilityModel dist;
 ContextStateProbabilityModel ctx_state;
} LZMAProbabilityModel;
typedef struct {
 uint8_t lc;
 uint8_t lp;
 uint8_t pb;
} LZMAProperties;
typedef struct {
 const uint8_t* data;
 size_t data_size;
 LZMAProperties properties;
 uint8_t ctx_state;
 uint32_t dists[4];
 LZMAProbabilityModel probs;
 size_t position;
} LZMAState;
void lzma_state_init(LZMAState* lzma_state, const uint8_t* data, size_t data_size, LZMAProperties properties);
void lzma_state_update_ctx_state(LZMAState* lzma_state, unsigned packet_type);
void lzma_state_push_distance(LZMAState* lzma_state, uint32_t dist);
void lzma_state_promote_distance_at(LZMAState* lzma_state, unsigned dist_index);
void lzma_encode_header(const LZMAState* lzma_state, OutputInterface* output);
typedef __gid_t gid_t;
typedef __uid_t uid_t;
typedef __useconds_t useconds_t;
typedef __pid_t pid_t;
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

static uint8_t lzma_encode_header_properties(const LZMAState* lzma_state)
{
 const LZMAProperties* p = &lzma_state->properties;
 return ((p->pb * 5 + p->lp) * 9 + p->lc);
}
void lzma_encode_header(const LZMAState* lzma_state, OutputInterface* output)
{
 uint8_t props = lzma_encode_header_properties(lzma_state);
 (*output->write)(output, &props, sizeof(uint8_t));
 uint32_t dictsize = __uint32_identity (0x400000);
 (*output->write)(output, &dictsize, sizeof(uint32_t));
 uint64_t outsize = __uint32_identity (lzma_state->data_size);
 (*output->write)(output, &outsize, sizeof(uint64_t));
}
typedef struct {
 uint8_t type;
 uint32_t dist;
 uint16_t len;
} LZMAPacket;
_Bool lzma_packet_cmp(const LZMAPacket* a, const LZMAPacket* b);
LZMAPacket literal_packet();
LZMAPacket match_packet(unsigned dist, unsigned len);
LZMAPacket short_rep_packet();
LZMAPacket long_rep_packet(unsigned dist_index, unsigned len);

_Bool lzma_packet_cmp(const LZMAPacket* a, const LZMAPacket* b)
{
 return a->type == b->type && a->len == b->len && a->dist == b->dist;
}
LZMAPacket literal_packet()
{
 LZMAPacket packet = {
  .type = 1,
  .dist = 0,
  .len = 1
 };
 return packet;
}
LZMAPacket match_packet(unsigned dist, unsigned len)
{
 LZMAPacket packet = {
  .type = 2,
  .dist = dist,
  .len = len
 };
 return packet;
}
LZMAPacket short_rep_packet()
{
 LZMAPacket packet = {
  .type = 3,
  .dist = 0,
  .len = 1
 };
 return packet;
}
LZMAPacket long_rep_packet(unsigned dist_index, unsigned len)
{
 LZMAPacket packet = {
  .type = 4,
  .dist = dist_index,
  .len = len
 };
 return packet;
}
typedef struct EncoderInterface_struct EncoderInterface;
struct EncoderInterface_struct {
 void (*encode_bit)(EncoderInterface* enc, _Bool bit, uint16_t prob);
 void (*encode_direct_bits)(EncoderInterface* enc, unsigned bits, unsigned num_bits);
 void* private_data;
};
void lzma_encode_packet(LZMAState* lzma_state, EncoderInterface* enc, LZMAPacket packet);
void encode_bit(_Bool bit, uint16_t* prob, EncoderInterface* enc);
void encode_direct_bits(unsigned bits, size_t num_bits, EncoderInterface* enc);
void encode_bit_tree(unsigned bits, uint16_t* probs, size_t num_bits, EncoderInterface* enc);
void encode_bit_tree_reverse(unsigned bits, uint16_t* probs, size_t num_bits, EncoderInterface* enc);
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));

typedef struct {
 _Bool match;
 _Bool rep;
 _Bool b3;
 _Bool b4;
 _Bool b5;
} LZMAPacketHeader;
static void lzma_encode_packet_header(LZMAState* lzma_state, EncoderInterface* enc, LZMAPacketHeader* head)
{
 ContextStateProbabilityModel* ctx_probs = &lzma_state->probs.ctx_state;
 unsigned ctx_pos_bits = 0;
 unsigned ctx_state = lzma_state->ctx_state;
 unsigned ctx_pos_state = (ctx_state << 4) + ctx_pos_bits;
 encode_bit(head->match, &ctx_probs->is_match[ctx_pos_state], enc);
 if (!head->match) {
  return;
 }
 encode_bit(head->rep, &ctx_probs->is_rep[ctx_state], enc);
 if (!head->rep) {
  return;
 }
 encode_bit(head->b3, &ctx_probs->is_rep_g0[ctx_state], enc);
 if (head->b3) {
  encode_bit(head->b4, &ctx_probs->is_rep_g1[ctx_state], enc);
  if (head->b4) {
   encode_bit(head->b5, &ctx_probs->is_rep_g2[ctx_state], enc);
  }
 } else {
  encode_bit(head->b4, &ctx_probs->is_rep0_long[ctx_pos_state], enc);
 }
}
static void lzma_encode_length(LengthProbabilityModel* probs, EncoderInterface* enc, unsigned len)
{
 unsigned ctx_pos_bits = 0;
 ((void) sizeof ((len >= 2) ? 1 : 0), __extension__ ({ if (len >= 2) ; else __assert_fail ("len >= 2", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/lzma_packet_encoder.c", 45, __extension__ __PRETTY_FUNCTION__); }));
 len -= 2;
 if (len < (1 << 3)) {
  encode_bit(0, &probs->choice_1, enc);
  encode_bit_tree(len, probs->low_coder[ctx_pos_bits], 3, enc);
 } else {
  len -= (1 << 3);
  encode_bit(1, &probs->choice_1, enc);
  if (len < (1 << 3)) {
   encode_bit(0, &probs->choice_2, enc);
   encode_bit_tree(len, probs->mid_coder[ctx_pos_bits], 3, enc);
  } else {
   len -= (1 << 3);
   encode_bit(1, &probs->choice_2, enc);
   encode_bit_tree(len, probs->high_coder, 8, enc);
  }
 }
}
static inline unsigned get_msb32(register unsigned val)
{
  return 32 - __builtin_clz(val);
}
static void lzma_encode_distance(LZMAState* lzma_state, EncoderInterface* enc, unsigned dist, unsigned len)
{
 unsigned len_ctx = len - 2;
 if (len_ctx >= 4) {
  len_ctx = 4 - 1;
 }
 DistanceProbabilityModel* probs = &lzma_state->probs.dist;
 if (dist < 4) {
  encode_bit_tree(dist, probs->pos_slot_coder[len_ctx], 6, enc);
  return;
 }
 unsigned num_low_bits = get_msb32(dist) - 2;
 unsigned low_bits = dist & ((1 << num_low_bits) - 1);
 unsigned high_bits = dist >> num_low_bits;
 unsigned pos_slot = num_low_bits*2 + high_bits;
 encode_bit_tree(pos_slot, probs->pos_slot_coder[len_ctx], 6, enc);
 if (pos_slot < 14) {
  unsigned pos_coder_ctx = (high_bits << num_low_bits) - pos_slot;
  encode_bit_tree_reverse(low_bits, probs->pos_coder + pos_coder_ctx, num_low_bits, enc);
  return;
 }
 unsigned num_direct_bits = num_low_bits - 4;
 num_low_bits = 4;
 unsigned direct_bits = low_bits >> 4;
 low_bits = low_bits & ((1 << num_low_bits) - 1);
 encode_direct_bits(direct_bits, num_direct_bits, enc);
 encode_bit_tree_reverse(low_bits, probs->align_coder, num_low_bits, enc);
}
static void lzma_encode_literal(LZMAState* lzma_state, EncoderInterface* enc)
{
 LZMAPacketHeader head = { .match = 0 };
 lzma_encode_packet_header(lzma_state, enc, &head);
 LZMAProbabilityModel* probs = &lzma_state->probs;
 unsigned symbol = 1;
 unsigned lit_ctx = 0;
 uint16_t *lit_probs = &probs->lit[0x300 * lit_ctx];
 uint8_t lit = lzma_state->data[lzma_state->position];
 _Bool matched = lzma_state->ctx_state >= 7;
 uint8_t match_byte = 0;
 if (matched) {
  match_byte = lzma_state->data[lzma_state->position - lzma_state->dists[0] - 1];
 }
 for (int i = 7; i >= 0; i--) {
  _Bool bit = (lit >> i) & 1;
  unsigned context = symbol;
  if (matched) {
   int match_bit = (match_byte >> i) & 1;
   context += ((1 + match_bit) << 8);
   matched = (match_bit == bit);
  }
  encode_bit(bit, &lit_probs[context], enc);
  symbol = (symbol << 1) | bit;
 }
}
static void lzma_encode_match(LZMAState* lzma_state, EncoderInterface* enc, unsigned dist, unsigned len)
{
 LZMAPacketHeader head = { .match = 1, .rep = 0 };
 lzma_encode_packet_header(lzma_state, enc, &head);
 lzma_state_push_distance(lzma_state, dist);
 lzma_encode_length(&lzma_state->probs.len, enc, len);
 lzma_encode_distance(lzma_state, enc, dist, len);
}
static void lzma_encode_short_rep(LZMAState* lzma_state, EncoderInterface* enc)
{
 LZMAPacketHeader head = { .match = 1, .rep = 1, .b3 = 0, .b4 = 0 };
 lzma_encode_packet_header(lzma_state, enc, &head);
}
static void lzma_encode_long_rep(LZMAState* lzma_state, EncoderInterface* enc, unsigned dist_index, unsigned len)
{
 LZMAPacketHeader head = {
  .match = 1,
  .rep = 1,
  .b3 = (dist_index != 0),
  .b4 = (dist_index != 1),
  .b5 = (dist_index != 2)
 };
 lzma_encode_packet_header(lzma_state, enc, &head);
 lzma_state_promote_distance_at(lzma_state, dist_index);
 lzma_encode_length(&lzma_state->probs.rep_len, enc, len);
}
void lzma_encode_packet(LZMAState* lzma_state, EncoderInterface* enc, LZMAPacket packet)
{
 unsigned type = packet.type;
 unsigned len = packet.len;
 unsigned dist = packet.dist;
 switch (type) {
  case 1:
   lzma_encode_literal(lzma_state, enc);
   break;
  case 2:
   lzma_encode_match(lzma_state, enc, dist, len);
   break;
  case 3:
   lzma_encode_short_rep(lzma_state, enc);
   break;
  case 4:
   lzma_encode_long_rep(lzma_state, enc, dist, len);
   break;
  case 0:
  default:
   ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("false", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/lzma_packet_encoder.c", 189, __extension__ __PRETTY_FUNCTION__); }));
   break;
 }
 lzma_state_update_ctx_state(lzma_state, type);
 lzma_state->position += len;
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

static void lzma_state_init_probs(LZMAProbabilityModel* probs)
{
 int num_probs = sizeof(LZMAProbabilityModel)/sizeof(uint16_t);
 uint16_t* prob_array = (uint16_t*)probs;
 for (int i = 0; i < num_probs; i++) {
  prob_array[i] = ((1 << 11) / 2);
 }
}
void lzma_state_init(LZMAState* lzma_state, const uint8_t* data, size_t data_size, LZMAProperties properties)
{
 lzma_state->data = data;
 lzma_state->data_size = data_size;
 lzma_state->properties = properties;
 lzma_state->ctx_state = 0;
 memset(lzma_state->dists, 0, sizeof(lzma_state->dists));
 lzma_state_init_probs(&lzma_state->probs);
 lzma_state->position = 0;
}
void lzma_state_update_ctx_state(LZMAState* lzma_state, unsigned packet_type)
{
 uint8_t ctx_state = lzma_state->ctx_state;
 switch (packet_type) {
  case 1:
   if (ctx_state < 4) {
    ctx_state = 0;
   } else if (ctx_state < 10) {
    ctx_state -= 3;
   } else {
    ctx_state -= 6;
   }
   break;
  case 2:
   ctx_state = ctx_state < 7 ? 7 : 10;
   break;
  case 3:
   ctx_state = ctx_state < 7 ? 9 : 11;
   break;
  case 4:
   ctx_state = ctx_state < 7 ? 8 : 11;
   break;
  case 0:
  default:
   ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("false", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/lzma_state.c", 53, __extension__ __PRETTY_FUNCTION__); }));
   break;
 }
 lzma_state->ctx_state = ctx_state;
}
void lzma_state_push_distance(LZMAState* lzma_state, uint32_t dist)
{
 lzma_state->dists[3] = lzma_state->dists[2];
 lzma_state->dists[2] = lzma_state->dists[1];
 lzma_state->dists[1] = lzma_state->dists[0];
 lzma_state->dists[0] = dist;
}
void lzma_state_promote_distance_at(LZMAState* lzma_state, unsigned dist_index)
{
 ((void) sizeof ((dist_index < 4) ? 1 : 0), __extension__ ({ if (dist_index < 4) ; else __assert_fail ("dist_index < 4", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/lzma_state.c", 69, __extension__ __PRETTY_FUNCTION__); }));
 uint32_t dist = lzma_state->dists[dist_index];
 if (dist_index > 2) {
  lzma_state->dists[3] = lzma_state->dists[2];
 }
 if (dist_index > 1) {
  lzma_state->dists[2] = lzma_state->dists[1];
 }
 if (dist_index > 0) {
  lzma_state->dists[1] = lzma_state->dists[0];
 }
 lzma_state->dists[0] = dist;
}
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
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
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
extern void *mmap (void *__addr, size_t __len, int __prot,
     int __flags, int __fd, __off_t __offset) __attribute__ ((__nothrow__ ));
extern int munmap (void *__addr, size_t __len) __attribute__ ((__nothrow__ ));
extern int mprotect (void *__addr, size_t __len, int __prot) __attribute__ ((__nothrow__ ));
extern int msync (void *__addr, size_t __len, int __flags);
extern int madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ ));
extern int posix_madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ ));
extern int mlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ ));
extern int munlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ ));
extern int mlockall (int __flags) __attribute__ ((__nothrow__ ));
extern int munlockall (void) __attribute__ ((__nothrow__ ));
extern int mincore (void *__start, size_t __len, unsigned char *__vec)
     __attribute__ ((__nothrow__ ));
extern int shm_open (const char *__name, int __oflag, mode_t __mode);
extern int shm_unlink (const char *__name);
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

struct flock
  {
    short int l_type;
    short int l_whence;
    __off_t l_start;
    __off_t l_len;
    __pid_t l_pid;
  };
extern int fcntl (int __fd, int __cmd, ...);
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ ));
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);

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

int map_file(const char* filename, const uint8_t** data, size_t* data_size);
int map_anonymous(size_t data_size, uint8_t** data);
int unmap(const uint8_t* data, size_t data_size);

void range_encoder_new(EncoderInterface* enc, OutputInterface* output);
void range_encoder_free(EncoderInterface* enc);
typedef struct PacketEnumerator_struct PacketEnumerator;
typedef void (*PacketEnumeratorCallback)(void* user_data, const LZMAState* state, LZMAPacket packet);
size_t packet_enumerator_memory_usage(size_t data_size);
PacketEnumerator* packet_enumerator_new(const uint8_t* data, size_t data_size);
void packet_enumerator_free(PacketEnumerator* enumerator);
void packet_enumerator_for_each(const PacketEnumerator* enumerator, const LZMAState* state, PacketEnumeratorCallback callback, void* user_data);
typedef struct PacketSlab_struct PacketSlab;
size_t packet_slab_memory_usage(size_t data_size);
PacketSlab* packet_slab_new(size_t data_size);
void packet_slab_free(PacketSlab* slab);
size_t packet_slab_size(const PacketSlab* slab);
size_t packet_slab_count(const PacketSlab* slab);
LZMAPacket* packet_slab_packets(PacketSlab* slab);
typedef struct {
 size_t position;
 LZMAPacket old_packet;
} PacketSlabUndo;
typedef struct PacketSlabUndoHeap_struct PacketSlabUndoHeap;
typedef struct {
 size_t total_count;
 size_t count;
 PacketSlabUndo stack[16];
 PacketSlabUndoHeap* last;
} PacketSlabUndoStack;
void packet_slab_undo_stack_new(PacketSlabUndoStack* undo_stack);
void packet_slab_undo_stack_free(PacketSlabUndoStack* undo_stack);
void packet_slab_undo_stack_insert(PacketSlabUndoStack* undo_stack, PacketSlabUndo undo);
void packet_slab_undo_stack_apply(PacketSlabUndoStack* undo_stack, PacketSlab* slab);
size_t packet_slab_undo_stack_count(const PacketSlabUndoStack* undo_stack);
typedef struct TopKPacketFinder_struct TopKPacketFinder;
TopKPacketFinder* top_k_packet_finder_new(size_t size, const PacketEnumerator* packet_enumerator);
void top_k_packet_finder_free(TopKPacketFinder* finder);
size_t top_k_packet_finder_count(const TopKPacketFinder* finder);
void top_k_packet_finder_find(TopKPacketFinder* finder, const LZMAState* lzma_state, LZMAPacket* next_packets);
_Bool top_k_packet_finder_pop(TopKPacketFinder* finder, LZMAPacket* packet);
typedef struct {
 LZMAState init_state;
 PacketSlab* slab;
 uint64_t perplexity;
 PacketSlabUndoStack undo_stack;
} PacketSlabNeighbour;
void packet_slab_neighbour_new(PacketSlabNeighbour* neighbour, PacketSlab* slab, LZMAState init_state);
void packet_slab_neighbour_free(PacketSlabNeighbour* neighbour);
_Bool packet_slab_neighbour_generate(PacketSlabNeighbour* neighbour, TopKPacketFinder* packet_finder);
void packet_slab_neighbour_undo(PacketSlabNeighbour* neighbour);
size_t packet_slab_neighbour_undo_count(const PacketSlabNeighbour* neighbour);
int main(int argc, char** argv) {
 if (argc != 2) {
  fprintf(stderr, "usage: %s filename\n", argv[0]);
  return -1;
 }
 const uint8_t* file_data;
 size_t file_size;
 if (map_file(argv[1], &file_data, &file_size) < 0) {
  return -1;
 }
 if (file_size == 0) {
  return 0;
 }
 LZMAState init_state;
 LZMAProperties properties = { .lc = 0, .lp = 0, .pb = 0 };
 lzma_state_init(&init_state, file_data, file_size, properties);
 PacketEnumerator* packet_enumerator = packet_enumerator_new(file_data, file_size);
 TopKPacketFinder* packet_finder = top_k_packet_finder_new(20, packet_enumerator);
 PacketSlab* packet_slab_best = packet_slab_new(file_size);
 LZMAPacket* packets_best = packet_slab_packets(packet_slab_best);
 uint64_t best_perplexity = 0;
 const int num_epochs = 200;
 const int num_iters = file_size;
 srand(1673551);
 for (unsigned step = 0; step < 3; step++) {
 for (unsigned epoch = 0; epoch < num_epochs; epoch++) {
  PacketSlab* packet_slab = packet_slab_new(file_size);
  LZMAPacket* packets = packet_slab_packets(packet_slab);
  PacketSlabNeighbour neighbour;
  uint64_t current_perplexity = 0;
  if (step != 0) {
   memcpy(packets, packets_best, sizeof(LZMAPacket) * file_size);
  }
 for (int i = 0; i < num_iters; i++) {
  packet_slab_neighbour_new(&neighbour, packet_slab, init_state);
  _Bool success = packet_slab_neighbour_generate(&neighbour, packet_finder);
  if (!success) {
   i--;
   continue;
  }
  _Bool transition = rand() % (i*i+1+step*num_iters/2) < sqrt(num_iters);
  if (current_perplexity == 0 || neighbour.perplexity < current_perplexity || transition) {
   current_perplexity = neighbour.perplexity;
   if (best_perplexity == 0 || current_perplexity < best_perplexity) {
    best_perplexity = current_perplexity;
    memcpy(packets_best, packets, sizeof(LZMAPacket) * file_size);
   }
  } else {
   packet_slab_neighbour_undo(&neighbour);
  }
  if (i % 100 == 0) {
   fprintf(stderr, "current file size: %f\tstep: %d\tepoch: %04d - %.1f%%\n", 18+current_perplexity/16384.f, step+1, epoch, ((float)i)/num_iters*100);
  }
  packet_slab_neighbour_free(&neighbour);
 }
  packet_slab_free(packet_slab);
 }
 }
 top_k_packet_finder_free(packet_finder);
 packet_enumerator_free(packet_enumerator);
 OutputInterface output;
 file_output_new(&output, stdout);
 LZMAState state = init_state;
 lzma_encode_header(&state, &output);
 EncoderInterface enc;
 range_encoder_new(&enc, &output);
 while (state.position < state.data_size) {
  lzma_encode_packet(&state, &enc, packets_best[state.position]);
 }
 range_encoder_free(&enc);
 packet_slab_free(packet_slab_best);
 if (unmap(file_data, file_size) < 0) {
  return -1;
 }
 return 0;
}
typedef struct MaxHeap_struct MaxHeap;
typedef int (*MaxHeapComparator)(void* comparator_data, unsigned a, unsigned b);
MaxHeap* max_heap_new(size_t size, MaxHeapComparator comparator, void* comparator_data);
void max_heap_free(MaxHeap* heap);
size_t max_heap_count(const MaxHeap* heap);
void max_heap_clear(MaxHeap* heap);
_Bool max_heap_insert(MaxHeap* heap, unsigned value);
_Bool max_heap_maximum(MaxHeap* heap, unsigned* value);
_Bool max_heap_remove_maximum(MaxHeap* heap);
_Bool max_heap_update_maximum(MaxHeap* heap);
struct MaxHeap_struct {
 unsigned* store;
 size_t store_size;
 size_t count;
 MaxHeapComparator comparator;
 void* comparator_data;
};
MaxHeap* max_heap_new(size_t size, MaxHeapComparator comparator, void* comparator_data)
{
 MaxHeap* heap = malloc(sizeof(MaxHeap));
 if (heap == ((void*)0)) {
  fprintf(stderr, "Could not allocate memory for MaxHeap.\n");
  return ((void*)0);
 }
 heap->store = malloc(sizeof(unsigned) * size);
 if (heap->store == ((void*)0)) {
  fprintf(stderr, "Could not allocate memory for MaxHeap store.\n");
  free(heap);
  return ((void*)0);
 }
 heap->store_size = size;
 heap->count = 0;
 heap->comparator = comparator;
 heap->comparator_data = comparator_data;
 return heap;
}
void max_heap_free(MaxHeap* heap)
{
 if (heap == ((void*)0)) {
  return;
 }
 free(heap->store);
 free(heap);
}
size_t max_heap_count(const MaxHeap* heap)
{
 return heap->count;
}
void max_heap_clear(MaxHeap* heap)
{
 heap->count = 0;
}
static void swap(unsigned *a, unsigned *b)
{
 unsigned temp = *a;
 *a = *b;
 *b = temp;
}
static _Bool max_heap_parent(MaxHeap* heap, size_t index, size_t* parent)
{
 (void) heap;
 *parent = (index-1)/2;
 return index > 0;
}
static _Bool max_heap_left_child(MaxHeap* heap, size_t index, size_t* left_child)
{
 *left_child = index*2 + 1;
 return *left_child < heap->count;
}
static _Bool max_heap_right_child(MaxHeap* heap, size_t index, size_t* right_child)
{
 *right_child = index*2 + 2;
 return *right_child < heap->count;
}
static void max_heap_bubble_down(MaxHeap* heap, size_t parent)
{
 MaxHeapComparator cmp = heap->comparator;
 void* cmp_dat = heap->comparator_data;
 size_t left_child;
 size_t right_child;
 while (max_heap_left_child(heap, parent, &left_child)) {
  size_t largest_child = left_child;
  if (max_heap_right_child(heap, parent, &right_child)) {
   if ((*cmp)(cmp_dat, heap->store[right_child], heap->store[left_child]) > 0) {
    largest_child = right_child;
   }
  }
  if ((*cmp)(cmp_dat, heap->store[largest_child], heap->store[parent]) > 0) {
   swap(&heap->store[largest_child], &heap->store[parent]);
   parent = largest_child;
  } else {
   break;
  }
 }
}
static void max_heap_bubble_up(MaxHeap* heap, size_t node)
{
 MaxHeapComparator cmp = heap->comparator;
 void* cmp_dat = heap->comparator_data;
 size_t parent;
 while (max_heap_parent(heap, node, &parent)) {
  if ((*cmp)(cmp_dat, heap->store[node], heap->store[parent]) > 0) {
   swap(&heap->store[node], &heap->store[parent]);
   node = parent;
  } else {
   break;
  }
 }
}
_Bool max_heap_insert(MaxHeap* heap, unsigned value)
{
 if (heap->count == heap->store_size) {
  return 0;
 }
 size_t new_node = heap->count++;
 heap->store[new_node] = value;
 max_heap_bubble_up(heap, new_node);
 return 1;
}
_Bool max_heap_maximum(MaxHeap* heap, unsigned* value)
{
 if (heap->count == 0) {
  return 0;
 }
 *value = heap->store[0];
 return 1;
}
_Bool max_heap_remove_maximum(MaxHeap* heap)
{
 if (heap->count == 0) {
  return 0;
 }
 heap->store[0] = heap->store[--heap->count];
 max_heap_bubble_down(heap, 0);
 return 1;
}
_Bool max_heap_update_maximum(MaxHeap* heap)
{
 if (heap->count == 0) {
  return 0;
 }
 max_heap_bubble_down(heap, 0);
 return 1;
}
int map_file(const char* filename, const uint8_t** data, size_t* data_size)
{
 int fd = open(filename, 00);
 if (fd < 0) {
  fprintf(stderr, "could not open %s\n", filename);
  return -1;
 }
 struct stat buf;
 if (fstat(fd, &buf) < 0) {
  fprintf(stderr, "could not stat %s\n", filename);
  return -1;
 }
 void* map = mmap(0, buf.st_size, 0x1, 0x02, fd, 0);
 if (map == ((void *) -1)) {
  fprintf(stderr, "could not mmap %s\n", filename);
  return -1;
 }
 if (close(fd) < 0) {
  fprintf(stderr, "could not close fd %d\n", fd);
  return -1;
 }
 *data_size = buf.st_size;
 *data = (uint8_t*) map;
 return 0;
}
int map_anonymous(size_t data_size, uint8_t** data)
{
 void* map = mmap(0, data_size, 0x1 | 0x2, 0x01 | 0x20, 0, 0);
 if (map == ((void *) -1)) {
  fprintf(stderr, "could map anonymous memory of size %ld\n", data_size);
  return -1;
 }
 *data = (uint8_t*) map;
 return 0;
}
int unmap(const uint8_t* data, size_t data_size)
{
 if (munmap((void*) data, data_size) < 0) {
  fprintf(stderr, "could not munmap data\n");
  return -1;
 }
 return 0;
}


typedef struct SubstringEnumerator_struct SubstringEnumerator;
typedef void (*SubstringEnumeratorCallback)(void* user_data, size_t offset, size_t length);
size_t substring_enumerator_memory_usage(size_t data_size);
SubstringEnumerator* substring_enumerator_new(const uint8_t* data, size_t data_size, size_t min_length, size_t max_length);
void substring_enumerator_free(SubstringEnumerator* enumerator);
void substring_enumerator_for_each(const SubstringEnumerator* enumerator, size_t pos,SubstringEnumeratorCallback callback, void* user_data);

struct PacketEnumerator_struct {
 const uint8_t* data;
 size_t data_size;
 SubstringEnumerator* substring_enumerator;
};
size_t packet_enumerator_memory_usage(size_t data_size) {
 return sizeof(PacketEnumerator) + substring_enumerator_memory_usage(data_size);
}
PacketEnumerator* packet_enumerator_new(const uint8_t* data, size_t data_size)
{
 PacketEnumerator* enumerator = malloc(sizeof(PacketEnumerator));
 enumerator->data = data;
 enumerator->data_size = data_size;
 enumerator->substring_enumerator = substring_enumerator_new(data, data_size, 2, 273);
 return enumerator;
}
void packet_enumerator_free(PacketEnumerator* enumerator)
{
 substring_enumerator_free(enumerator->substring_enumerator);
 free(enumerator);
}
typedef struct {
 const LZMAState* lzma_state;
 PacketEnumeratorCallback callback;
 void* user_data;
} PacketEnumeratorSubstringCallbackData;
static void packet_enumerator_substring_callback(void* user_data, size_t offset, size_t length)
{
 PacketEnumeratorSubstringCallbackData* data = (PacketEnumeratorSubstringCallbackData*)user_data;
 const LZMAState* lzma_state = data->lzma_state;
 PacketEnumeratorCallback callback = data->callback;
 void* callback_user_data = data->user_data;
 unsigned dist = lzma_state->position - offset - 1;
 (*callback)(callback_user_data, lzma_state, match_packet(dist, length));
 for (int i = 0; i < 4; i++) {
  if (dist == lzma_state->dists[i]) {
   (*callback)(callback_user_data, lzma_state, long_rep_packet(i, length));
  }
 }
}
void packet_enumerator_for_each(const PacketEnumerator* enumerator, const LZMAState* lzma_state, PacketEnumeratorCallback callback, void* user_data) {
 ((void) sizeof ((enumerator->data == lzma_state->data) ? 1 : 0), __extension__ ({ if (enumerator->data == lzma_state->data) ; else __assert_fail ("enumerator->data == lzma_state->data", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/packet_enumerator.c", 58, __extension__ __PRETTY_FUNCTION__); }));
 (*callback)(user_data, lzma_state, literal_packet());
 if (lzma_state->position > 0) {
  size_t rep0_position = lzma_state->position - lzma_state->dists[0] - 1;
  if (enumerator->data[lzma_state->position] == enumerator->data[rep0_position]) {
   (*callback)(user_data, lzma_state, short_rep_packet());
  }
 }
 PacketEnumeratorSubstringCallbackData data = {
  .lzma_state = lzma_state,
  .callback = callback,
  .user_data = user_data
 };
 substring_enumerator_for_each(enumerator->substring_enumerator, lzma_state->position, packet_enumerator_substring_callback, &data);
}
struct PacketSlab_struct {
 size_t data_size;
 LZMAPacket* packets;
};
size_t packet_slab_memory_usage(size_t data_size)
{
 return sizeof(LZMAPacket) * data_size + sizeof(PacketSlab);
}
PacketSlab* packet_slab_new(size_t data_size)
{
 PacketSlab* slab = malloc(sizeof(PacketSlab));
 if (slab == ((void*)0)) {
  return ((void*)0);
 }
 slab->data_size = data_size;
 uint8_t* packets;
 if (map_anonymous(sizeof(LZMAPacket) * data_size, &packets)) {
  free(slab);
  return ((void*)0);
 }
 slab->packets = (LZMAPacket*)packets;
 for (size_t i = 0; i < data_size; i++) {
  slab->packets[i] = literal_packet();
 }
 return slab;
}
void packet_slab_free(PacketSlab* slab)
{
 unmap((uint8_t*) slab->packets, sizeof(LZMAPacket) * slab->data_size);
 free(slab);
}
size_t packet_slab_size(const PacketSlab* slab)
{
 return slab->data_size;
}
size_t packet_slab_count(const PacketSlab* slab)
{
 size_t position = 0;
 size_t count = 0;
 while (position < slab->data_size) {
  count++;
  position += slab->packets[position].len;
 }
 return count;
}
LZMAPacket* packet_slab_packets(PacketSlab* slab)
{
 return slab->packets;
}
void perplexity_encoder_new(EncoderInterface* enc, uint64_t* perplexity);

void packet_slab_neighbour_new(PacketSlabNeighbour* neighbour, PacketSlab* slab, LZMAState init_state)
{
 neighbour->init_state = init_state;
 neighbour->slab = slab;
 neighbour->perplexity = 0;
 packet_slab_undo_stack_new(&neighbour->undo_stack);
}
void packet_slab_neighbour_free(PacketSlabNeighbour* neighbour)
{
 packet_slab_undo_stack_free(&neighbour->undo_stack);
}
static void encode_to_packet_number(LZMAState* lzma_state, EncoderInterface* enc, LZMAPacket* packets, size_t target)
{
 size_t count = 0;
 while (lzma_state->position < lzma_state->data_size) {
  if (count == target) {
   break;
  }
  count++;
  lzma_encode_packet(lzma_state, enc, packets[lzma_state->position]);
 }
}
static void save_packet_at_position(PacketSlabNeighbour* neighbour, LZMAPacket packet, size_t position)
{
 PacketSlabUndo undo = { .position = position, .old_packet = packet };
 packet_slab_undo_stack_insert(&neighbour->undo_stack, undo);
}
size_t max(size_t a, size_t b) {
 return a > b ? a : b;
}
size_t min(size_t a, size_t b) {
 return a < b ? a : b;
}
static size_t rand_max_dist(size_t count, size_t num) {
 size_t rnd = rand() % count;
 while (--num != 0) {
  rnd = max(rnd, rand() % count);
 }
 return rnd;
}
static _Bool pick_random_next_packet_from_top_k(const LZMAState* lzma_state, TopKPacketFinder* packet_finder, LZMAPacket* packets, _Bool best)
{
 LZMAPacket* next_packet = &packets[lzma_state->position];
 top_k_packet_finder_find(packet_finder, lzma_state, packets);
 size_t count = top_k_packet_finder_count(packet_finder);
 if (count == 0) {
  return 0;
 }
 size_t choice = rand_max_dist(count, 8);
 if (rand() % 8 == 0 || best) choice = count-1;
 while (top_k_packet_finder_pop(packet_finder, next_packet)) {
  if (choice-- == 0) {
   return 1;
  }
 }
 return 1;
}
static _Bool validate_long_rep_packet(const LZMAState* lzma_state, LZMAPacket packet)
{
 ((void) sizeof ((packet.type == 4) ? 1 : 0), __extension__ ({ if (packet.type == 4) ; else __assert_fail ("packet.type == LONG_REP", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/packet_slab_neighbour.c", 76, __extension__ __PRETTY_FUNCTION__); }));
 const uint8_t* rep_start = &lzma_state->data[lzma_state->position - lzma_state->dists[packet.dist] - 1];
 const uint8_t* current = &lzma_state->data[lzma_state->position];
 return memcmp(rep_start, current, packet.len) == 0;
}
static void repair_remaining_packets(PacketSlabNeighbour* neighbour, LZMAState* lzma_state, EncoderInterface* enc, TopKPacketFinder* packet_finder, LZMAPacket* packets)
{
 size_t count = 0;
 while (lzma_state->position < lzma_state->data_size) {
  count++;
  LZMAPacket* packet = &packets[lzma_state->position];
  LZMAPacket old_packet = *packet;
  if (packet->type == 3 || packet->type == 1) {
   if (lzma_state->data[lzma_state->position] == lzma_state->data[lzma_state->position - lzma_state->dists[0] - 1]) {
    if (count < 4) {
     *packet = short_rep_packet();
    }
   } else {
    *packet = literal_packet();
   }
  }
  if (packet->type == 4) {
   unsigned dist_index = 0;
   while (!validate_long_rep_packet(lzma_state, *packet) && dist_index < 4) {
    packet->dist = dist_index;
    dist_index++;
   }
   if (!validate_long_rep_packet(lzma_state, *packet)) {
    pick_random_next_packet_from_top_k(lzma_state, packet_finder, packets, rand() % 4 == 0);
   }
  }
  if (!lzma_packet_cmp(&old_packet, packet)) {
   save_packet_at_position(neighbour, old_packet, lzma_state->position);
  }
  lzma_encode_packet(lzma_state, enc, *packet);
 }
}
static _Bool mutate_next_packet(PacketSlabNeighbour* neighbour, const LZMAState* lzma_state, TopKPacketFinder* packet_finder, LZMAPacket* packets)
{
 LZMAPacket* first_packet = &packets[lzma_state->position];
 if (lzma_state->position + 1 < lzma_state->data_size && rand() % 2 == 0) {
  LZMAPacket* second_packet = &packets[lzma_state->position + 1];
  if ((first_packet->type == 4 || first_packet->type == 2) && first_packet->len > 2) {
   save_packet_at_position(neighbour, *first_packet, lzma_state->position);
   save_packet_at_position(neighbour, *second_packet, lzma_state->position + 1);
   *second_packet = *first_packet;
   second_packet->len--;
   *first_packet = literal_packet();
   return 1;
  } else if (first_packet->type == 1 || first_packet->type == 3) {
   if (second_packet->type == 2 || second_packet->type == 4) {
    size_t rep_start = lzma_state->position - second_packet->dist;
    if (second_packet->type == 4) {
     rep_start = lzma_state->position - lzma_state->dists[second_packet->dist];
    }
    if (second_packet->len < 273 && rep_start > 0 && lzma_state->data[lzma_state->position] == lzma_state->data[rep_start-1]) {
     save_packet_at_position(neighbour, *first_packet, lzma_state->position);
     *first_packet = *second_packet;
     first_packet->len++;
     return 1;
    }
   }
  }
 }
 save_packet_at_position(neighbour, packets[lzma_state->position], lzma_state->position);
 if (pick_random_next_packet_from_top_k(lzma_state, packet_finder, packets, 0)) {
  return 1;
 }
 return 0;
}
_Bool packet_slab_neighbour_generate(PacketSlabNeighbour* neighbour, TopKPacketFinder* packet_finder)
{
 LZMAPacket* packets = packet_slab_packets(neighbour->slab);
 LZMAState lzma_state = neighbour->init_state;
 EncoderInterface enc;
 perplexity_encoder_new(&enc, &neighbour->perplexity);
 size_t packet_count = packet_slab_count(neighbour->slab);
 size_t mutation_target = rand() % packet_count;
 encode_to_packet_number(&lzma_state, &enc, packets, mutation_target);
 if (!mutate_next_packet(neighbour, &lzma_state, packet_finder, packets)) {
  return 0;
 }
 lzma_encode_packet(&lzma_state, &enc, packets[lzma_state.position]);
 repair_remaining_packets(neighbour, &lzma_state, &enc, packet_finder, packets);
 return 1;
}
void packet_slab_neighbour_undo(PacketSlabNeighbour* neighbour)
{
 packet_slab_undo_stack_apply(&neighbour->undo_stack, neighbour->slab);
}
size_t packet_slab_neighbour_undo_count(const PacketSlabNeighbour* neighbour)
{
 return packet_slab_undo_stack_count(&neighbour->undo_stack);
}

struct PacketSlabUndoHeap_struct {
 size_t size;
 size_t count;
 PacketSlabUndo* heap;
 PacketSlabUndoHeap* prev;
};
static PacketSlabUndoHeap* packet_slab_undo_heap_new(size_t size, PacketSlabUndoHeap* prev)
{
 PacketSlabUndoHeap* undo_heap = malloc(sizeof(PacketSlabUndoHeap));
 if (undo_heap == ((void*)0)) {
  return ((void*)0);
 }
 undo_heap->size = size;
 undo_heap->count = 0;
 undo_heap->prev = prev;
 undo_heap->heap = malloc(sizeof(PacketSlabUndo) * size);
 if (undo_heap->heap == ((void*)0)) {
  free(undo_heap);
  return ((void*)0);
 }
 return undo_heap;
}
static void packet_slab_undo_heap_free(PacketSlabUndoHeap* undo_heap)
{
 free(undo_heap->heap);
 free(undo_heap);
}
static void packet_slab_undo_heap_apply(PacketSlabUndoHeap* undo_heap, PacketSlab* slab)
{
 LZMAPacket* packets = packet_slab_packets(slab);
 while (undo_heap->count > 0) {
  PacketSlabUndo undo = undo_heap->heap[--undo_heap->count];
  packets[undo.position] = undo.old_packet;
 }
}
void packet_slab_undo_stack_new(PacketSlabUndoStack* undo_stack)
{
 undo_stack->count = 0;
 undo_stack->total_count = 0;
 undo_stack->last = ((void*)0);
}
void packet_slab_undo_stack_free(PacketSlabUndoStack* undo_stack)
{
 undo_stack->count = 0;
 undo_stack->total_count = 0;
 while (undo_stack->last != ((void*)0)) {
  PacketSlabUndoHeap* undo_heap = undo_stack->last;
  undo_stack->last = undo_heap->prev;
  packet_slab_undo_heap_free(undo_heap);
 }
}
void packet_slab_undo_stack_insert(PacketSlabUndoStack* undo_stack, PacketSlabUndo undo)
{
 undo_stack->total_count++;
 if (undo_stack->count < 16) {
  undo_stack->stack[undo_stack->count++] = undo;
  return;
 }
 if (undo_stack->last == ((void*)0) || undo_stack->last->size == undo_stack->last->count) {
  size_t next_size = 16*2;
  if (undo_stack->last != ((void*)0)) {
   next_size = undo_stack->last->size*2;
  }
  PacketSlabUndoHeap* prev = undo_stack->last;
  undo_stack->last = packet_slab_undo_heap_new(next_size, prev);
 }
 ((void) sizeof ((undo_stack->last != ((void*)0)) ? 1 : 0), __extension__ ({ if (undo_stack->last != ((void*)0)) ; else __assert_fail ("undo_stack->last != NULL", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/packet_slab_undo_stack.c", 79, __extension__ __PRETTY_FUNCTION__); }));
 undo_stack->last->heap[undo_stack->last->count++] = undo;
}
void packet_slab_undo_stack_apply(PacketSlabUndoStack* undo_stack, PacketSlab* slab)
{
 while (undo_stack->last != ((void*)0)) {
  PacketSlabUndoHeap* undo_heap = undo_stack->last;
  undo_stack->last = undo_heap->prev;
  packet_slab_undo_heap_apply(undo_heap, slab);
  packet_slab_undo_heap_free(undo_heap);
 }
 LZMAPacket* packets = packet_slab_packets(slab);
 while (undo_stack->count > 0) {
  PacketSlabUndo undo = undo_stack->stack[--undo_stack->count];
  packets[undo.position] = undo.old_packet;
 }
 undo_stack->total_count = 0;
}
size_t packet_slab_undo_stack_count(const PacketSlabUndoStack* undo_stack)
{
 return undo_stack->total_count;
}

static const uint64_t LOG2_LOOKUP[2048] = { 0,
22528,
20480,
19281,
18432,
17772,
17233,
16778,
16384,
16035,
15724,
15443,
15185,
14949,
14730,
14526,
14336,
14156,
13987,
13828,
13676,
13532,
13395,
13263,
13137,
13017,
12901,
12789,
12682,
12578,
12478,
12381,
12288,
12197,
12108,
12023,
11939,
11859,
11780,
11703,
11628,
11555,
11484,
11415,
11347,
11280,
11215,
11152,
11089,
11029,
10969,
10910,
10853,
10797,
10741,
10687,
10634,
10582,
10530,
10480,
10430,
10381,
10333,
10286,
10240,
10194,
10149,
10104,
10060,
10017,
9975,
9933,
9891,
9851,
9811,
9771,
9732,
9693,
9655,
9617,
9580,
9543,
9507,
9471,
9436,
9401,
9367,
9332,
9299,
9265,
9232,
9200,
9167,
9135,
9104,
9072,
9041,
9011,
8981,
8951,
8921,
8891,
8862,
8834,
8805,
8777,
8749,
8721,
8693,
8666,
8639,
8613,
8586,
8560,
8534,
8508,
8482,
8457,
8432,
8407,
8382,
8358,
8333,
8309,
8285,
8262,
8238,
8215,
8192,
8169,
8146,
8123,
8101,
8078,
8056,
8034,
8012,
7991,
7969,
7948,
7927,
7906,
7885,
7864,
7843,
7823,
7803,
7783,
7763,
7743,
7723,
7703,
7684,
7664,
7645,
7626,
7607,
7588,
7569,
7551,
7532,
7514,
7495,
7477,
7459,
7441,
7423,
7406,
7388,
7370,
7353,
7336,
7319,
7301,
7284,
7267,
7251,
7234,
7217,
7201,
7184,
7168,
7152,
7135,
7119,
7103,
7087,
7071,
7056,
7040,
7024,
7009,
6993,
6978,
6963,
6948,
6933,
6918,
6903,
6888,
6873,
6858,
6843,
6829,
6814,
6800,
6786,
6771,
6757,
6743,
6729,
6715,
6701,
6687,
6673,
6659,
6645,
6632,
6618,
6605,
6591,
6578,
6565,
6551,
6538,
6525,
6512,
6499,
6486,
6473,
6460,
6447,
6434,
6422,
6409,
6396,
6384,
6371,
6359,
6347,
6334,
6322,
6310,
6297,
6285,
6273,
6261,
6249,
6237,
6225,
6214,
6202,
6190,
6178,
6167,
6155,
6144,
6132,
6121,
6109,
6098,
6086,
6075,
6064,
6053,
6041,
6030,
6019,
6008,
5997,
5986,
5975,
5964,
5954,
5943,
5932,
5921,
5911,
5900,
5889,
5879,
5868,
5858,
5847,
5837,
5826,
5816,
5806,
5795,
5785,
5775,
5765,
5755,
5745,
5735,
5725,
5715,
5705,
5695,
5685,
5675,
5665,
5655,
5645,
5636,
5626,
5616,
5607,
5597,
5588,
5578,
5568,
5559,
5550,
5540,
5531,
5521,
5512,
5503,
5493,
5484,
5475,
5466,
5457,
5447,
5438,
5429,
5420,
5411,
5402,
5393,
5384,
5375,
5367,
5358,
5349,
5340,
5331,
5322,
5314,
5305,
5296,
5288,
5279,
5271,
5262,
5253,
5245,
5236,
5228,
5219,
5211,
5203,
5194,
5186,
5178,
5169,
5161,
5153,
5144,
5136,
5128,
5120,
5112,
5104,
5095,
5087,
5079,
5071,
5063,
5055,
5047,
5039,
5031,
5023,
5016,
5008,
5000,
4992,
4984,
4976,
4969,
4961,
4953,
4945,
4938,
4930,
4923,
4915,
4907,
4900,
4892,
4885,
4877,
4870,
4862,
4855,
4847,
4840,
4832,
4825,
4818,
4810,
4803,
4795,
4788,
4781,
4774,
4766,
4759,
4752,
4745,
4738,
4730,
4723,
4716,
4709,
4702,
4695,
4688,
4681,
4674,
4667,
4660,
4653,
4646,
4639,
4632,
4625,
4618,
4611,
4604,
4597,
4591,
4584,
4577,
4570,
4563,
4557,
4550,
4543,
4537,
4530,
4523,
4517,
4510,
4503,
4497,
4490,
4483,
4477,
4470,
4464,
4457,
4451,
4444,
4438,
4431,
4425,
4418,
4412,
4406,
4399,
4393,
4386,
4380,
4374,
4367,
4361,
4355,
4348,
4342,
4336,
4330,
4323,
4317,
4311,
4305,
4299,
4292,
4286,
4280,
4274,
4268,
4262,
4256,
4249,
4243,
4237,
4231,
4225,
4219,
4213,
4207,
4201,
4195,
4189,
4183,
4177,
4171,
4166,
4160,
4154,
4148,
4142,
4136,
4130,
4124,
4119,
4113,
4107,
4101,
4096,
4090,
4084,
4078,
4073,
4067,
4061,
4055,
4050,
4044,
4038,
4033,
4027,
4021,
4016,
4010,
4005,
3999,
3993,
3988,
3982,
3977,
3971,
3966,
3960,
3955,
3949,
3944,
3938,
3933,
3927,
3922,
3916,
3911,
3906,
3900,
3895,
3889,
3884,
3879,
3873,
3868,
3863,
3857,
3852,
3847,
3841,
3836,
3831,
3825,
3820,
3815,
3810,
3804,
3799,
3794,
3789,
3784,
3778,
3773,
3768,
3763,
3758,
3753,
3747,
3742,
3737,
3732,
3727,
3722,
3717,
3712,
3707,
3702,
3697,
3692,
3687,
3682,
3677,
3672,
3667,
3662,
3657,
3652,
3647,
3642,
3637,
3632,
3627,
3622,
3617,
3612,
3607,
3602,
3597,
3593,
3588,
3583,
3578,
3573,
3568,
3564,
3559,
3554,
3549,
3544,
3540,
3535,
3530,
3525,
3520,
3516,
3511,
3506,
3502,
3497,
3492,
3487,
3483,
3478,
3473,
3469,
3464,
3459,
3455,
3450,
3445,
3441,
3436,
3432,
3427,
3422,
3418,
3413,
3409,
3404,
3399,
3395,
3390,
3386,
3381,
3377,
3372,
3368,
3363,
3359,
3354,
3350,
3345,
3341,
3336,
3332,
3327,
3323,
3319,
3314,
3310,
3305,
3301,
3296,
3292,
3288,
3283,
3279,
3274,
3270,
3266,
3261,
3257,
3253,
3248,
3244,
3240,
3235,
3231,
3227,
3223,
3218,
3214,
3210,
3205,
3201,
3197,
3193,
3188,
3184,
3180,
3176,
3171,
3167,
3163,
3159,
3155,
3150,
3146,
3142,
3138,
3134,
3130,
3125,
3121,
3117,
3113,
3109,
3105,
3101,
3096,
3092,
3088,
3084,
3080,
3076,
3072,
3068,
3064,
3060,
3056,
3051,
3047,
3043,
3039,
3035,
3031,
3027,
3023,
3019,
3015,
3011,
3007,
3003,
2999,
2995,
2991,
2987,
2983,
2979,
2975,
2972,
2968,
2964,
2960,
2956,
2952,
2948,
2944,
2940,
2936,
2932,
2928,
2925,
2921,
2917,
2913,
2909,
2905,
2901,
2897,
2894,
2890,
2886,
2882,
2878,
2875,
2871,
2867,
2863,
2859,
2855,
2852,
2848,
2844,
2840,
2837,
2833,
2829,
2825,
2822,
2818,
2814,
2810,
2807,
2803,
2799,
2795,
2792,
2788,
2784,
2781,
2777,
2773,
2770,
2766,
2762,
2758,
2755,
2751,
2747,
2744,
2740,
2737,
2733,
2729,
2726,
2722,
2718,
2715,
2711,
2708,
2704,
2700,
2697,
2693,
2690,
2686,
2682,
2679,
2675,
2672,
2668,
2665,
2661,
2657,
2654,
2650,
2647,
2643,
2640,
2636,
2633,
2629,
2626,
2622,
2619,
2615,
2612,
2608,
2605,
2601,
2598,
2594,
2591,
2587,
2584,
2580,
2577,
2574,
2570,
2567,
2563,
2560,
2556,
2553,
2549,
2546,
2543,
2539,
2536,
2532,
2529,
2526,
2522,
2519,
2515,
2512,
2509,
2505,
2502,
2499,
2495,
2492,
2489,
2485,
2482,
2479,
2475,
2472,
2469,
2465,
2462,
2459,
2455,
2452,
2449,
2445,
2442,
2439,
2435,
2432,
2429,
2426,
2422,
2419,
2416,
2413,
2409,
2406,
2403,
2399,
2396,
2393,
2390,
2387,
2383,
2380,
2377,
2374,
2370,
2367,
2364,
2361,
2358,
2354,
2351,
2348,
2345,
2342,
2338,
2335,
2332,
2329,
2326,
2322,
2319,
2316,
2313,
2310,
2307,
2304,
2300,
2297,
2294,
2291,
2288,
2285,
2282,
2278,
2275,
2272,
2269,
2266,
2263,
2260,
2257,
2254,
2251,
2247,
2244,
2241,
2238,
2235,
2232,
2229,
2226,
2223,
2220,
2217,
2214,
2211,
2208,
2205,
2201,
2198,
2195,
2192,
2189,
2186,
2183,
2180,
2177,
2174,
2171,
2168,
2165,
2162,
2159,
2156,
2153,
2150,
2147,
2144,
2141,
2138,
2135,
2132,
2129,
2126,
2123,
2121,
2118,
2115,
2112,
2109,
2106,
2103,
2100,
2097,
2094,
2091,
2088,
2085,
2082,
2079,
2076,
2074,
2071,
2068,
2065,
2062,
2059,
2056,
2053,
2050,
2048,
2045,
2042,
2039,
2036,
2033,
2030,
2027,
2025,
2022,
2019,
2016,
2013,
2010,
2007,
2005,
2002,
1999,
1996,
1993,
1990,
1988,
1985,
1982,
1979,
1976,
1973,
1971,
1968,
1965,
1962,
1959,
1957,
1954,
1951,
1948,
1945,
1943,
1940,
1937,
1934,
1932,
1929,
1926,
1923,
1920,
1918,
1915,
1912,
1909,
1907,
1904,
1901,
1898,
1896,
1893,
1890,
1887,
1885,
1882,
1879,
1877,
1874,
1871,
1868,
1866,
1863,
1860,
1858,
1855,
1852,
1849,
1847,
1844,
1841,
1839,
1836,
1833,
1831,
1828,
1825,
1823,
1820,
1817,
1815,
1812,
1809,
1807,
1804,
1801,
1799,
1796,
1793,
1791,
1788,
1785,
1783,
1780,
1777,
1775,
1772,
1770,
1767,
1764,
1762,
1759,
1756,
1754,
1751,
1749,
1746,
1743,
1741,
1738,
1736,
1733,
1730,
1728,
1725,
1723,
1720,
1718,
1715,
1712,
1710,
1707,
1705,
1702,
1699,
1697,
1694,
1692,
1689,
1687,
1684,
1682,
1679,
1677,
1674,
1671,
1669,
1666,
1664,
1661,
1659,
1656,
1654,
1651,
1649,
1646,
1644,
1641,
1639,
1636,
1634,
1631,
1629,
1626,
1624,
1621,
1619,
1616,
1614,
1611,
1609,
1606,
1604,
1601,
1599,
1596,
1594,
1591,
1589,
1586,
1584,
1581,
1579,
1576,
1574,
1572,
1569,
1567,
1564,
1562,
1559,
1557,
1554,
1552,
1549,
1547,
1545,
1542,
1540,
1537,
1535,
1532,
1530,
1528,
1525,
1523,
1520,
1518,
1516,
1513,
1511,
1508,
1506,
1504,
1501,
1499,
1496,
1494,
1492,
1489,
1487,
1484,
1482,
1480,
1477,
1475,
1472,
1470,
1468,
1465,
1463,
1461,
1458,
1456,
1454,
1451,
1449,
1446,
1444,
1442,
1439,
1437,
1435,
1432,
1430,
1428,
1425,
1423,
1421,
1418,
1416,
1414,
1411,
1409,
1407,
1404,
1402,
1400,
1397,
1395,
1393,
1391,
1388,
1386,
1384,
1381,
1379,
1377,
1374,
1372,
1370,
1367,
1365,
1363,
1361,
1358,
1356,
1354,
1351,
1349,
1347,
1345,
1342,
1340,
1338,
1336,
1333,
1331,
1329,
1327,
1324,
1322,
1320,
1317,
1315,
1313,
1311,
1308,
1306,
1304,
1302,
1300,
1297,
1295,
1293,
1291,
1288,
1286,
1284,
1282,
1279,
1277,
1275,
1273,
1271,
1268,
1266,
1264,
1262,
1259,
1257,
1255,
1253,
1251,
1248,
1246,
1244,
1242,
1240,
1237,
1235,
1233,
1231,
1229,
1226,
1224,
1222,
1220,
1218,
1216,
1213,
1211,
1209,
1207,
1205,
1203,
1200,
1198,
1196,
1194,
1192,
1190,
1187,
1185,
1183,
1181,
1179,
1177,
1175,
1172,
1170,
1168,
1166,
1164,
1162,
1160,
1157,
1155,
1153,
1151,
1149,
1147,
1145,
1142,
1140,
1138,
1136,
1134,
1132,
1130,
1128,
1126,
1123,
1121,
1119,
1117,
1115,
1113,
1111,
1109,
1107,
1104,
1102,
1100,
1098,
1096,
1094,
1092,
1090,
1088,
1086,
1084,
1082,
1079,
1077,
1075,
1073,
1071,
1069,
1067,
1065,
1063,
1061,
1059,
1057,
1055,
1053,
1050,
1048,
1046,
1044,
1042,
1040,
1038,
1036,
1034,
1032,
1030,
1028,
1026,
1024,
1022,
1020,
1018,
1016,
1014,
1012,
1010,
1008,
1006,
1003,
1001,
999,
997,
995,
993,
991,
989,
987,
985,
983,
981,
979,
977,
975,
973,
971,
969,
967,
965,
963,
961,
959,
957,
955,
953,
951,
949,
947,
945,
943,
941,
939,
937,
935,
933,
931,
929,
927,
925,
924,
922,
920,
918,
916,
914,
912,
910,
908,
906,
904,
902,
900,
898,
896,
894,
892,
890,
888,
886,
884,
882,
880,
878,
877,
875,
873,
871,
869,
867,
865,
863,
861,
859,
857,
855,
853,
851,
849,
848,
846,
844,
842,
840,
838,
836,
834,
832,
830,
828,
827,
825,
823,
821,
819,
817,
815,
813,
811,
809,
807,
806,
804,
802,
800,
798,
796,
794,
792,
790,
789,
787,
785,
783,
781,
779,
777,
775,
774,
772,
770,
768,
766,
764,
762,
760,
759,
757,
755,
753,
751,
749,
747,
746,
744,
742,
740,
738,
736,
734,
733,
731,
729,
727,
725,
723,
722,
720,
718,
716,
714,
712,
710,
709,
707,
705,
703,
701,
699,
698,
696,
694,
692,
690,
689,
687,
685,
683,
681,
679,
678,
676,
674,
672,
670,
669,
667,
665,
663,
661,
660,
658,
656,
654,
652,
651,
649,
647,
645,
643,
642,
640,
638,
636,
634,
633,
631,
629,
627,
625,
624,
622,
620,
618,
617,
615,
613,
611,
609,
608,
606,
604,
602,
601,
599,
597,
595,
594,
592,
590,
588,
586,
585,
583,
581,
579,
578,
576,
574,
572,
571,
569,
567,
565,
564,
562,
560,
558,
557,
555,
553,
551,
550,
548,
546,
545,
543,
541,
539,
538,
536,
534,
532,
531,
529,
527,
526,
524,
522,
520,
519,
517,
515,
513,
512,
510,
508,
507,
505,
503,
501,
500,
498,
496,
495,
493,
491,
490,
488,
486,
484,
483,
481,
479,
478,
476,
474,
473,
471,
469,
467,
466,
464,
462,
461,
459,
457,
456,
454,
452,
451,
449,
447,
446,
444,
442,
441,
439,
437,
436,
434,
432,
431,
429,
427,
426,
424,
422,
421,
419,
417,
416,
414,
412,
411,
409,
407,
406,
404,
402,
401,
399,
397,
396,
394,
392,
391,
389,
387,
386,
384,
383,
381,
379,
378,
376,
374,
373,
371,
369,
368,
366,
365,
363,
361,
360,
358,
356,
355,
353,
351,
350,
348,
347,
345,
343,
342,
340,
339,
337,
335,
334,
332,
330,
329,
327,
326,
324,
322,
321,
319,
318,
316,
314,
313,
311,
310,
308,
306,
305,
303,
302,
300,
298,
297,
295,
294,
292,
290,
289,
287,
286,
284,
282,
281,
279,
278,
276,
274,
273,
271,
270,
268,
267,
265,
263,
262,
260,
259,
257,
256,
254,
252,
251,
249,
248,
246,
245,
243,
241,
240,
238,
237,
235,
234,
232,
230,
229,
227,
226,
224,
223,
221,
220,
218,
216,
215,
213,
212,
210,
209,
207,
206,
204,
203,
201,
199,
198,
196,
195,
193,
192,
190,
189,
187,
186,
184,
183,
181,
179,
178,
176,
175,
173,
172,
170,
169,
167,
166,
164,
163,
161,
160,
158,
157,
155,
153,
152,
150,
149,
147,
146,
144,
143,
141,
140,
138,
137,
135,
134,
132,
131,
129,
128,
126,
125,
123,
122,
120,
119,
117,
116,
114,
113,
111,
110,
108,
107,
105,
104,
102,
101,
99,
98,
96,
95,
93,
92,
90,
89,
87,
86,
84,
83,
81,
80,
78,
77,
75,
74,
73,
71,
70,
68,
67,
65,
64,
62,
61,
59,
58,
56,
55,
53,
52,
50,
49,
47,
46,
45,
43,
42,
40,
39,
37,
36,
34,
33,
31,
30,
28,
27,
26,
24,
23,
21,
20,
18,
17,
15,
14,
13,
11,
10,
8,
7,
5,
4,
2,
1,
};
static void perplexity_encoder_encode_bit(EncoderInterface* enc, _Bool bit, uint16_t prob)
{
 uint64_t* perplexity = (uint64_t*)enc->private_data;
 *perplexity += LOG2_LOOKUP[bit ? (2048 - prob) : prob];
}
static void perplexity_encoder_encode_direct_bits(EncoderInterface* enc, unsigned bits, unsigned num_bits)
{
 (void) bits;
 uint64_t* perplexity = (uint64_t*)enc->private_data;
 *perplexity += num_bits << 11;
}
void perplexity_encoder_new(EncoderInterface* enc, uint64_t* perplexity)
{
 enc->encode_bit = perplexity_encoder_encode_bit;
 enc->encode_direct_bits = perplexity_encoder_encode_direct_bits;
 enc->private_data = (void*)perplexity;
}
void encode_bit(_Bool bit, uint16_t* prob, EncoderInterface* enc)
{
 (*enc->encode_bit)(enc, bit, *prob);
 unsigned v = *prob;
 if (bit) {
  v -= v >> 5;
 } else {
  v += ((1 << 11) - v) >> 5;
 }
 *prob = (uint16_t)v;
}
void encode_direct_bits(unsigned bits, size_t num_bits, EncoderInterface* enc)
{
 (*enc->encode_direct_bits)(enc, bits, num_bits);
}
void encode_bit_tree(unsigned bits, uint16_t* probs, size_t num_bits, EncoderInterface* enc)
{
 unsigned m = 1;
 for (unsigned bit_index = num_bits; bit_index != 0;)
 {
  bit_index--;
  int bit = (bits >> bit_index) & 1;
  encode_bit(bit, &probs[m], enc);
  m = (m << 1) | bit;
 }
}
void encode_bit_tree_reverse(unsigned bits, uint16_t* probs, size_t num_bits, EncoderInterface* enc)
{
 unsigned m = 1;
 for (unsigned i = 0; i < num_bits; i++)
 {
  int bit = bits & 1;
  encode_bit(bit, &probs[m], enc);
  m = (m << 1) | bit;
  bits >>= 1;
 }
}
typedef struct {
 OutputInterface* output;
 uint64_t low;
 uint32_t range;
 uint8_t cache;
 uint64_t cache_size;
} RangeEncoderData;
static void range_encoder_shift_low(EncoderInterface* enc)
{
 RangeEncoderData* data = (RangeEncoderData*)enc->private_data;
 OutputInterface* output = data->output;
 uint32_t high_bytes = data->low >> 32;
 uint32_t low_bytes = data->low & 0xFFFFFFFF;
 if (low_bytes < 0xFF000000 || high_bytes != 0) {
  uint8_t temp = data->cache;
  do {
   uint8_t out_byte = temp + (high_bytes & 0xFF);
   if (!(*output->write)(output, &out_byte, 1)) {
    fprintf(stderr, "could not write: %02x\n", out_byte);
   }
   temp = 0xFF;
  } while (--data->cache_size != 0);
  data->cache = (data->low >> 24) & 0xFF;
 }
 data->cache_size++;
 data->low = low_bytes << 8;
}
static void range_encoder_flush_data(EncoderInterface* enc)
{
 for (int i = 0; i < 5; i++) {
  range_encoder_shift_low(enc);
 }
}
static void range_encoder_encode_bit(EncoderInterface* enc, _Bool bit, uint16_t prob)
{
 RangeEncoderData* data = (RangeEncoderData*)enc->private_data;
 uint32_t new_bound = (data->range >> 11) * prob;
 if (bit) {
  data->low += new_bound;
  data->range -= new_bound;
 } else {
  data->range = new_bound;
 }
 while ((data->range & 0xFF000000) == 0) {
  data->range <<= 8;
  range_encoder_shift_low(enc);
 }
}
static void range_encoder_encode_direct_bits(EncoderInterface* enc, unsigned bits, unsigned num_bits)
{
 RangeEncoderData* data = (RangeEncoderData*)enc->private_data;
 do {
  _Bool bit = bits & (1 << (num_bits - 1));
  data->range >>= 1;
  if (bit) {
   data->low += data->range;
  }
  if ((data->range & 0xFF000000) == 0) {
   data->range <<= 8;
   range_encoder_shift_low(enc);
  }
 } while (--num_bits);
}
void range_encoder_new(EncoderInterface* enc, OutputInterface* output)
{
 RangeEncoderData* data = malloc(sizeof(RangeEncoderData));
 data->output = output;
 data->low = 0;
 data->range = 0xFFFFFFFF;
 data->cache = 0;
 data->cache_size = 1;
 enc->encode_bit = range_encoder_encode_bit;
 enc->encode_direct_bits = range_encoder_encode_direct_bits;
 enc->private_data = (void*)data;
}
void range_encoder_free(EncoderInterface* enc)
{
 range_encoder_flush_data(enc);
 free(enc->private_data);
}
struct SubstringEnumerator_struct {
 const uint8_t* data;
 size_t data_size;
 size_t min_length;
 size_t max_length;
 size_t bigram_offsets[256][256];
 size_t bigram_sizes[256][256];
 size_t* bigram_positions;
};
size_t substring_enumerator_memory_usage(size_t data_size)
{
 return sizeof(size_t) * data_size + sizeof(SubstringEnumerator);
}
static void memoize_bigram_positions(SubstringEnumerator* em)
{
 const uint8_t* data = em->data;
 size_t data_size = em->data_size;
 for (size_t i = 1; i < data_size; i++) {
  em->bigram_sizes[data[i-1]][data[i]]++;
 }
 for (int i = 1; i < 256*256; i++) {
  int j = i-1;
  em->bigram_offsets[i%256][i/256] = em->bigram_offsets[j%256][j/256] + em->bigram_sizes[j%256][j/256];
 }
 int fills[256][256] = {0};
 for (size_t i = 1; i < data_size; i++) {
  uint8_t first = data[i-1];
  uint8_t second = data[i];
  size_t offset = em->bigram_offsets[first][second] + fills[first][second];
  em->bigram_positions[offset] = i-1;
  fills[first][second]++;
 }
}
SubstringEnumerator* substring_enumerator_new(const uint8_t* data, size_t data_size, size_t min_length, size_t max_length)
{
 if (min_length != 2) {
  fprintf(stderr, "Error: only min_length = 2 is supported in substring_enumerator_callback\n");
  return ((void*)0);
 }
 SubstringEnumerator* enumerator = malloc(sizeof(SubstringEnumerator));
 if (enumerator == ((void*)0)) {
  fprintf(stderr, "Error: could not allocate memory in substring_enumerator_new\n");
  return ((void*)0);
 }
 memset(enumerator, 0, sizeof(SubstringEnumerator));
 enumerator->data = data;
 enumerator->data_size = data_size;
 enumerator->min_length = min_length;
 enumerator->max_length = max_length;
 uint8_t* bigram_positions;
 if (map_anonymous(sizeof(size_t) * data_size, &bigram_positions)) {
  free(enumerator);
  return ((void*)0);
 }
 enumerator->bigram_positions = (size_t*)bigram_positions;
 memoize_bigram_positions(enumerator);
 return enumerator;
}
void substring_enumerator_free(SubstringEnumerator* enumerator)
{
 unmap((const uint8_t*)enumerator->bigram_positions, sizeof(size_t) * enumerator->data_size);
 free(enumerator);
}
void substring_enumerator_for_each(const SubstringEnumerator* em, size_t pos, SubstringEnumeratorCallback callback, void* user_data)
{
 if (pos == 0) return;
 if (pos == em->data_size - 1) return;
 uint8_t first = em->data[pos];
 uint8_t second = em->data[pos+1];
 size_t offset = em->bigram_offsets[first][second];
 size_t size = em->bigram_sizes[first][second];
 for (size_t i = 0; i < size; i++) {
  size_t position = em->bigram_positions[offset + i];
  if (position >= pos) break;
  callback(user_data, position, 2);
  for (size_t j = 2; j < em->max_length && j + pos < em->data_size; j++) {
   if (em->data[pos+j] != em->data[position+j]) break;
   callback(user_data, position, 1+j);
  }
 }
}

typedef struct {
 LZMAPacket packet;
 float cost;
} TopKEntry;
struct TopKPacketFinder_struct {
 size_t size;
 TopKEntry* entries;
 LZMAPacket* next_packets;
 MaxHeap* heap;
 const PacketEnumerator* packet_enumerator;
};
static int sign(float x)
{
 if (x < 0.f) return -1;
 if (x > 0.f) return 1;
 return 0;
}
static int top_k_entry_comparator(void* user_data, unsigned a, unsigned b)
{
 TopKPacketFinder* finder = (TopKPacketFinder*) user_data;
 ((void) sizeof ((a < finder->size) ? 1 : 0), __extension__ ({ if (a < finder->size) ; else __assert_fail ("a < finder->size", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/top_k_packet_finder.c", 31, __extension__ __PRETTY_FUNCTION__); }));
 ((void) sizeof ((b < finder->size) ? 1 : 0), __extension__ ({ if (b < finder->size) ; else __assert_fail ("b < finder->size", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/top_k_packet_finder.c", 32, __extension__ __PRETTY_FUNCTION__); }));
 TopKEntry* entry_a = &finder->entries[a];
 TopKEntry* entry_b = &finder->entries[b];
 return sign(entry_a->cost - entry_b->cost);
}
TopKPacketFinder* top_k_packet_finder_new(size_t size, const PacketEnumerator* packet_enumerator)
{
 TopKPacketFinder* finder = malloc(sizeof(TopKPacketFinder));
 if (finder == ((void*)0)) {
  return ((void*)0);
 }
 finder->size = size;
 finder->packet_enumerator = packet_enumerator;
 finder->entries = malloc(sizeof(TopKEntry) * size);
 if (finder->entries == ((void*)0)) {
  free(finder);
  return ((void*)0);
 }
 finder->heap = max_heap_new(size, top_k_entry_comparator, finder);
 if (finder->heap == ((void*)0)) {
  free(finder->entries);
  free(finder);
  return ((void*)0);
 }
 return finder;
}
void top_k_packet_finder_free(TopKPacketFinder* finder)
{
 max_heap_free(finder->heap);
 free(finder->entries);
 free(finder);
}
size_t top_k_packet_finder_count(const TopKPacketFinder* finder)
{
 return max_heap_count(finder->heap);
}
static void top_k_entry_finder_insert(TopKPacketFinder* finder, TopKEntry entry)
{
 size_t count = top_k_packet_finder_count(finder);
 if (count < finder->size) {
  size_t pos = count++;
  finder->entries[pos] = entry;
  max_heap_insert(finder->heap, pos);
  return;
 }
 unsigned maximum = 0;
 _Bool had_max = max_heap_maximum(finder->heap, &maximum);
 ((void) sizeof ((had_max) ? 1 : 0), __extension__ ({ if (had_max) ; else __assert_fail ("had_max", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/top_k_packet_finder.c", 87, __extension__ __PRETTY_FUNCTION__); }));
 ((void) sizeof ((maximum < finder->size) ? 1 : 0), __extension__ ({ if (maximum < finder->size) ; else __assert_fail ("maximum < finder->size", "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/top_k_packet_finder.c", 88, __extension__ __PRETTY_FUNCTION__); }));
 if (entry.cost <= finder->entries[maximum].cost) {
  finder->entries[maximum] = entry;
  max_heap_update_maximum(finder->heap);
 }
}
static void top_k_packet_finder_callback(void* user_data, const LZMAState* state, LZMAPacket packet)
{
 TopKPacketFinder* finder = (TopKPacketFinder*) user_data;
 if (lzma_packet_cmp(&packet, &finder->next_packets[state->position])) {
  return;
 }
 LZMAState new_state = *state;
 EncoderInterface enc;
 uint64_t perplexity = 0;
 size_t start_position = new_state.position;
 perplexity_encoder_new(&enc, &perplexity);
 lzma_encode_packet(&new_state, &enc, packet);
 size_t length = new_state.position - start_position;
 TopKEntry entry = { .packet = packet, .cost = perplexity / length };
 top_k_entry_finder_insert(finder, entry);
}
void top_k_packet_finder_find(TopKPacketFinder* finder, const LZMAState* lzma_state, LZMAPacket* next_packets)
{
 finder->next_packets = next_packets;
 max_heap_clear(finder->heap);
 packet_enumerator_for_each(finder->packet_enumerator, lzma_state, top_k_packet_finder_callback, finder);
}
_Bool top_k_packet_finder_pop(TopKPacketFinder* finder, LZMAPacket* packet)
{
 unsigned maximum;
 if (!max_heap_maximum(finder->heap, &maximum)) {
  return 0;
 }
 *packet = finder->entries[maximum].packet;
 max_heap_remove_maximum(finder->heap);
 return 1;
}

