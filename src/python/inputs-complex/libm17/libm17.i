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
void decode_callsign_bytes(uint8_t *outp, const uint8_t inp[6]);
void decode_callsign_value(uint8_t *outp, const uint64_t inp);
int8_t encode_callsign_bytes(uint8_t out[6], const uint8_t *inp);
int8_t encode_callsign_value(uint64_t *out, const uint8_t *inp);
typedef enum
{
 PREAM_LSF,
 PREAM_BERT
} pream_t;
typedef enum
{
 FRAME_LSF,
 FRAME_STR,
 FRAME_PKT
} frame_t;
typedef struct
{
 uint8_t dst[6];
 uint8_t src[6];
 uint8_t type[2];
 uint8_t meta[112/8];
 uint8_t crc[2];
} lsf_t;
void send_preamble(float out[192], uint32_t* cnt, const pream_t type);
void send_syncword(float out[8], uint32_t* cnt, const uint16_t syncword);
void send_data(float out[184], uint32_t* cnt, const uint8_t* in);
void send_eot(float out[192], uint32_t* cnt);
void send_frame(float out[192], const uint8_t* data, const frame_t type, const lsf_t* lsf, const uint8_t lich_cnt, const uint16_t fn);
extern const uint8_t puncture_pattern_1[61];
extern const uint8_t puncture_pattern_2[12];
extern const uint8_t puncture_pattern_3[8];
void conv_encode_stream_frame(uint8_t* out, const uint8_t* in, const uint16_t fn);
void conv_encode_packet_frame(uint8_t* out, const uint8_t* in);
void conv_encode_LSF(uint8_t* out, const lsf_t* in);
extern const uint16_t M17_CRC_POLY;
uint16_t CRC_M17(const uint8_t* in, const uint16_t len);
uint16_t LSF_CRC(const lsf_t* in);
void extract_LICH(uint8_t outp[6], const uint8_t cnt, const lsf_t* inp);
void unpack_LICH(uint8_t* out, const uint8_t in[12]);
extern const uint16_t encode_matrix[12];
extern const uint16_t decode_matrix[12];
uint32_t golay24_encode(const uint16_t data);
uint16_t golay24_sdecode(const uint16_t codeword[24]);
void decode_LICH(uint8_t outp[6], const uint16_t inp[96]);
void encode_LICH(uint8_t outp[12], const uint8_t inp[6]);
extern const uint16_t intrl_seq[184*2];
void reorder_bits(uint8_t outp[184*2], const uint8_t inp[184*2]);
void reorder_soft_bits(uint16_t outp[184*2], const uint16_t inp[184*2]);
uint16_t q_abs_diff(const uint16_t v1, const uint16_t v2);
float eucl_norm(const float* in1, const int8_t* in2, const uint8_t n);
void int_to_soft(uint16_t* out, const uint16_t in, const uint8_t len);
uint16_t soft_to_int(const uint16_t* in, const uint8_t len);
uint16_t div16(const uint16_t a, const uint16_t b);
uint16_t mul16(const uint16_t a, const uint16_t b);
uint16_t soft_bit_XOR(const uint16_t a, const uint16_t b);
uint16_t soft_bit_NOT(const uint16_t a);
void soft_XOR(uint16_t* out, const uint16_t* a, const uint16_t* b, const uint8_t len);
extern const uint8_t rand_seq[46];
void randomize_bits(uint8_t inp[184*2]);
void randomize_soft_bits(uint16_t inp[184*2]);
void slice_symbols(uint16_t out[2*184], const float inp[184]);
extern const float rrc_taps_10[8*10+1];
extern const float rrc_taps_5[8*5+1];
extern const int8_t symbol_map[4];
extern const int8_t symbol_list[4];
extern const uint16_t SYNC_LSF;
extern const uint16_t SYNC_STR;
extern const uint16_t SYNC_PKT;
extern const uint16_t SYNC_BER;
extern const uint16_t EOT_MRKR;
uint32_t viterbi_decode(uint8_t* out, const uint16_t* in, const uint16_t len);
uint32_t viterbi_decode_punctured(uint8_t* out, const uint16_t* in, const uint8_t* punct, const uint16_t in_len, const uint16_t p_len);
void viterbi_decode_bit(uint16_t s0, uint16_t s1, size_t pos);
uint32_t viterbi_chainback(uint8_t* out, size_t pos, const uint16_t len);
void viterbi_reset(void);
extern const float eot_symbols[8];
extern const int8_t lsf_sync_symbols[8];
extern const int8_t str_sync_symbols[8];
extern const int8_t pkt_sync_symbols[8];
extern const float symbol_levels[4];
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
const int8_t lsf_sync_symbols[8]={+3, +3, +3, +3, -3, -3, +3, -3};
const int8_t str_sync_symbols[8]={-3, -3, -3, -3, +3, +3, -3, +3};
const int8_t pkt_sync_symbols[8]={+3, -3, +3, +3, -3, -3, -3, -3};
const float symbol_levels[4]={-3.0, -1.0, +1.0, +3.0};
static uint32_t prevMetrics[(1 << (5 - 1))];
static uint32_t currMetrics[(1 << (5 - 1))];
static uint32_t prevMetricsData[(1 << (5 - 1))];
static uint32_t currMetricsData[(1 << (5 - 1))];
static uint16_t viterbi_history[244];
uint32_t viterbi_decode(uint8_t* out, const uint16_t* in, const uint16_t len)
{
    if(len > 244*2)
  fprintf(stderr, "Input size exceeds max history\n");
    viterbi_reset();
    size_t pos = 0;
    for(size_t i = 0; i < len; i += 2)
    {
        uint16_t s0 = in[i];
        uint16_t s1 = in[i + 1];
        viterbi_decode_bit(s0, s1, pos);
        pos++;
    }
    return viterbi_chainback(out, pos, len/2);
}
uint32_t viterbi_decode_punctured(uint8_t* out, const uint16_t* in, const uint8_t* punct, const uint16_t in_len, const uint16_t p_len)
{
    if(in_len > 244*2)
  fprintf(stderr, "Input size exceeds max history\n");
 uint16_t umsg[244*2];
 uint8_t p=0;
 uint16_t u=0;
    uint16_t i=0;
 while(i<in_len)
 {
  if(punct[p])
  {
   umsg[u]=in[i];
   i++;
  }
  else
  {
   umsg[u]=0x7FFF;
  }
  u++;
  p++;
  p%=p_len;
 }
    return viterbi_decode(out, umsg, u) - (u-in_len)*0x7FFF;
}
void viterbi_decode_bit(uint16_t s0, uint16_t s1, const size_t pos)
{
    static const uint16_t COST_TABLE_0[] = {0, 0, 0, 0, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF};
    static const uint16_t COST_TABLE_1[] = {0, 0xFFFF, 0xFFFF, 0, 0, 0xFFFF, 0xFFFF, 0};
    for(uint8_t i = 0; i < (1 << (5 - 1))/2; i++)
    {
        uint32_t metric = q_abs_diff(COST_TABLE_0[i], s0)
                        + q_abs_diff(COST_TABLE_1[i], s1);
        uint32_t m0 = prevMetrics[i] + metric;
        uint32_t m1 = prevMetrics[i + (1 << (5 - 1))/2] + (0x1FFFE - metric);
        uint32_t m2 = prevMetrics[i] + (0x1FFFE - metric);
        uint32_t m3 = prevMetrics[i + (1 << (5 - 1))/2] + metric;
        uint8_t i0 = 2 * i;
        uint8_t i1 = i0 + 1;
        if(m0 >= m1)
        {
            viterbi_history[pos]|=(1<<i0);
            currMetrics[i0] = m1;
        }
        else
        {
            viterbi_history[pos]&=~(1<<i0);
            currMetrics[i0] = m0;
        }
        if(m2 >= m3)
        {
            viterbi_history[pos]|=(1<<i1);
            currMetrics[i1] = m3;
        }
        else
        {
            viterbi_history[pos]&=~(1<<i1);
            currMetrics[i1] = m2;
        }
    }
    uint32_t tmp[(1 << (5 - 1))];
    for(uint8_t i=0; i<(1 << (5 - 1)); i++)
    {
     tmp[i]=currMetrics[i];
 }
 for(uint8_t i=0; i<(1 << (5 - 1)); i++)
    {
     currMetrics[i]=prevMetrics[i];
     prevMetrics[i]=tmp[i];
 }
}
uint32_t viterbi_chainback(uint8_t* out, size_t pos, uint16_t len)
{
    uint8_t state = 0;
    size_t bitPos = len+4;
    memset(out, 0, (len-1)/8+1);
    while(pos > 0)
    {
        bitPos--;
        pos--;
        uint16_t bit = viterbi_history[pos]&((1<<(state>>4)));
        state >>= 1;
        if(bit)
        {
         state |= 0x80;
         out[bitPos/8]|=1<<(7-(bitPos%8));
  }
    }
    uint32_t cost = prevMetrics[0];
    for(size_t i = 0; i < (1 << (5 - 1)); i++)
    {
        uint32_t m = prevMetrics[i];
        if(m < cost) cost = m;
    }
    return cost;
}
void viterbi_reset(void)
{
 memset((uint8_t*)viterbi_history, 0, 2*244);
 memset((uint8_t*)currMetrics, 0, 4*(1 << (5 - 1)));
    memset((uint8_t*)prevMetrics, 0, 4*(1 << (5 - 1)));
    memset((uint8_t*)currMetricsData, 0, 4*(1 << (5 - 1)));
    memset((uint8_t*)prevMetricsData, 0, 4*(1 << (5 - 1)));
}
const int8_t symbol_map[4]={+1, +3, -1, -3};
const int8_t symbol_list[4]={-3, -1, +1, +3};
const float eot_symbols[8]={+3, +3, +3, +3, +3, +3, -3, +3};
const uint8_t puncture_pattern_1[61] = {
    1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,
      1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,
      1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,
      1,0,1,1,1,0,1,1,1,0,1,1
};
const uint8_t puncture_pattern_2[12]={1,1,1,1,1,1,1,1,1,1,1,0};
const uint8_t puncture_pattern_3[8]={1,1,1,1,1,1,1,0};
void conv_encode_stream_frame(uint8_t* out, const uint8_t* in, const uint16_t fn)
{
 uint8_t pp_len = sizeof(puncture_pattern_2);
 uint8_t p=0;
 uint16_t pb=0;
 uint8_t ud[144+4+4];
 memset(ud, 0, 144+4+4);
 for(uint8_t i=0; i<16; i++)
 {
  ud[4+i]=(fn>>(15-i))&1;
 }
 for(uint8_t i=0; i<16; i++)
 {
  for(uint8_t j=0; j<8; j++)
  {
   ud[4+16+i*8+j]=(in[i]>>(7-j))&1;
  }
 }
 for(uint8_t i=0; i<144+4; i++)
 {
  uint8_t G1=(ud[i+4] +ud[i+1]+ud[i+0])%2;
        uint8_t G2=(ud[i+4]+ud[i+3]+ud[i+2] +ud[i+0])%2;
  if(puncture_pattern_2[p])
  {
   out[pb]=G1;
   pb++;
  }
  p++;
  p%=pp_len;
  if(puncture_pattern_2[p])
  {
   out[pb]=G2;
   pb++;
  }
  p++;
  p%=pp_len;
 }
}
void conv_encode_packet_frame(uint8_t* out, const uint8_t* in)
{
 uint8_t pp_len = sizeof(puncture_pattern_3);
 uint8_t p=0;
 uint16_t pb=0;
 uint8_t ud[206+4+4];
 memset(ud, 0, 206+4+4);
 for(uint8_t i=0; i<26; i++)
 {
  for(uint8_t j=0; j<8; j++)
  {
            if(i<=24 || j<=5)
                ud[4+i*8+j]=(in[i]>>(7-j))&1;
  }
 }
 for(uint8_t i=0; i<206+4; i++)
 {
  uint8_t G1=(ud[i+4] +ud[i+1]+ud[i+0])%2;
        uint8_t G2=(ud[i+4]+ud[i+3]+ud[i+2] +ud[i+0])%2;
  if(puncture_pattern_3[p])
  {
   out[pb]=G1;
   pb++;
  }
  p++;
  p%=pp_len;
  if(puncture_pattern_3[p])
  {
   out[pb]=G2;
   pb++;
  }
  p++;
  p%=pp_len;
 }
}
void conv_encode_LSF(uint8_t* out, const lsf_t* in)
{
 uint8_t pp_len = sizeof(puncture_pattern_1);
 uint8_t p=0;
 uint16_t pb=0;
 uint8_t ud[240+4+4];
 memset(ud, 0, 240+4+4);
 for(uint8_t i=0; i<8; i++)
 {
  ud[4+i] =((in->dst[0])>>(7-i))&1;
  ud[4+i+8] =((in->dst[1])>>(7-i))&1;
  ud[4+i+16]=((in->dst[2])>>(7-i))&1;
  ud[4+i+24]=((in->dst[3])>>(7-i))&1;
  ud[4+i+32]=((in->dst[4])>>(7-i))&1;
  ud[4+i+40]=((in->dst[5])>>(7-i))&1;
 }
 for(uint8_t i=0; i<8; i++)
 {
  ud[4+i+48]=((in->src[0])>>(7-i))&1;
  ud[4+i+56]=((in->src[1])>>(7-i))&1;
  ud[4+i+64]=((in->src[2])>>(7-i))&1;
  ud[4+i+72]=((in->src[3])>>(7-i))&1;
  ud[4+i+80]=((in->src[4])>>(7-i))&1;
  ud[4+i+88]=((in->src[5])>>(7-i))&1;
 }
 for(uint8_t i=0; i<8; i++)
 {
  ud[4+i+96] =((in->type[0])>>(7-i))&1;
  ud[4+i+104]=((in->type[1])>>(7-i))&1;
 }
 for(uint8_t i=0; i<8; i++)
 {
  ud[4+i+112]=((in->meta[0])>>(7-i))&1;
  ud[4+i+120]=((in->meta[1])>>(7-i))&1;
  ud[4+i+128]=((in->meta[2])>>(7-i))&1;
  ud[4+i+136]=((in->meta[3])>>(7-i))&1;
  ud[4+i+144]=((in->meta[4])>>(7-i))&1;
  ud[4+i+152]=((in->meta[5])>>(7-i))&1;
  ud[4+i+160]=((in->meta[6])>>(7-i))&1;
  ud[4+i+168]=((in->meta[7])>>(7-i))&1;
  ud[4+i+176]=((in->meta[8])>>(7-i))&1;
  ud[4+i+184]=((in->meta[9])>>(7-i))&1;
  ud[4+i+192]=((in->meta[10])>>(7-i))&1;
  ud[4+i+200]=((in->meta[11])>>(7-i))&1;
  ud[4+i+208]=((in->meta[12])>>(7-i))&1;
  ud[4+i+216]=((in->meta[13])>>(7-i))&1;
 }
 for(uint8_t i=0; i<8; i++)
 {
  ud[4+i+224]=((in->crc[0])>>(7-i))&1;
  ud[4+i+232]=((in->crc[1])>>(7-i))&1;
 }
 for(uint8_t i=0; i<240+4; i++)
 {
  uint8_t G1=(ud[i+4] +ud[i+1]+ud[i+0])%2;
        uint8_t G2=(ud[i+4]+ud[i+3]+ud[i+2] +ud[i+0])%2;
  if(puncture_pattern_1[p])
  {
   out[pb]=G1;
   pb++;
  }
  p++;
  p%=pp_len;
  if(puncture_pattern_1[p])
  {
   out[pb]=G2;
   pb++;
  }
  p++;
  p%=pp_len;
 }
}
void send_preamble(float out[192], uint32_t *cnt, const pream_t type)
{
    if(type==PREAM_BERT)
    {
        for(uint16_t i=0; i<192/2; i++)
        {
            out[(*cnt)++]=-3.0;
            out[(*cnt)++]=+3.0;
        }
    }
    else
    {
        for(uint16_t i=0; i<192/2; i++)
        {
            out[(*cnt)++]=+3.0;
            out[(*cnt)++]=-3.0;
        }
    }
}
void send_syncword(float out[8], uint32_t *cnt, const uint16_t syncword)
{
    for(uint8_t i=0; i<8*2; i+=2)
    {
        out[(*cnt)++]=symbol_map[(syncword>>(14-i))&3];
    }
}
void send_data(float out[184], uint32_t *cnt, const uint8_t* in)
{
    for(uint16_t i=0; i<184; i++)
    {
        out[(*cnt)++]=symbol_map[in[2*i]*2+in[2*i+1]];
    }
}
void send_eot(float out[192], uint32_t *cnt)
{
    for(uint16_t i=0; i<192; i++)
    {
        out[(*cnt)++]=eot_symbols[i%8];
    }
}
void send_frame(float out[192], const uint8_t* data, const frame_t type, const lsf_t* lsf, const uint8_t lich_cnt, const uint16_t fn)
{
    uint8_t lich[6];
    uint8_t lich_encoded[12];
    uint8_t enc_bits[184*2];
    uint8_t rf_bits[184*2];
    uint32_t sym_cnt=0;
    if(type==FRAME_LSF)
    {
        send_syncword(out, &sym_cnt, SYNC_LSF);
        conv_encode_LSF(enc_bits, lsf);
    }
    else if(type==FRAME_STR)
    {
        send_syncword(out, &sym_cnt, SYNC_STR);
        extract_LICH(lich, lich_cnt, lsf);
        encode_LICH(lich_encoded, lich);
        unpack_LICH(enc_bits, lich_encoded);
        conv_encode_stream_frame(&enc_bits[96], data, fn);
    }
    else if(type==FRAME_PKT)
    {
        send_syncword(out, &sym_cnt, SYNC_PKT);
        conv_encode_packet_frame(enc_bits, data);
    }
    reorder_bits(rf_bits, enc_bits);
    randomize_bits(rf_bits);
    send_data(out, &sym_cnt, rf_bits);
}
const float rrc_taps_10[8*10+1]=
{
 -0.003195702904062073f, -0.002930279157647190f, -0.001940667871554463f,
 -0.000356087678023658f, 0.001547011339077758f, 0.003389554791179751f,
  0.004761898604225673f, 0.005310860846138910f, 0.004824746306020221f,
  0.003297923526848786f, 0.000958710871218619f, -0.001749908029791816f,
 -0.004238694106631223f, -0.005881783042101693f, -0.006150256456781309f,
 -0.004745376707651645f, -0.001704189656473565f, 0.002547854551539951f,
  0.007215575568844704f, 0.011231038205363532f, 0.013421952197060707f,
  0.012730475385624438f, 0.008449554307303753f, 0.000436744366018287f,
 -0.010735380379191660f, -0.023726883538258272f, -0.036498030780605324f,
 -0.046500883189991064f, -0.050979050575999614f, -0.047340680079891187f,
 -0.033554880492651755f, -0.008513823955725943f, 0.027696543159614194f,
  0.073664520037517042f, 0.126689053778116234f, 0.182990955139333916f,
  0.238080025892859704f, 0.287235637987091563f, 0.326040247765297220f,
  0.350895727088112619f, 0.359452932027607974f, 0.350895727088112619f,
  0.326040247765297220f, 0.287235637987091563f, 0.238080025892859704f,
  0.182990955139333916f, 0.126689053778116234f, 0.073664520037517042f,
  0.027696543159614194f, -0.008513823955725943f, -0.033554880492651755f,
 -0.047340680079891187f, -0.050979050575999614f, -0.046500883189991064f,
 -0.036498030780605324f, -0.023726883538258272f, -0.010735380379191660f,
  0.000436744366018287f, 0.008449554307303753f, 0.012730475385624438f,
  0.013421952197060707f, 0.011231038205363532f, 0.007215575568844704f,
  0.002547854551539951f, -0.001704189656473565f, -0.004745376707651645f,
 -0.006150256456781309f, -0.005881783042101693f, -0.004238694106631223f,
 -0.001749908029791816f, 0.000958710871218619f, 0.003297923526848786f,
  0.004824746306020221f, 0.005310860846138910f, 0.004761898604225673f,
  0.003389554791179751f, 0.001547011339077758f, -0.000356087678023658f,
 -0.001940667871554463f, -0.002930279157647190f, -0.003195702904062073f
};
const float rrc_taps_5[8*5+1]=
{
 -0.004519384154389f, -0.002744505321971f,
  0.002187793653660f, 0.006734308458208f,
  0.006823188093192f, 0.001355815246317f,
 -0.005994389201970f, -0.008697733303330f,
 -0.002410076268276f, 0.010204314627992f,
  0.018981413448435f, 0.011949415510291f,
 -0.015182045838927f, -0.051615756197679f,
 -0.072094910038768f, -0.047453533621088f,
  0.039168634270669f, 0.179164496628150f,
  0.336694345124862f, 0.461088271869920f,
  0.508340710642860f, 0.461088271869920f,
  0.336694345124862f, 0.179164496628150f,
  0.039168634270669f, -0.047453533621088f,
 -0.072094910038768f, -0.051615756197679f,
 -0.015182045838927f, 0.011949415510291f,
  0.018981413448435f, 0.010204314627992f,
 -0.002410076268276f, -0.008697733303330f,
 -0.005994389201970f, 0.001355815246317f,
  0.006823188093192f, 0.006734308458208f,
  0.002187793653660f, -0.002744505321971f,
 -0.004519384154389f
};
const uint16_t encode_matrix[12]=
{
    0x8eb, 0x93e, 0xa97, 0xdc6, 0x367, 0x6cd,
    0xd99, 0x3da, 0x7b4, 0xf68, 0x63b, 0xc75
};
const uint16_t decode_matrix[12]=
{
    0xc75, 0x49f, 0x93e, 0x6e3, 0xdc6, 0xf13,
    0xab9, 0x1ed, 0x3da, 0x7b4, 0xf68, 0xa4f
};
uint32_t golay24_encode(const uint16_t data)
{
    uint16_t checksum=0;
    for(uint8_t i=0; i<12; i++)
    {
        if(data&(1<<i))
        {
            checksum ^= encode_matrix[i];
        }
    }
    return ((uint32_t)data<<12) | checksum;
}
uint32_t s_popcount(const uint16_t* in, uint8_t siz)
{
 uint32_t tmp=0;
 for(uint8_t i=0; i<siz; i++)
  tmp+=in[i];
 return tmp;
}
void s_calc_checksum(uint16_t* out, const uint16_t* value)
{
    uint16_t checksum[12];
    uint16_t soft_em[12];
    for(uint8_t i=0; i<12; i++)
     checksum[i]=0;
    for(uint8_t i=0; i<12; i++)
    {
     int_to_soft(soft_em, encode_matrix[i], 12);
        if(value[i]>0x7FFF)
        {
            soft_XOR(checksum, checksum, soft_em, 12);
        }
    }
    memcpy((uint8_t*)out, (uint8_t*)checksum, 12*2);
}
uint32_t s_detect_errors(const uint16_t* codeword)
{
    uint16_t data[12];
    uint16_t parity[12];
    uint16_t cksum[12];
    uint16_t syndrome[12];
    uint32_t weight;
 memcpy((uint8_t*)data, (uint8_t*)&codeword[12], 2*12);
 memcpy((uint8_t*)parity, (uint8_t*)&codeword[0], 2*12);
 s_calc_checksum(cksum, data);
 soft_XOR(syndrome, parity, cksum, 12);
 weight=s_popcount(syndrome, 12);
    if(weight < 4*0xFFFE)
    {
        return soft_to_int(syndrome, 12);
    }
    for(uint8_t i = 0; i<12; i++)
    {
        uint16_t e = 1<<i;
        uint16_t coded_error = encode_matrix[i];
        uint16_t scoded_error[12];
        uint16_t sc[12];
        int_to_soft(scoded_error, coded_error, 12);
        soft_XOR(sc, syndrome, scoded_error, 12);
        weight=s_popcount(sc, 12);
        if(weight < 3*0xFFFE)
        {
         uint16_t s=soft_to_int(syndrome, 12);
            return (e << 12) | (s ^ coded_error);
        }
    }
    for(uint8_t i = 0; i<11; i++)
    {
     for(uint8_t j = i+1; j<12; j++)
     {
      uint16_t e = (1<<i) | (1<<j);
         uint16_t coded_error = encode_matrix[i]^encode_matrix[j];
         uint16_t scoded_error[12];
         uint16_t sc[12];
         int_to_soft(scoded_error, coded_error, 12);
         soft_XOR(sc, syndrome, scoded_error, 12);
         weight=s_popcount(sc, 12);
         if(weight < 2*0xFFFF)
         {
          uint16_t s=soft_to_int(syndrome, 12);
             return (e << 12) | (s ^ coded_error);
         }
  }
    }
    uint16_t inv_syndrome[12]={0,0,0,0,0,0,0,0,0,0,0,0};
    uint16_t dm[12];
    for(uint8_t i=0; i<12; i++)
    {
        if(syndrome[i] > 0x7FFF)
        {
         int_to_soft(dm, decode_matrix[i], 12);
         soft_XOR(inv_syndrome, inv_syndrome, dm, 12);
        }
    }
 weight=s_popcount(inv_syndrome, 12);
    if(weight < 4*0xFFFF)
    {
        return soft_to_int(inv_syndrome, 12) << 12;
    }
    for(uint8_t i=0; i<12; i++)
    {
        uint16_t e = 1<<i;
        uint16_t coding_error = decode_matrix[i];
        uint16_t ce[12];
        uint16_t tmp[12];
        int_to_soft(ce, coding_error, 12);
        soft_XOR(tmp, inv_syndrome, ce, 12);
        weight=s_popcount(tmp, 12);
        if(weight < 3*(0xFFFF+2))
        {
            return ((soft_to_int(inv_syndrome, 12) ^ coding_error) << 12) | e;
        }
    }
    return 0xFFFFFFFFUL;
}
uint16_t golay24_sdecode(const uint16_t codeword[24])
{
    uint16_t cw[24];
    for(uint8_t i=0; i<24; i++)
        cw[i]=codeword[23-i];
    uint32_t errors = s_detect_errors(cw);
    if(errors == 0xFFFFFFFF)
  return 0xFFFF;
    return (((soft_to_int(&cw[0], 16) | (soft_to_int(&cw[16], 8) << 16)) ^ errors) >> 12) & 0x0FFF;
}
void decode_LICH(uint8_t outp[6], const uint16_t inp[96])
{
    uint16_t tmp;
    memset(outp, 0, 6);
    tmp=golay24_sdecode(&inp[0]);
    outp[0]=(tmp>>4)&0xFF;
    outp[1]|=(tmp&0xF)<<4;
    tmp=golay24_sdecode(&inp[1*24]);
    outp[1]|=(tmp>>8)&0xF;
    outp[2]=tmp&0xFF;
    tmp=golay24_sdecode(&inp[2*24]);
    outp[3]=(tmp>>4)&0xFF;
    outp[4]|=(tmp&0xF)<<4;
    tmp=golay24_sdecode(&inp[3*24]);
    outp[4]|=(tmp>>8)&0xF;
    outp[5]=tmp&0xFF;
}
void encode_LICH(uint8_t outp[12], const uint8_t inp[6])
{
    uint32_t val;
    val=golay24_encode((inp[0]<<4)|(inp[1]>>4));
    outp[0]=(val>>16)&0xFF;
    outp[1]=(val>>8)&0xFF;
    outp[2]=(val>>0)&0xFF;
    val=golay24_encode(((inp[1]&0x0F)<<8)|inp[2]);
    outp[3]=(val>>16)&0xFF;
    outp[4]=(val>>8)&0xFF;
    outp[5]=(val>>0)&0xFF;
    val=golay24_encode((inp[3]<<4)|(inp[4]>>4));
    outp[6]=(val>>16)&0xFF;
    outp[7]=(val>>8)&0xFF;
    outp[8]=(val>>0)&0xFF;
    val=golay24_encode(((inp[4]&0x0F)<<8)|inp[5]);
    outp[9]=(val>>16)&0xFF;
    outp[10]=(val>>8)&0xFF;
    outp[11]=(val>>0)&0xFF;
}
uint16_t q_abs_diff(const uint16_t v1, const uint16_t v2)
{
    if(v2 > v1) return v2 - v1;
    return v1 - v2;
}
float eucl_norm(const float* in1, const int8_t* in2, const uint8_t n)
{
    float tmp = 0.0f;
    for(uint8_t i=0; i<n; i++)
    {
        tmp += (in1[i]-(float)in2[i])*(in1[i]-(float)in2[i]);
    }
    return sqrtf(tmp);
}
void int_to_soft(uint16_t* out, const uint16_t in, const uint8_t len)
{
 for(uint8_t i=0; i<len; i++)
 {
  (in>>i)&1 ? (out[i]=0xFFFF) : (out[i]=0);
 }
}
uint16_t soft_to_int(const uint16_t* in, const uint8_t len)
{
 uint16_t tmp=0;
 for(uint8_t i=0; i<len; i++)
 {
  if(in[i]>0x7FFFU)
   tmp|=(1<<i);
 }
 return tmp;
}
uint16_t add16(const uint16_t a, const uint16_t b)
{
 uint32_t r=(uint32_t)a+b;
 return r<=0xFFFFU ? r : 0xFFFFU;
}
uint16_t sub16(const uint16_t a, const uint16_t b)
{
 if(a>=b)
  return a-b;
 else
  return 0x0000U;
}
uint16_t div16(const uint16_t a, const uint16_t b)
{
 uint32_t aa=(uint32_t)a<<16;
 uint32_t r=aa/b;
 return r<=0xFFFFU ? r : 0xFFFFU;
}
uint16_t mul16(const uint16_t a, const uint16_t b)
{
 return (uint16_t)(((uint32_t)a*b)>>16);
}
uint16_t soft_bit_XOR(const uint16_t a, const uint16_t b)
{
 return add16(mul16(a, sub16(0xFFFF, b)), mul16(b, sub16(0xFFFF, a)));
}
uint16_t soft_bit_NOT(const uint16_t a)
{
 return 0xFFFFU-a;
}
void soft_XOR(uint16_t* out, const uint16_t* a, const uint16_t* b, const uint8_t len)
{
 for(uint8_t i=0; i<len; i++)
  out[i]=soft_bit_XOR(a[i], b[i]);
}
void decode_callsign_value(uint8_t *outp, const uint64_t inp)
{
    uint64_t encoded=inp;
    uint8_t start=0;
 if(encoded>=(262144000000000UL))
 {
        if(encoded==0xFFFFFFFFFFFF)
        {
            sprintf((char*)outp, "@ALL");
            return;
        }
        else if(encoded<=(268697600000000UL))
        {
            start=1;
            encoded-=(262144000000000UL);
            outp[0]='#';
        }
        else
        {
            return;
        }
 }
 uint8_t i=start;
 while(encoded>0)
 {
  outp[i]=" ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-/."[encoded%40];
  encoded/=40;
  i++;
 }
 outp[i]=0;
}
void decode_callsign_bytes(uint8_t *outp, const uint8_t inp[6])
{
 uint64_t encoded=0;
 for(uint8_t i=0; i<6; i++)
  encoded|=(uint64_t)inp[5-i]<<(8*i);
 decode_callsign_value(outp, encoded);
}
int8_t encode_callsign_value(uint64_t *out, const uint8_t *inp)
{
    if(strlen((const char*)inp)>9)
        return -1;
    const uint8_t charMap[40]=" ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-/.";
    uint64_t tmp=0;
    uint8_t start=0;
    if(strcmp((const char*)inp, "@ALL")==0)
    {
        *out=0xFFFFFFFFFFFF;
        return 0;
    }
    if(inp[0]=='#')
        start=1;
    for(int8_t i=strlen((const char*)inp)-1; i>=start; i--)
    {
        for(uint8_t j=0; j<40; j++)
        {
            if(inp[i]==charMap[j])
            {
                tmp=tmp*40+j;
                break;
            }
        }
    }
    if(start)
        tmp+=(262144000000000UL);
    *out=tmp;
    return 0;
}
int8_t encode_callsign_bytes(uint8_t out[6], const uint8_t *inp)
{
    uint64_t tmp=0;
    if(encode_callsign_value(&tmp, inp))
    {
        return -1;
    }
 for(uint8_t i=0; i<6; i++)
     out[5-i]=(tmp>>(8*i))&0xFF;
    return 0;
}
const uint16_t M17_CRC_POLY = 0x5935;
uint16_t CRC_M17(const uint8_t* in, const uint16_t len)
{
 uint32_t crc=0xFFFF;
 for(uint16_t i=0; i<len; i++)
 {
  crc^=in[i]<<8;
  for(uint8_t j=0; j<8; j++)
  {
   crc<<=1;
   if(crc&0x10000)
    crc=(crc^M17_CRC_POLY)&0xFFFF;
  }
 }
 return crc&(0xFFFF);
}
uint16_t LSF_CRC(const lsf_t* in)
{
    uint8_t d[28];
    memcpy(&d[0], in->dst, 6);
    memcpy(&d[6], in->src, 6);
    memcpy(&d[12], in->type, 2);
    memcpy(&d[14], in->meta, 14);
    return CRC_M17(d, 28);
}
void extract_LICH(uint8_t outp[6], const uint8_t cnt, const lsf_t* inp)
{
    switch(cnt)
    {
        case 0:
            outp[0]=inp->dst[0];
            outp[1]=inp->dst[1];
            outp[2]=inp->dst[2];
            outp[3]=inp->dst[3];
            outp[4]=inp->dst[4];
        break;
        case 1:
            outp[0]=inp->dst[5];
            outp[1]=inp->src[0];
            outp[2]=inp->src[1];
            outp[3]=inp->src[2];
            outp[4]=inp->src[3];
        break;
        case 2:
            outp[0]=inp->src[4];
            outp[1]=inp->src[5];
            outp[2]=inp->type[0];
            outp[3]=inp->type[1];
            outp[4]=inp->meta[0];
        break;
        case 3:
            outp[0]=inp->meta[1];
            outp[1]=inp->meta[2];
            outp[2]=inp->meta[3];
            outp[3]=inp->meta[4];
            outp[4]=inp->meta[5];
        break;
        case 4:
            outp[0]=inp->meta[6];
            outp[1]=inp->meta[7];
            outp[2]=inp->meta[8];
            outp[3]=inp->meta[9];
            outp[4]=inp->meta[10];
        break;
        case 5:
            outp[0]=inp->meta[11];
            outp[1]=inp->meta[12];
            outp[2]=inp->meta[13];
            outp[3]=inp->crc[0];
            outp[4]=inp->crc[1];
        break;
        default:
            ;
        break;
    }
    outp[5]=cnt<<5;
}
void unpack_LICH(uint8_t *out, const uint8_t in[12])
{
    for(uint8_t i=0; i<12; i++)
    {
        for(uint8_t j=0; j<8; j++)
            out[i*8+j]=(in[i]>>(7-j))&1;
    }
}
const uint16_t intrl_seq[184*2]=
{
 0, 137, 90, 227, 180, 317, 270, 39, 360, 129, 82, 219, 172, 309, 262, 31,
 352, 121, 74, 211, 164, 301, 254, 23, 344, 113, 66, 203, 156, 293, 246, 15,
 336, 105, 58, 195, 148, 285, 238, 7, 328, 97, 50, 187, 140, 277, 230, 367,
 320, 89, 42, 179, 132, 269, 222, 359, 312, 81, 34, 171, 124, 261, 214, 351,
 304, 73, 26, 163, 116, 253, 206, 343, 296, 65, 18, 155, 108, 245, 198, 335,
 288, 57, 10, 147, 100, 237, 190, 327, 280, 49, 2, 139, 92, 229, 182, 319,
 272, 41, 362, 131, 84, 221, 174, 311, 264, 33, 354, 123, 76, 213, 166, 303,
 256, 25, 346, 115, 68, 205, 158, 295, 248, 17, 338, 107, 60, 197, 150, 287,
 240, 9, 330, 99, 52, 189, 142, 279, 232, 1, 322, 91, 44, 181, 134, 271,
 224, 361, 314, 83, 36, 173, 126, 263, 216, 353, 306, 75, 28, 165, 118, 255,
 208, 345, 298, 67, 20, 157, 110, 247, 200, 337, 290, 59, 12, 149, 102, 239,
 192, 329, 282, 51, 4, 141, 94, 231, 184, 321, 274, 43, 364, 133, 86, 223,
 176, 313, 266, 35, 356, 125, 78, 215, 168, 305, 258, 27, 348, 117, 70, 207,
 160, 297, 250, 19, 340, 109, 62, 199, 152, 289, 242, 11, 332, 101, 54, 191,
 144, 281, 234, 3, 324, 93, 46, 183, 136, 273, 226, 363, 316, 85, 38, 175,
 128, 265, 218, 355, 308, 77, 30, 167, 120, 257, 210, 347, 300, 69, 22, 159,
 112, 249, 202, 339, 292, 61, 14, 151, 104, 241, 194, 331, 284, 53, 6, 143,
 96, 233, 186, 323, 276, 45, 366, 135, 88, 225, 178, 315, 268, 37, 358, 127,
 80, 217, 170, 307, 260, 29, 350, 119, 72, 209, 162, 299, 252, 21, 342, 111,
 64, 201, 154, 291, 244, 13, 334, 103, 56, 193, 146, 283, 236, 5, 326, 95,
 48, 185, 138, 275, 228, 365, 318, 87, 40, 177, 130, 267, 220, 357, 310, 79,
 32, 169, 122, 259, 212, 349, 302, 71, 24, 161, 114, 251, 204, 341, 294, 63,
 16, 153, 106, 243, 196, 333, 286, 55, 8, 145, 98, 235, 188, 325, 278, 47
};
void reorder_bits(uint8_t outp[184*2], const uint8_t inp[184*2])
{
 for(uint16_t i=0; i<184*2; i++)
        outp[i]=inp[intrl_seq[i]];
}
void reorder_soft_bits(uint16_t outp[184*2], const uint16_t inp[184*2])
{
 for(uint16_t i=0; i<184*2; i++)
        outp[i]=inp[intrl_seq[i]];
}
const uint8_t rand_seq[46]=
{
    0xD6, 0xB5, 0xE2, 0x30, 0x82, 0xFF, 0x84, 0x62, 0xBA, 0x4E, 0x96, 0x90, 0xD8, 0x98, 0xDD, 0x5D, 0x0C, 0xC8, 0x52, 0x43, 0x91, 0x1D, 0xF8,
    0x6E, 0x68, 0x2F, 0x35, 0xDA, 0x14, 0xEA, 0xCD, 0x76, 0x19, 0x8D, 0xD5, 0x80, 0xD1, 0x33, 0x87, 0x13, 0x57, 0x18, 0x2D, 0x29, 0x78, 0xC3
};
void randomize_bits(uint8_t inp[184*2])
{
    for(uint16_t i=0; i<184*2; i++)
    {
        if((rand_seq[i/8]>>(7-(i%8)))&1)
        {
            if(inp[i])
                inp[i]=0;
            else
                inp[i]=1;
        }
    }
}
void randomize_soft_bits(uint16_t inp[184*2])
{
    for(uint16_t i=0; i<184*2; i++)
    {
        if((rand_seq[i/8]>>(7-(i%8)))&1)
        {
            inp[i]=soft_bit_NOT(inp[i]);
        }
    }
}
void slice_symbols(uint16_t out[2*184], const float inp[184])
{
    for(uint8_t i=0; i<184; i++)
    {
        if(inp[i]>=symbol_list[3])
        {
            out[i*2+1]=0xFFFF;
        }
        else if(inp[i]>=symbol_list[2])
        {
            out[i*2+1]=-(float)0xFFFF/(symbol_list[3]-symbol_list[2])*symbol_list[2]+inp[i]*(float)0xFFFF/(symbol_list[3]-symbol_list[2]);
        }
        else if(inp[i]>=symbol_list[1])
        {
            out[i*2+1]=0x0000;
        }
        else if(inp[i]>=symbol_list[0])
        {
            out[i*2+1]=(float)0xFFFF/(symbol_list[1]-symbol_list[0])*symbol_list[1]-inp[i]*(float)0xFFFF/(symbol_list[1]-symbol_list[0]);
        }
        else
        {
            out[i*2+1]=0xFFFF;
        }
        if(inp[i]>=symbol_list[2])
        {
            out[i*2]=0x0000;
        }
        else if(inp[i]>=symbol_list[1])
        {
            out[i*2]=0x7FFF-inp[i]*(float)0xFFFF/(symbol_list[2]-symbol_list[1]);
        }
        else
        {
            out[i*2]=0xFFFF;
        }
    }
}
const uint16_t SYNC_LSF = 0x55F7;
const uint16_t SYNC_STR = 0xFF5D;
const uint16_t SYNC_PKT = 0x75FF;
const uint16_t SYNC_BER = 0xDF55;
const uint16_t EOT_MRKR = 0x555D;

