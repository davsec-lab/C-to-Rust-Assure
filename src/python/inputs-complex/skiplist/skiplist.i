extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
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
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
typedef float float_t;
typedef double double_t;
enum
  {
    FP_INT_UPWARD =
      0,
    FP_INT_DOWNWARD =
      1,
    FP_INT_TOWARDZERO =
      2,
    FP_INT_TONEARESTFROMZERO =
      3,
    FP_INT_TONEAREST =
      4,
  };
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
 extern void sincos (double __x, double *__sinx, double *__cosx) __attribute__ ((__nothrow__ )); extern void __sincos (double __x, double *__sinx, double *__cosx) __attribute__ ((__nothrow__ ));
 extern double acosh (double __x) __attribute__ ((__nothrow__ )); extern double __acosh (double __x) __attribute__ ((__nothrow__ ));
 extern double asinh (double __x) __attribute__ ((__nothrow__ )); extern double __asinh (double __x) __attribute__ ((__nothrow__ ));
 extern double atanh (double __x) __attribute__ ((__nothrow__ )); extern double __atanh (double __x) __attribute__ ((__nothrow__ ));
 extern double exp (double __x) __attribute__ ((__nothrow__ )); extern double __exp (double __x) __attribute__ ((__nothrow__ ));
extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ )); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern double log (double __x) __attribute__ ((__nothrow__ )); extern double __log (double __x) __attribute__ ((__nothrow__ ));
 extern double log10 (double __x) __attribute__ ((__nothrow__ )); extern double __log10 (double __x) __attribute__ ((__nothrow__ ));
extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ )); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern double exp10 (double __x) __attribute__ ((__nothrow__ )); extern double __exp10 (double __x) __attribute__ ((__nothrow__ ));
extern double exp2m1 (double __x) __attribute__ ((__nothrow__ )); extern double __exp2m1 (double __x) __attribute__ ((__nothrow__ ));
extern double exp10m1 (double __x) __attribute__ ((__nothrow__ )); extern double __exp10m1 (double __x) __attribute__ ((__nothrow__ ));
extern double log2p1 (double __x) __attribute__ ((__nothrow__ )); extern double __log2p1 (double __x) __attribute__ ((__nothrow__ ));
extern double log10p1 (double __x) __attribute__ ((__nothrow__ )); extern double __log10p1 (double __x) __attribute__ ((__nothrow__ ));
extern double logp1 (double __x) __attribute__ ((__nothrow__ )); extern double __logp1 (double __x) __attribute__ ((__nothrow__ ));
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
extern double nextdown (double __x) __attribute__ ((__nothrow__ )); extern double __nextdown (double __x) __attribute__ ((__nothrow__ ));
extern double nextup (double __x) __attribute__ ((__nothrow__ )); extern double __nextup (double __x) __attribute__ ((__nothrow__ ));
extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ ));
extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ )); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogb (double __x) __attribute__ ((__nothrow__ )); extern int __ilogb (double __x) __attribute__ ((__nothrow__ ));
extern long int llogb (double __x) __attribute__ ((__nothrow__ )); extern long int __llogb (double __x) __attribute__ ((__nothrow__ ));
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
extern double roundeven (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __roundeven (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern __intmax_t fromfp (double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfp (double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfp (double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfp (double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __intmax_t fromfpx (double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpx (double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpx (double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpx (double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern int canonicalize (double *__cx, const double *__x) __attribute__ ((__nothrow__ ));
extern double fmaxmag (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmaxmag (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fminmag (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fminmag (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fmaximum (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmaximum (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fminimum (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fminimum (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fmaximum_num (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmaximum_num (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fminimum_num (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fminimum_num (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fmaximum_mag (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmaximum_mag (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fminimum_mag (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fminimum_mag (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fmaximum_mag_num (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmaximum_mag_num (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern double fminimum_mag_num (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fminimum_mag_num (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int totalorder (const double *__x, const double *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern int totalordermag (const double *__x, const double *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern double getpayload (const double *__x) __attribute__ ((__nothrow__ )); extern double __getpayload (const double *__x) __attribute__ ((__nothrow__ ));
extern int setpayload (double *__x, double __payload) __attribute__ ((__nothrow__ ));
extern int setpayloadsig (double *__x, double __payload) __attribute__ ((__nothrow__ ));
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
 extern void sincosf (float __x, float *__sinx, float *__cosx) __attribute__ ((__nothrow__ )); extern void __sincosf (float __x, float *__sinx, float *__cosx) __attribute__ ((__nothrow__ ));
 extern float acoshf (float __x) __attribute__ ((__nothrow__ )); extern float __acoshf (float __x) __attribute__ ((__nothrow__ ));
 extern float asinhf (float __x) __attribute__ ((__nothrow__ )); extern float __asinhf (float __x) __attribute__ ((__nothrow__ ));
 extern float atanhf (float __x) __attribute__ ((__nothrow__ )); extern float __atanhf (float __x) __attribute__ ((__nothrow__ ));
 extern float expf (float __x) __attribute__ ((__nothrow__ )); extern float __expf (float __x) __attribute__ ((__nothrow__ ));
extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ )); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ )); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern float logf (float __x) __attribute__ ((__nothrow__ )); extern float __logf (float __x) __attribute__ ((__nothrow__ ));
 extern float log10f (float __x) __attribute__ ((__nothrow__ )); extern float __log10f (float __x) __attribute__ ((__nothrow__ ));
extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ )); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern float exp10f (float __x) __attribute__ ((__nothrow__ )); extern float __exp10f (float __x) __attribute__ ((__nothrow__ ));
extern float exp2m1f (float __x) __attribute__ ((__nothrow__ )); extern float __exp2m1f (float __x) __attribute__ ((__nothrow__ ));
extern float exp10m1f (float __x) __attribute__ ((__nothrow__ )); extern float __exp10m1f (float __x) __attribute__ ((__nothrow__ ));
extern float log2p1f (float __x) __attribute__ ((__nothrow__ )); extern float __log2p1f (float __x) __attribute__ ((__nothrow__ ));
extern float log10p1f (float __x) __attribute__ ((__nothrow__ )); extern float __log10p1f (float __x) __attribute__ ((__nothrow__ ));
extern float logp1f (float __x) __attribute__ ((__nothrow__ )); extern float __logp1f (float __x) __attribute__ ((__nothrow__ ));
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
extern float nextdownf (float __x) __attribute__ ((__nothrow__ )); extern float __nextdownf (float __x) __attribute__ ((__nothrow__ ));
extern float nextupf (float __x) __attribute__ ((__nothrow__ )); extern float __nextupf (float __x) __attribute__ ((__nothrow__ ));
extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ ));
extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ )); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogbf (float __x) __attribute__ ((__nothrow__ )); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ ));
extern long int llogbf (float __x) __attribute__ ((__nothrow__ )); extern long int __llogbf (float __x) __attribute__ ((__nothrow__ ));
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
extern float roundevenf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __roundevenf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern __intmax_t fromfpf (float __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpf (float __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpf (float __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpf (float __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __intmax_t fromfpxf (float __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpxf (float __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpxf (float __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpxf (float __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern int canonicalizef (float *__cx, const float *__x) __attribute__ ((__nothrow__ ));
extern float fmaxmagf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fmaxmagf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fminmagf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fminmagf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fmaximumf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fmaximumf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fminimumf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fminimumf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fmaximum_numf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fmaximum_numf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fminimum_numf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fminimum_numf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fmaximum_magf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fmaximum_magf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fminimum_magf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fminimum_magf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fmaximum_mag_numf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fmaximum_mag_numf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern float fminimum_mag_numf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fminimum_mag_numf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int totalorderf (const float *__x, const float *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern int totalordermagf (const float *__x, const float *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern float getpayloadf (const float *__x) __attribute__ ((__nothrow__ )); extern float __getpayloadf (const float *__x) __attribute__ ((__nothrow__ ));
extern int setpayloadf (float *__x, float __payload) __attribute__ ((__nothrow__ ));
extern int setpayloadsigf (float *__x, float __payload) __attribute__ ((__nothrow__ ));
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
 extern void sincosl (long double __x, long double *__sinx, long double *__cosx) __attribute__ ((__nothrow__ )); extern void __sincosl (long double __x, long double *__sinx, long double *__cosx) __attribute__ ((__nothrow__ ));
 extern long double acoshl (long double __x) __attribute__ ((__nothrow__ )); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double asinhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double atanhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double expl (long double __x) __attribute__ ((__nothrow__ )); extern long double __expl (long double __x) __attribute__ ((__nothrow__ ));
extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ )); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern long double logl (long double __x) __attribute__ ((__nothrow__ )); extern long double __logl (long double __x) __attribute__ ((__nothrow__ ));
 extern long double log10l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ ));
extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ )); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern long double exp10l (long double __x) __attribute__ ((__nothrow__ )); extern long double __exp10l (long double __x) __attribute__ ((__nothrow__ ));
extern long double exp2m1l (long double __x) __attribute__ ((__nothrow__ )); extern long double __exp2m1l (long double __x) __attribute__ ((__nothrow__ ));
extern long double exp10m1l (long double __x) __attribute__ ((__nothrow__ )); extern long double __exp10m1l (long double __x) __attribute__ ((__nothrow__ ));
extern long double log2p1l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log2p1l (long double __x) __attribute__ ((__nothrow__ ));
extern long double log10p1l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log10p1l (long double __x) __attribute__ ((__nothrow__ ));
extern long double logp1l (long double __x) __attribute__ ((__nothrow__ )); extern long double __logp1l (long double __x) __attribute__ ((__nothrow__ ));
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
extern long double nextdownl (long double __x) __attribute__ ((__nothrow__ )); extern long double __nextdownl (long double __x) __attribute__ ((__nothrow__ ));
extern long double nextupl (long double __x) __attribute__ ((__nothrow__ )); extern long double __nextupl (long double __x) __attribute__ ((__nothrow__ ));
extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ )); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogbl (long double __x) __attribute__ ((__nothrow__ )); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ ));
extern long int llogbl (long double __x) __attribute__ ((__nothrow__ )); extern long int __llogbl (long double __x) __attribute__ ((__nothrow__ ));
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
extern long double roundevenl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __roundevenl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern __intmax_t fromfpl (long double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpl (long double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpl (long double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpl (long double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __intmax_t fromfpxl (long double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpxl (long double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpxl (long double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpxl (long double __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern int canonicalizel (long double *__cx, const long double *__x) __attribute__ ((__nothrow__ ));
extern long double fmaxmagl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fmaxmagl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fminmagl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fminmagl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fmaximuml (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fmaximuml (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fminimuml (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fminimuml (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fmaximum_numl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fmaximum_numl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fminimum_numl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fminimum_numl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fmaximum_magl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fmaximum_magl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fminimum_magl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fminimum_magl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fmaximum_mag_numl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fmaximum_mag_numl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern long double fminimum_mag_numl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fminimum_mag_numl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int totalorderl (const long double *__x, const long double *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern int totalordermagl (const long double *__x, const long double *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern long double getpayloadl (const long double *__x) __attribute__ ((__nothrow__ )); extern long double __getpayloadl (const long double *__x) __attribute__ ((__nothrow__ ));
extern int setpayloadl (long double *__x, long double __payload) __attribute__ ((__nothrow__ ));
extern int setpayloadsigl (long double *__x, long double __payload) __attribute__ ((__nothrow__ ));
extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ )); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ ));
 extern _Float32 acosf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __acosf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 asinf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __asinf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 atanf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __atanf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 atan2f32 (_Float32 __y, _Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __atan2f32 (_Float32 __y, _Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 cosf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __cosf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 sinf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __sinf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 tanf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __tanf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 coshf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __coshf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 sinhf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __sinhf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 tanhf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __tanhf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern void sincosf32 (_Float32 __x, _Float32 *__sinx, _Float32 *__cosx) __attribute__ ((__nothrow__ )); extern void __sincosf32 (_Float32 __x, _Float32 *__sinx, _Float32 *__cosx) __attribute__ ((__nothrow__ ));
 extern _Float32 acoshf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __acoshf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 asinhf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __asinhf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 atanhf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __atanhf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 expf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __expf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 frexpf32 (_Float32 __x, int *__exponent) __attribute__ ((__nothrow__ )); extern _Float32 __frexpf32 (_Float32 __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern _Float32 ldexpf32 (_Float32 __x, int __exponent) __attribute__ ((__nothrow__ )); extern _Float32 __ldexpf32 (_Float32 __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern _Float32 logf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __logf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 log10f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __log10f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 modff32 (_Float32 __x, _Float32 *__iptr) __attribute__ ((__nothrow__ )); extern _Float32 __modff32 (_Float32 __x, _Float32 *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern _Float32 exp10f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __exp10f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 exp2m1f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __exp2m1f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 exp10m1f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __exp10m1f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 log2p1f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __log2p1f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 log10p1f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __log10p1f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 logp1f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __logp1f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 expm1f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __expm1f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 log1pf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __log1pf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 logbf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __logbf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 exp2f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __exp2f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 log2f32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __log2f32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 powf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )); extern _Float32 __powf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ ));
extern _Float32 sqrtf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __sqrtf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
 extern _Float32 hypotf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )); extern _Float32 __hypotf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ ));
 extern _Float32 cbrtf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __cbrtf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 ceilf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __ceilf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fabsf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fabsf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 floorf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __floorf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fmodf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )); extern _Float32 __fmodf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ ));
extern _Float32 copysignf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __copysignf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 nanf32 (const char *__tagb) __attribute__ ((__nothrow__ )); extern _Float32 __nanf32 (const char *__tagb) __attribute__ ((__nothrow__ ));
extern _Float32 j0f32 (_Float32) __attribute__ ((__nothrow__ )); extern _Float32 __j0f32 (_Float32) __attribute__ ((__nothrow__ ));
extern _Float32 j1f32 (_Float32) __attribute__ ((__nothrow__ )); extern _Float32 __j1f32 (_Float32) __attribute__ ((__nothrow__ ));
extern _Float32 jnf32 (int, _Float32) __attribute__ ((__nothrow__ )); extern _Float32 __jnf32 (int, _Float32) __attribute__ ((__nothrow__ ));
extern _Float32 y0f32 (_Float32) __attribute__ ((__nothrow__ )); extern _Float32 __y0f32 (_Float32) __attribute__ ((__nothrow__ ));
extern _Float32 y1f32 (_Float32) __attribute__ ((__nothrow__ )); extern _Float32 __y1f32 (_Float32) __attribute__ ((__nothrow__ ));
extern _Float32 ynf32 (int, _Float32) __attribute__ ((__nothrow__ )); extern _Float32 __ynf32 (int, _Float32) __attribute__ ((__nothrow__ ));
 extern _Float32 erff32 (_Float32) __attribute__ ((__nothrow__ )); extern _Float32 __erff32 (_Float32) __attribute__ ((__nothrow__ ));
 extern _Float32 erfcf32 (_Float32) __attribute__ ((__nothrow__ )); extern _Float32 __erfcf32 (_Float32) __attribute__ ((__nothrow__ ));
extern _Float32 lgammaf32 (_Float32) __attribute__ ((__nothrow__ )); extern _Float32 __lgammaf32 (_Float32) __attribute__ ((__nothrow__ ));
extern _Float32 tgammaf32 (_Float32) __attribute__ ((__nothrow__ )); extern _Float32 __tgammaf32 (_Float32) __attribute__ ((__nothrow__ ));
extern _Float32 lgammaf32_r (_Float32, int *__signgamp) __attribute__ ((__nothrow__ )); extern _Float32 __lgammaf32_r (_Float32, int *__signgamp) __attribute__ ((__nothrow__ ));
extern _Float32 rintf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __rintf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 nextafterf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )); extern _Float32 __nextafterf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ ));
extern _Float32 nextdownf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __nextdownf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 nextupf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __nextupf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 remainderf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )); extern _Float32 __remainderf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ ));
extern _Float32 scalbnf32 (_Float32 __x, int __n) __attribute__ ((__nothrow__ )); extern _Float32 __scalbnf32 (_Float32 __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogbf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern int __ilogbf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern long int llogbf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern long int __llogbf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 scalblnf32 (_Float32 __x, long int __n) __attribute__ ((__nothrow__ )); extern _Float32 __scalblnf32 (_Float32 __x, long int __n) __attribute__ ((__nothrow__ ));
extern _Float32 nearbyintf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern _Float32 __nearbyintf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 roundf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __roundf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 truncf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __truncf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 remquof32 (_Float32 __x, _Float32 __y, int *__quo) __attribute__ ((__nothrow__ )); extern _Float32 __remquof32 (_Float32 __x, _Float32 __y, int *__quo) __attribute__ ((__nothrow__ ));
extern long int lrintf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern long int __lrintf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrintf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern long long int __llrintf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern long int lroundf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern long int __lroundf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llroundf32 (_Float32 __x) __attribute__ ((__nothrow__ )); extern long long int __llroundf32 (_Float32 __x) __attribute__ ((__nothrow__ ));
extern _Float32 fdimf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )); extern _Float32 __fdimf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ ));
extern _Float32 fmaxf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fmaxf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fminf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fminf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fmaf32 (_Float32 __x, _Float32 __y, _Float32 __z) __attribute__ ((__nothrow__ )); extern _Float32 __fmaf32 (_Float32 __x, _Float32 __y, _Float32 __z) __attribute__ ((__nothrow__ ));
extern _Float32 roundevenf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __roundevenf32 (_Float32 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern __intmax_t fromfpf32 (_Float32 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpf32 (_Float32 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpf32 (_Float32 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpf32 (_Float32 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __intmax_t fromfpxf32 (_Float32 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpxf32 (_Float32 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpxf32 (_Float32 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpxf32 (_Float32 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern int canonicalizef32 (_Float32 *__cx, const _Float32 *__x) __attribute__ ((__nothrow__ ));
extern _Float32 fmaxmagf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fmaxmagf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fminmagf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fminmagf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fmaximumf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fmaximumf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fminimumf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fminimumf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fmaximum_numf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fmaximum_numf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fminimum_numf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fminimum_numf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fmaximum_magf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fmaximum_magf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fminimum_magf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fminimum_magf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fmaximum_mag_numf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fmaximum_mag_numf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32 fminimum_mag_numf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32 __fminimum_mag_numf32 (_Float32 __x, _Float32 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int totalorderf32 (const _Float32 *__x, const _Float32 *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern int totalordermagf32 (const _Float32 *__x, const _Float32 *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern _Float32 getpayloadf32 (const _Float32 *__x) __attribute__ ((__nothrow__ )); extern _Float32 __getpayloadf32 (const _Float32 *__x) __attribute__ ((__nothrow__ ));
extern int setpayloadf32 (_Float32 *__x, _Float32 __payload) __attribute__ ((__nothrow__ ));
extern int setpayloadsigf32 (_Float32 *__x, _Float32 __payload) __attribute__ ((__nothrow__ ));
 extern _Float64 acosf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __acosf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 asinf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __asinf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 atanf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __atanf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 atan2f64 (_Float64 __y, _Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __atan2f64 (_Float64 __y, _Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 cosf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __cosf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 sinf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __sinf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 tanf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __tanf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 coshf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __coshf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 sinhf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __sinhf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 tanhf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __tanhf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern void sincosf64 (_Float64 __x, _Float64 *__sinx, _Float64 *__cosx) __attribute__ ((__nothrow__ )); extern void __sincosf64 (_Float64 __x, _Float64 *__sinx, _Float64 *__cosx) __attribute__ ((__nothrow__ ));
 extern _Float64 acoshf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __acoshf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 asinhf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __asinhf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 atanhf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __atanhf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 expf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __expf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 frexpf64 (_Float64 __x, int *__exponent) __attribute__ ((__nothrow__ )); extern _Float64 __frexpf64 (_Float64 __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern _Float64 ldexpf64 (_Float64 __x, int __exponent) __attribute__ ((__nothrow__ )); extern _Float64 __ldexpf64 (_Float64 __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern _Float64 logf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __logf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 log10f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __log10f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 modff64 (_Float64 __x, _Float64 *__iptr) __attribute__ ((__nothrow__ )); extern _Float64 __modff64 (_Float64 __x, _Float64 *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern _Float64 exp10f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __exp10f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 exp2m1f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __exp2m1f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 exp10m1f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __exp10m1f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 log2p1f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __log2p1f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 log10p1f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __log10p1f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 logp1f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __logp1f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 expm1f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __expm1f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 log1pf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __log1pf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 logbf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __logbf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 exp2f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __exp2f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 log2f64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __log2f64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 powf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )); extern _Float64 __powf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float64 sqrtf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __sqrtf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
 extern _Float64 hypotf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )); extern _Float64 __hypotf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
 extern _Float64 cbrtf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __cbrtf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 ceilf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __ceilf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fabsf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fabsf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 floorf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __floorf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fmodf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )); extern _Float64 __fmodf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float64 copysignf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __copysignf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 nanf64 (const char *__tagb) __attribute__ ((__nothrow__ )); extern _Float64 __nanf64 (const char *__tagb) __attribute__ ((__nothrow__ ));
extern _Float64 j0f64 (_Float64) __attribute__ ((__nothrow__ )); extern _Float64 __j0f64 (_Float64) __attribute__ ((__nothrow__ ));
extern _Float64 j1f64 (_Float64) __attribute__ ((__nothrow__ )); extern _Float64 __j1f64 (_Float64) __attribute__ ((__nothrow__ ));
extern _Float64 jnf64 (int, _Float64) __attribute__ ((__nothrow__ )); extern _Float64 __jnf64 (int, _Float64) __attribute__ ((__nothrow__ ));
extern _Float64 y0f64 (_Float64) __attribute__ ((__nothrow__ )); extern _Float64 __y0f64 (_Float64) __attribute__ ((__nothrow__ ));
extern _Float64 y1f64 (_Float64) __attribute__ ((__nothrow__ )); extern _Float64 __y1f64 (_Float64) __attribute__ ((__nothrow__ ));
extern _Float64 ynf64 (int, _Float64) __attribute__ ((__nothrow__ )); extern _Float64 __ynf64 (int, _Float64) __attribute__ ((__nothrow__ ));
 extern _Float64 erff64 (_Float64) __attribute__ ((__nothrow__ )); extern _Float64 __erff64 (_Float64) __attribute__ ((__nothrow__ ));
 extern _Float64 erfcf64 (_Float64) __attribute__ ((__nothrow__ )); extern _Float64 __erfcf64 (_Float64) __attribute__ ((__nothrow__ ));
extern _Float64 lgammaf64 (_Float64) __attribute__ ((__nothrow__ )); extern _Float64 __lgammaf64 (_Float64) __attribute__ ((__nothrow__ ));
extern _Float64 tgammaf64 (_Float64) __attribute__ ((__nothrow__ )); extern _Float64 __tgammaf64 (_Float64) __attribute__ ((__nothrow__ ));
extern _Float64 lgammaf64_r (_Float64, int *__signgamp) __attribute__ ((__nothrow__ )); extern _Float64 __lgammaf64_r (_Float64, int *__signgamp) __attribute__ ((__nothrow__ ));
extern _Float64 rintf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __rintf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 nextafterf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )); extern _Float64 __nextafterf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float64 nextdownf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __nextdownf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 nextupf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __nextupf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 remainderf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )); extern _Float64 __remainderf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float64 scalbnf64 (_Float64 __x, int __n) __attribute__ ((__nothrow__ )); extern _Float64 __scalbnf64 (_Float64 __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogbf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern int __ilogbf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern long int llogbf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern long int __llogbf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 scalblnf64 (_Float64 __x, long int __n) __attribute__ ((__nothrow__ )); extern _Float64 __scalblnf64 (_Float64 __x, long int __n) __attribute__ ((__nothrow__ ));
extern _Float64 nearbyintf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern _Float64 __nearbyintf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 roundf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __roundf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 truncf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __truncf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 remquof64 (_Float64 __x, _Float64 __y, int *__quo) __attribute__ ((__nothrow__ )); extern _Float64 __remquof64 (_Float64 __x, _Float64 __y, int *__quo) __attribute__ ((__nothrow__ ));
extern long int lrintf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern long int __lrintf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrintf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern long long int __llrintf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern long int lroundf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern long int __lroundf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llroundf64 (_Float64 __x) __attribute__ ((__nothrow__ )); extern long long int __llroundf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float64 fdimf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )); extern _Float64 __fdimf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float64 fmaxf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fmaxf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fminf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fminf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) __attribute__ ((__nothrow__ )); extern _Float64 __fmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) __attribute__ ((__nothrow__ ));
extern _Float64 roundevenf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __roundevenf64 (_Float64 __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern __intmax_t fromfpf64 (_Float64 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpf64 (_Float64 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpf64 (_Float64 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpf64 (_Float64 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __intmax_t fromfpxf64 (_Float64 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpxf64 (_Float64 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpxf64 (_Float64 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpxf64 (_Float64 __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern int canonicalizef64 (_Float64 *__cx, const _Float64 *__x) __attribute__ ((__nothrow__ ));
extern _Float64 fmaxmagf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fmaxmagf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fminmagf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fminmagf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fmaximumf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fmaximumf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fminimumf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fminimumf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fmaximum_numf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fmaximum_numf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fminimum_numf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fminimum_numf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fmaximum_magf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fmaximum_magf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fminimum_magf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fminimum_magf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fmaximum_mag_numf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fmaximum_mag_numf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64 fminimum_mag_numf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64 __fminimum_mag_numf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int totalorderf64 (const _Float64 *__x, const _Float64 *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern int totalordermagf64 (const _Float64 *__x, const _Float64 *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern _Float64 getpayloadf64 (const _Float64 *__x) __attribute__ ((__nothrow__ )); extern _Float64 __getpayloadf64 (const _Float64 *__x) __attribute__ ((__nothrow__ ));
extern int setpayloadf64 (_Float64 *__x, _Float64 __payload) __attribute__ ((__nothrow__ ));
extern int setpayloadsigf64 (_Float64 *__x, _Float64 __payload) __attribute__ ((__nothrow__ ));
 extern _Float32x acosf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __acosf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x asinf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __asinf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x atanf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __atanf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x atan2f32x (_Float32x __y, _Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __atan2f32x (_Float32x __y, _Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x cosf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __cosf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x sinf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __sinf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x tanf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __tanf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x coshf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __coshf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x sinhf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __sinhf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x tanhf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __tanhf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern void sincosf32x (_Float32x __x, _Float32x *__sinx, _Float32x *__cosx) __attribute__ ((__nothrow__ )); extern void __sincosf32x (_Float32x __x, _Float32x *__sinx, _Float32x *__cosx) __attribute__ ((__nothrow__ ));
 extern _Float32x acoshf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __acoshf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x asinhf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __asinhf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x atanhf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __atanhf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x expf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __expf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x frexpf32x (_Float32x __x, int *__exponent) __attribute__ ((__nothrow__ )); extern _Float32x __frexpf32x (_Float32x __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern _Float32x ldexpf32x (_Float32x __x, int __exponent) __attribute__ ((__nothrow__ )); extern _Float32x __ldexpf32x (_Float32x __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern _Float32x logf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __logf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x log10f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __log10f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x modff32x (_Float32x __x, _Float32x *__iptr) __attribute__ ((__nothrow__ )); extern _Float32x __modff32x (_Float32x __x, _Float32x *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern _Float32x exp10f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __exp10f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x exp2m1f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __exp2m1f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x exp10m1f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __exp10m1f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x log2p1f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __log2p1f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x log10p1f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __log10p1f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x logp1f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __logp1f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x expm1f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __expm1f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x log1pf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __log1pf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x logbf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __logbf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x exp2f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __exp2f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x log2f32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __log2f32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x powf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )); extern _Float32x __powf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
extern _Float32x sqrtf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __sqrtf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
 extern _Float32x hypotf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )); extern _Float32x __hypotf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
 extern _Float32x cbrtf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __cbrtf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x ceilf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __ceilf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fabsf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fabsf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x floorf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __floorf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fmodf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )); extern _Float32x __fmodf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
extern _Float32x copysignf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __copysignf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x nanf32x (const char *__tagb) __attribute__ ((__nothrow__ )); extern _Float32x __nanf32x (const char *__tagb) __attribute__ ((__nothrow__ ));
extern _Float32x j0f32x (_Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __j0f32x (_Float32x) __attribute__ ((__nothrow__ ));
extern _Float32x j1f32x (_Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __j1f32x (_Float32x) __attribute__ ((__nothrow__ ));
extern _Float32x jnf32x (int, _Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __jnf32x (int, _Float32x) __attribute__ ((__nothrow__ ));
extern _Float32x y0f32x (_Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __y0f32x (_Float32x) __attribute__ ((__nothrow__ ));
extern _Float32x y1f32x (_Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __y1f32x (_Float32x) __attribute__ ((__nothrow__ ));
extern _Float32x ynf32x (int, _Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __ynf32x (int, _Float32x) __attribute__ ((__nothrow__ ));
 extern _Float32x erff32x (_Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __erff32x (_Float32x) __attribute__ ((__nothrow__ ));
 extern _Float32x erfcf32x (_Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __erfcf32x (_Float32x) __attribute__ ((__nothrow__ ));
extern _Float32x lgammaf32x (_Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __lgammaf32x (_Float32x) __attribute__ ((__nothrow__ ));
extern _Float32x tgammaf32x (_Float32x) __attribute__ ((__nothrow__ )); extern _Float32x __tgammaf32x (_Float32x) __attribute__ ((__nothrow__ ));
extern _Float32x lgammaf32x_r (_Float32x, int *__signgamp) __attribute__ ((__nothrow__ )); extern _Float32x __lgammaf32x_r (_Float32x, int *__signgamp) __attribute__ ((__nothrow__ ));
extern _Float32x rintf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __rintf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x nextafterf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )); extern _Float32x __nextafterf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
extern _Float32x nextdownf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __nextdownf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x nextupf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __nextupf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x remainderf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )); extern _Float32x __remainderf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
extern _Float32x scalbnf32x (_Float32x __x, int __n) __attribute__ ((__nothrow__ )); extern _Float32x __scalbnf32x (_Float32x __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogbf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern int __ilogbf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern long int llogbf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern long int __llogbf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x scalblnf32x (_Float32x __x, long int __n) __attribute__ ((__nothrow__ )); extern _Float32x __scalblnf32x (_Float32x __x, long int __n) __attribute__ ((__nothrow__ ));
extern _Float32x nearbyintf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern _Float32x __nearbyintf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x roundf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __roundf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x truncf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __truncf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x remquof32x (_Float32x __x, _Float32x __y, int *__quo) __attribute__ ((__nothrow__ )); extern _Float32x __remquof32x (_Float32x __x, _Float32x __y, int *__quo) __attribute__ ((__nothrow__ ));
extern long int lrintf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern long int __lrintf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrintf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern long long int __llrintf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern long int lroundf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern long int __lroundf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llroundf32x (_Float32x __x) __attribute__ ((__nothrow__ )); extern long long int __llroundf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32x fdimf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )); extern _Float32x __fdimf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
extern _Float32x fmaxf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fmaxf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fminf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fminf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fmaf32x (_Float32x __x, _Float32x __y, _Float32x __z) __attribute__ ((__nothrow__ )); extern _Float32x __fmaf32x (_Float32x __x, _Float32x __y, _Float32x __z) __attribute__ ((__nothrow__ ));
extern _Float32x roundevenf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __roundevenf32x (_Float32x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern __intmax_t fromfpf32x (_Float32x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpf32x (_Float32x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpf32x (_Float32x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpf32x (_Float32x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __intmax_t fromfpxf32x (_Float32x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpxf32x (_Float32x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpxf32x (_Float32x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpxf32x (_Float32x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern int canonicalizef32x (_Float32x *__cx, const _Float32x *__x) __attribute__ ((__nothrow__ ));
extern _Float32x fmaxmagf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fmaxmagf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fminmagf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fminmagf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fmaximumf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fmaximumf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fminimumf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fminimumf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fmaximum_numf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fmaximum_numf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fminimum_numf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fminimum_numf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fmaximum_magf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fmaximum_magf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fminimum_magf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fminimum_magf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fmaximum_mag_numf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fmaximum_mag_numf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float32x fminimum_mag_numf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float32x __fminimum_mag_numf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int totalorderf32x (const _Float32x *__x, const _Float32x *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern int totalordermagf32x (const _Float32x *__x, const _Float32x *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern _Float32x getpayloadf32x (const _Float32x *__x) __attribute__ ((__nothrow__ )); extern _Float32x __getpayloadf32x (const _Float32x *__x) __attribute__ ((__nothrow__ ));
extern int setpayloadf32x (_Float32x *__x, _Float32x __payload) __attribute__ ((__nothrow__ ));
extern int setpayloadsigf32x (_Float32x *__x, _Float32x __payload) __attribute__ ((__nothrow__ ));
 extern _Float64x acosf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __acosf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x asinf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __asinf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x atanf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __atanf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x atan2f64x (_Float64x __y, _Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __atan2f64x (_Float64x __y, _Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x cosf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __cosf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x sinf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __sinf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x tanf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __tanf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x coshf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __coshf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x sinhf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __sinhf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x tanhf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __tanhf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern void sincosf64x (_Float64x __x, _Float64x *__sinx, _Float64x *__cosx) __attribute__ ((__nothrow__ )); extern void __sincosf64x (_Float64x __x, _Float64x *__sinx, _Float64x *__cosx) __attribute__ ((__nothrow__ ));
 extern _Float64x acoshf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __acoshf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x asinhf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __asinhf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x atanhf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __atanhf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x expf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __expf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x frexpf64x (_Float64x __x, int *__exponent) __attribute__ ((__nothrow__ )); extern _Float64x __frexpf64x (_Float64x __x, int *__exponent) __attribute__ ((__nothrow__ ));
extern _Float64x ldexpf64x (_Float64x __x, int __exponent) __attribute__ ((__nothrow__ )); extern _Float64x __ldexpf64x (_Float64x __x, int __exponent) __attribute__ ((__nothrow__ ));
 extern _Float64x logf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __logf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x log10f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __log10f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x modff64x (_Float64x __x, _Float64x *__iptr) __attribute__ ((__nothrow__ )); extern _Float64x __modff64x (_Float64x __x, _Float64x *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
 extern _Float64x exp10f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __exp10f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x exp2m1f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __exp2m1f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x exp10m1f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __exp10m1f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x log2p1f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __log2p1f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x log10p1f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __log10p1f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x logp1f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __logp1f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x expm1f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __expm1f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x log1pf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __log1pf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x logbf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __logbf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x exp2f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __exp2f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x log2f64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __log2f64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x powf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )); extern _Float64x __powf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float64x sqrtf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __sqrtf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
 extern _Float64x hypotf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )); extern _Float64x __hypotf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
 extern _Float64x cbrtf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __cbrtf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x ceilf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __ceilf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fabsf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fabsf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x floorf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __floorf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fmodf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )); extern _Float64x __fmodf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float64x copysignf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __copysignf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x nanf64x (const char *__tagb) __attribute__ ((__nothrow__ )); extern _Float64x __nanf64x (const char *__tagb) __attribute__ ((__nothrow__ ));
extern _Float64x j0f64x (_Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __j0f64x (_Float64x) __attribute__ ((__nothrow__ ));
extern _Float64x j1f64x (_Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __j1f64x (_Float64x) __attribute__ ((__nothrow__ ));
extern _Float64x jnf64x (int, _Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __jnf64x (int, _Float64x) __attribute__ ((__nothrow__ ));
extern _Float64x y0f64x (_Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __y0f64x (_Float64x) __attribute__ ((__nothrow__ ));
extern _Float64x y1f64x (_Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __y1f64x (_Float64x) __attribute__ ((__nothrow__ ));
extern _Float64x ynf64x (int, _Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __ynf64x (int, _Float64x) __attribute__ ((__nothrow__ ));
 extern _Float64x erff64x (_Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __erff64x (_Float64x) __attribute__ ((__nothrow__ ));
 extern _Float64x erfcf64x (_Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __erfcf64x (_Float64x) __attribute__ ((__nothrow__ ));
extern _Float64x lgammaf64x (_Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __lgammaf64x (_Float64x) __attribute__ ((__nothrow__ ));
extern _Float64x tgammaf64x (_Float64x) __attribute__ ((__nothrow__ )); extern _Float64x __tgammaf64x (_Float64x) __attribute__ ((__nothrow__ ));
extern _Float64x lgammaf64x_r (_Float64x, int *__signgamp) __attribute__ ((__nothrow__ )); extern _Float64x __lgammaf64x_r (_Float64x, int *__signgamp) __attribute__ ((__nothrow__ ));
extern _Float64x rintf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __rintf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x nextafterf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )); extern _Float64x __nextafterf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float64x nextdownf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __nextdownf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x nextupf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __nextupf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x remainderf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )); extern _Float64x __remainderf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float64x scalbnf64x (_Float64x __x, int __n) __attribute__ ((__nothrow__ )); extern _Float64x __scalbnf64x (_Float64x __x, int __n) __attribute__ ((__nothrow__ ));
extern int ilogbf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern int __ilogbf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern long int llogbf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern long int __llogbf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x scalblnf64x (_Float64x __x, long int __n) __attribute__ ((__nothrow__ )); extern _Float64x __scalblnf64x (_Float64x __x, long int __n) __attribute__ ((__nothrow__ ));
extern _Float64x nearbyintf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern _Float64x __nearbyintf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x roundf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __roundf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x truncf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __truncf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x remquof64x (_Float64x __x, _Float64x __y, int *__quo) __attribute__ ((__nothrow__ )); extern _Float64x __remquof64x (_Float64x __x, _Float64x __y, int *__quo) __attribute__ ((__nothrow__ ));
extern long int lrintf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern long int __lrintf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrintf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern long long int __llrintf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern long int lroundf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern long int __lroundf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llroundf64x (_Float64x __x) __attribute__ ((__nothrow__ )); extern long long int __llroundf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64x fdimf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )); extern _Float64x __fdimf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float64x fmaxf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fmaxf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fminf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fminf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) __attribute__ ((__nothrow__ )); extern _Float64x __fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) __attribute__ ((__nothrow__ ));
extern _Float64x roundevenf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __roundevenf64x (_Float64x __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern __intmax_t fromfpf64x (_Float64x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpf64x (_Float64x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpf64x (_Float64x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpf64x (_Float64x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __intmax_t fromfpxf64x (_Float64x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __intmax_t __fromfpxf64x (_Float64x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern __uintmax_t ufromfpxf64x (_Float64x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ )); extern __uintmax_t __ufromfpxf64x (_Float64x __x, int __round, unsigned int __width) __attribute__ ((__nothrow__ ));
extern int canonicalizef64x (_Float64x *__cx, const _Float64x *__x) __attribute__ ((__nothrow__ ));
extern _Float64x fmaxmagf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fmaxmagf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fminmagf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fminmagf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fmaximumf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fmaximumf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fminimumf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fminimumf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fmaximum_numf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fmaximum_numf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fminimum_numf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fminimum_numf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fmaximum_magf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fmaximum_magf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fminimum_magf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fminimum_magf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fmaximum_mag_numf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fmaximum_mag_numf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern _Float64x fminimum_mag_numf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern _Float64x __fminimum_mag_numf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int totalorderf64x (const _Float64x *__x, const _Float64x *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern int totalordermagf64x (const _Float64x *__x, const _Float64x *__y) __attribute__ ((__nothrow__ ))
     __attribute__ ((__pure__));
extern _Float64x getpayloadf64x (const _Float64x *__x) __attribute__ ((__nothrow__ )); extern _Float64x __getpayloadf64x (const _Float64x *__x) __attribute__ ((__nothrow__ ));
extern int setpayloadf64x (_Float64x *__x, _Float64x __payload) __attribute__ ((__nothrow__ ));
extern int setpayloadsigf64x (_Float64x *__x, _Float64x __payload) __attribute__ ((__nothrow__ ));
extern float fadd (double __x, double __y) __attribute__ ((__nothrow__ ));
extern float fdiv (double __x, double __y) __attribute__ ((__nothrow__ ));
extern float ffma (double __x, double __y, double __z) __attribute__ ((__nothrow__ ));
extern float fmul (double __x, double __y) __attribute__ ((__nothrow__ ));
extern float fsqrt (double __x) __attribute__ ((__nothrow__ ));
extern float fsub (double __x, double __y) __attribute__ ((__nothrow__ ));
extern float faddl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern float fdivl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern float ffmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ ));
extern float fmull (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern float fsqrtl (long double __x) __attribute__ ((__nothrow__ ));
extern float fsubl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern double daddl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern double ddivl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern double dfmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ ));
extern double dmull (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern double dsqrtl (long double __x) __attribute__ ((__nothrow__ ));
extern double dsubl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32addf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32divf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32fmaf32x (_Float32x __x, _Float32x __y, _Float32x __z) __attribute__ ((__nothrow__ ));
extern _Float32 f32mulf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32sqrtf32x (_Float32x __x) __attribute__ ((__nothrow__ ));
extern _Float32 f32subf32x (_Float32x __x, _Float32x __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32addf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32divf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32fmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) __attribute__ ((__nothrow__ ));
extern _Float32 f32mulf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32sqrtf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float32 f32subf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32addf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32divf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) __attribute__ ((__nothrow__ ));
extern _Float32 f32mulf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float32 f32sqrtf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float32 f32subf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float32x f32xaddf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float32x f32xdivf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float32x f32xfmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) __attribute__ ((__nothrow__ ));
extern _Float32x f32xmulf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float32x f32xsqrtf64 (_Float64 __x) __attribute__ ((__nothrow__ ));
extern _Float32x f32xsubf64 (_Float64 __x, _Float64 __y) __attribute__ ((__nothrow__ ));
extern _Float32x f32xaddf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float32x f32xdivf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float32x f32xfmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) __attribute__ ((__nothrow__ ));
extern _Float32x f32xmulf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float32x f32xsqrtf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float32x f32xsubf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float64 f64addf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float64 f64divf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float64 f64fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) __attribute__ ((__nothrow__ ));
extern _Float64 f64mulf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
extern _Float64 f64sqrtf64x (_Float64x __x) __attribute__ ((__nothrow__ ));
extern _Float64 f64subf64x (_Float64x __x, _Float64x __y) __attribute__ ((__nothrow__ ));
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
extern int __iscanonicall (long double __x)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
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
typedef __off64_t off64_t;
typedef __ssize_t ssize_t;
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
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
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
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
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
extern __inline __attribute__ ((__gnu_inline__)) __ssize_t
getline (char **__lineptr, size_t *__n, FILE *__stream)
{
  return __getdelim (__lineptr, __n, '\n', __stream);
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0010) != 0);
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0020) != 0);
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
typedef __ino64_t ino64_t;
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
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}

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
struct timex
{
  unsigned int modes;
  __syscall_slong_t offset;
  __syscall_slong_t freq;
  __syscall_slong_t maxerror;
  __syscall_slong_t esterror;
  int status;
  __syscall_slong_t constant;
  __syscall_slong_t precision;
  __syscall_slong_t tolerance;
  struct timeval time;
  __syscall_slong_t tick;
  __syscall_slong_t ppsfreq;
  __syscall_slong_t jitter;
  int shift;
  __syscall_slong_t stabil;
  __syscall_slong_t jitcnt;
  __syscall_slong_t calcnt;
  __syscall_slong_t errcnt;
  __syscall_slong_t stbcnt;
  int tai;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};
extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
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
  long int tm_gmtoff;
  const char *tm_zone;
};
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
struct sigevent;
extern clock_t clock (void) __attribute__ ((__nothrow__ ));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));
extern double difftime (time_t __time1, time_t __time0);
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp)
   __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3, 4)));
extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     __attribute__ ((__nothrow__ ));
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) __attribute__ ((__nothrow__ ));
extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
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
extern int daylight;
extern long int timezone;
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern int dysize (int __year) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
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
extern int timespec_getres (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ ));
extern int getdate_err;
extern struct tm *getdate (const char *__string);
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);
typedef char (*comparator_t)(void *key1, void *key2);
typedef void (*key_destructor_t)(void *key);
typedef void (*node_visitor_t)(void *key, void *data);
typedef void (*label_printer_t)(void *key, void *data);
struct skip_node_t;
struct link {
  size_t width;
  struct skip_node_t *node;
};
typedef struct skip_node_t {
  struct link *forward;
  void *key;
  void *data;
} skip_node_t;
typedef struct skip_list_t {
  unsigned short max_level;
  float p;
  unsigned short level;
  size_t width;
  skip_node_t *head;
  comparator_t comparator;
  key_destructor_t key_destructor;
} skip_list_t;
void jrsl_initialize(skip_list_t *skip_list, comparator_t comparator,
                     key_destructor_t key_destructor, float p,
                     unsigned short max_level);
void jrsl_destroy(skip_list_t *skip_list, node_visitor_t node_visitor);
void *jrsl_search(skip_list_t *skip_list, void *key);
void *jrsl_insert(skip_list_t *skip_list, void *key, void *data);
void *jrsl_remove(skip_list_t *skip_list, void *key);
void jrsl_display_list(skip_list_t *skip_list, label_printer_t label_printor);
unsigned short jrsl_max_level(size_t max_n ,
                              float p);
static unsigned short jrsl_random_level(skip_list_t *skip_list);
static void jrsl_center_string(char *str, size_t new_length);
static void jrsl_init_head(skip_list_t *skip_list);
static skip_node_t *jrsl_node_at(skip_list_t *skip_list, size_t index);
void *jrsl_data_at(skip_list_t *skip_list, size_t index);
void *jrsl_key_at(skip_list_t *skip_list, size_t index);
static void jrsl_init_head(skip_list_t *skip_list) {
  skip_node_t *head = (skip_node_t *)malloc(sizeof(skip_node_t));
  if (!head) {
    exit(1);
  }
  head->data = ((void*)0);
  head->key = ((void*)0);
  head->forward =
      (struct link *)malloc(skip_list->max_level * sizeof(struct link));
  if (!head->forward) {
    exit(1);
  }
  head->forward[0].node = ((void*)0);
  head->forward[0].width = 0;
  skip_list->head = head;
}
void jrsl_initialize(skip_list_t *skip_list, comparator_t comparator,
                     key_destructor_t key_destructor, float p,
                     unsigned short max_level) {
  skip_list->level = 1U;
  skip_list->width = 0;
  skip_list->max_level = max_level;
  skip_list->p = p;
  skip_list->comparator = comparator;
  skip_list->key_destructor = key_destructor;
  srand(42);
  jrsl_init_head(skip_list);
}
void jrsl_destroy(skip_list_t *skip_list, node_visitor_t node_visitor) {
  skip_node_t *node = skip_list->head;
  while (node) {
    skip_node_t *next_node = node->forward[0].node;
    node_visitor(node->key, node->data);
    free(node->forward);
    free(node);
    node = next_node;
  }
}
static skip_node_t *jrsl_node_at(skip_list_t *skip_list, size_t index) {
  size_t i, w;
  skip_node_t *x;
  if (index >= skip_list->width)
    return ((void*)0);
  w = index + 1;
  x = skip_list->head;
  for (i = skip_list->level - 1; i >= 0; i--) {
    while (x->forward[i].node && x->forward[i].width <= w) {
      w -= x->forward[i].width;
      x = x->forward[i].node;
      if (w == 0)
        return x;
    }
  }
  return ((void*)0);
}
void *jrsl_key_at(skip_list_t *skip_list, size_t index) {
  skip_node_t *node = jrsl_node_at(skip_list, index);
  if (node)
    return node->key;
  return ((void*)0);
}
void *jrsl_data_at(skip_list_t *skip_list, size_t index) {
  skip_node_t *node = jrsl_node_at(skip_list, index);
  if (node)
    return node->data;
  return ((void*)0);
}
void *jrsl_search(skip_list_t *skip_list, void *key) {
  size_t i;
  skip_node_t *x;
  x = skip_list->head;
  for (i = skip_list->level; i > 0; --i) {
    while (x->forward[i - 1].node != ((void*)0) &&
           skip_list->comparator(x->forward[i - 1].node->key, key) < 0) {
      x = x->forward[i - 1].node;
    }
    if (x->forward[i - 1].node != ((void*)0) &&
        skip_list->comparator(x->forward[i - 1].node->key, key) == 0) {
      return x->forward[i - 1].node->data;
    }
  }
  return ((void*)0);
}
void *jrsl_insert(skip_list_t *skip_list, void *key, void *data) {
  size_t i;
  skip_node_t *x;
  unsigned short level;
  skip_node_t *new_node;
  skip_node_t **update =
      (skip_node_t **)malloc(skip_list->max_level * sizeof(skip_node_t *));
  size_t *update_width =
      (size_t *)malloc(skip_list->max_level * sizeof(size_t));
  if (!update || !update_width) {
    exit(1);
  }
  x = skip_list->head;
  for (i = skip_list->level; i > 0; --i) {
    size_t width_sum = 0;
    while (x->forward[i - 1].node != ((void*)0) &&
           skip_list->comparator(x->forward[i - 1].node->key, key) < 0) {
      width_sum += x->forward[i - 1].width;
      x = x->forward[i - 1].node;
    }
    update[i - 1] = x;
    update_width[i - 1] = width_sum;
  }
  if (x->forward[0].node) {
    if (skip_list->comparator(x->forward[0].node->key, key) == 0) {
      void *old = x->forward[0].node->data;
      x->forward[0].node->data = data;
      free(update);
      free(update_width);
      return old;
    }
  }
  level = jrsl_random_level(skip_list);
  ((void) sizeof ((level < skip_list->max_level) ? 1 : 0), __extension__ ({ if (level < skip_list->max_level) ; else __assert_fail ("level < skip_list->max_level", "skiplist.c", 277, __extension__ __PRETTY_FUNCTION__); }));
  if (level > skip_list->level) {
    size_t i;
    for (i = skip_list->level; i < level; ++i) {
      update[i] = skip_list->head;
      update_width[i] = 0;
      skip_list->head->forward[i].node = ((void*)0);
      skip_list->head->forward[i].width = 0;
    }
    skip_list->level = level;
  }
  new_node = (skip_node_t *)malloc(sizeof(skip_node_t));
  if (!new_node) {
    exit(1);
  }
  new_node->data = data;
  new_node->key = key;
  new_node->forward = (struct link *)malloc(level * sizeof(struct link));
  if (!new_node->forward) {
    exit(1);
  }
  for (i = 0; i < level; ++i) {
    new_node->forward[i].node = update[i]->forward[i].node;
    update[i]->forward[i].node = new_node;
    if (i > 0) {
      size_t width_before =
          update_width[i - 1] + update[i - 1]->forward[i - 1].width;
      if (update[i]->forward[i].width > 0)
        new_node->forward[i].width =
            update[i]->forward[i].width + 1 - width_before;
      else
        new_node->forward[i].width = 0;
      update[i]->forward[i].width = width_before;
    } else {
      new_node->forward[i].width = update[i]->forward[i].width;
      update[i]->forward[i].width = 1;
    }
  }
  for (i = level; i < skip_list->level; ++i) {
    if (update[i]->forward[i].node)
      ++update[i]->forward[i].width;
    else
      break;
  }
  skip_list->width++;
  free(update);
  free(update_width);
  return ((void*)0);
}
void *jrsl_remove(skip_list_t *skip_list, void *key) {
  size_t i;
  skip_node_t *x;
  void *old;
  skip_node_t **update =
      (skip_node_t **)malloc(skip_list->level * sizeof(skip_node_t *));
  if (!update) {
    exit(1);
  }
  x = skip_list->head;
  for (i = skip_list->level; i > 0; --i) {
    while (x->forward[i - 1].node != ((void*)0) &&
           skip_list->comparator(x->forward[i - 1].node->key, key) < 0) {
      x = x->forward[i - 1].node;
    }
    update[i - 1] = x;
  }
  x = x->forward[0].node;
  if (x == ((void*)0) || skip_list->comparator(x->key, key) != 0) {
    free(update);
    return ((void*)0);
  }
  for (i = 0; i < skip_list->level; ++i) {
    if (update[i]->forward[i].node) {
      if (skip_list->comparator(update[i]->forward[i].node->key, key) == 0) {
        update[i]->forward[i].node = x->forward[i].node;
        if (x->forward[i].width > 0)
          update[i]->forward[i].width += x->forward[i].width - 1;
        else
          update[i]->forward[i].width = 0;
        continue;
      } else {
        --update[i]->forward[i].width;
      }
    }
  }
  free(update);
  old = x->data;
  free(x->forward);
  free(x);
  while (skip_list->level > 1 &&
         !skip_list->head->forward[skip_list->level - 1].node)
    --skip_list->level;
  skip_list->width--;
  return old;
}
static unsigned short jrsl_random_level(skip_list_t *skip_list) {
  float rnd = (float)rand() / (float)2147483647;
  size_t level = 1;
  while (rnd < skip_list->p && level < skip_list->max_level - 1) {
    level++;
    rnd = (float)rand() / (float)2147483647;
  }
  return level;
}
unsigned short jrsl_max_level(size_t max_n, float p) {
  if (!(p >= 0 && p <= 1))
    return 0;
  return (size_t)(log(max_n) / log(1 / p));
}
static void jrsl_center_string(char *str, size_t new_length) {
  size_t pad_l = (new_length - strlen(str)) / 2;
  size_t pad_r = new_length - pad_l;
  printf("%*s%s%*s", pad_l, "", str, pad_r, "");
}
void jrsl_display_list(skip_list_t *skip_list, label_printer_t label_printer) {
  size_t i;
  for (i = skip_list->level; i > 0; --i) {
    skip_node_t *node = skip_list->head;
    while (node) {
      if (node->forward[i - 1].width > 0) {
        char str[10];
        sprintf(str, "%d", node->forward[i - 1].width);
        jrsl_center_string(str, node->forward[i - 1].width * 6 - 1);
      }
      node = node->forward[i - 1].node;
    }
    printf("\n");
    node = skip_list->head;
    while (node) {
      if (node->forward[i - 1].width > 0) {
        printf("o%.*s> ", node->forward[i - 1].width * 6 - 3,
               "---------------------------------------------------------------"
               "--------------------------------------------------------------"
               "-");
      } else {
        printf("x ");
      }
      node = node->forward[i - 1].node;
    }
    printf(" Level %i \n", i - 1);
  }
  if (label_printer) {
    skip_node_t *node = skip_list->head->forward[0].node;
    printf("      ");
    while (node) {
      label_printer(node->key, node->data);
      node = node->forward[0].node;
    }
  }
}
static int intcmp(const void *a, const void *b) {
    int ia = *(const int*)a, ib = *(const int*)b;
    return (ia > ib) - (ia < ib);
}
static long long elapsed_ms_since(const struct timespec *t0, const struct timespec *t1) {
    long long s = (long long)(t1->tv_sec - t0->tv_sec);
    long long ns = (long long)(t1->tv_nsec - t0->tv_nsec);
    return s * 1000LL + ns / 1000000LL;
}
int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <data.bin>\n", argv[0]);
        return 1;
    }
    FILE *fp = fopen(argv[1], "rb");
    if (!fp) {
        fprintf(stderr, "Error: cannot open '%s'\n", argv[1]);
        return 1;
    }
    uint64_t header[4];
    if (fread(header, sizeof(uint64_t), 4, fp) != 4) {
        fprintf(stderr, "Error: short read on header\n");
        fclose(fp);
        return 1;
    }
    const size_t N = (size_t)header[0];
    const size_t UPDATES = (size_t)header[1];
    const size_t REMOVES = (size_t)header[2];
    const size_t SEARCHES = (size_t)header[3];
    int *insert_keys = (int *)malloc(N * sizeof(int));
    char *insert_data = (char *)malloc(N * sizeof(char));
    int *update_keys = (int *)malloc(UPDATES * sizeof(int));
    char *update_data = (char *)malloc(UPDATES * sizeof(char));
    int *remove_keys = (int *)malloc(REMOVES * sizeof(int));
    int *search_keys = (int *)malloc(SEARCHES * sizeof(int));
    if (!insert_keys || !insert_data || !update_keys || !update_data ||
        !remove_keys || !search_keys) {
        fprintf(stderr, "Allocation failed\n");
        fclose(fp);
        return 1;
    }
    if (fread(insert_keys, sizeof(int), N, fp) != N ||
        fread(insert_data, sizeof(char), N, fp) != N ||
        fread(update_keys, sizeof(int), UPDATES, fp) != UPDATES ||
        fread(update_data, sizeof(char), UPDATES, fp) != UPDATES ||
        fread(remove_keys, sizeof(int), REMOVES, fp) != REMOVES ||
        fread(search_keys, sizeof(int), SEARCHES, fp) != SEARCHES) {
        fprintf(stderr, "Error: short read on body\n");
        fclose(fp);
        return 1;
    }
    fclose(fp);
    skip_list_t sl;
    int max_level = jrsl_max_level(N, 0.5f);
    jrsl_initialize(&sl, (comparator_t)intcmp, ((void*)0), 0.5f, max_level);
    struct timespec t0, t1;
    clock_gettime(1, &t0);
    for (size_t i = 0; i < N; ++i) {
        (void)jrsl_insert(&sl, (void*)&insert_keys[i], (void*)&insert_data[i]);
    }
    for (size_t i = 0; i < UPDATES; ++i) {
        (void)jrsl_insert(&sl, (void*)&update_keys[i], (void*)&update_data[i]);
    }
    size_t remove_hits = 0, remove_misses = 0;
    for (size_t i = 0; i < REMOVES; ++i) {
        void *removed = jrsl_remove(&sl, (void*)&remove_keys[i]);
        if (removed) remove_hits++;
        else remove_misses++;
    }
    size_t search_hits = 0, search_misses = 0;
    for (size_t i = 0; i < SEARCHES; ++i) {
        void *found = jrsl_search(&sl, (void*)&search_keys[i]);
        if (found) search_hits++;
        else search_misses++;
    }
    clock_gettime(1, &t1);
    printf("=== SkipList Benchmark Results ===\n");
    printf("Operations completed:\n");
    printf("  Inserts:  %zu\n", N);
    printf("  Updates:  %zu\n", UPDATES);
    printf("  Removes:  %zu (hits: %zu, misses: %zu)\n", REMOVES, remove_hits, remove_misses);
    printf("  Searches: %zu (hits: %zu, misses: %zu)\n", SEARCHES, search_hits, search_misses);
    printf("Final skiplist length: %zu\n", sl.width);
    printf("Checksum: %zu\n", remove_hits + search_hits + sl.width);
    printf("elapsed_ms: %lld\n", elapsed_ms_since(&t0, &t1));
    free(insert_keys);
    free(insert_data);
    free(update_keys);
    free(update_data);
    free(remove_keys);
    free(search_keys);
    return 0;
}
