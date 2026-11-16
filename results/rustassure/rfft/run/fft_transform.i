typedef long unsigned int size_t;
void fft_transform_radix2(double _Complex* vec, size_t n, _Bool inverse);
void fft_transform_bluestein(double _Complex* vec, size_t n, _Bool inverse);
void fft_transform(double _Complex* vec, size_t n, _Bool inverse);
void fft_transform_bluestein(double _Complex* vec, size_t n, _Bool inverse);
void fft_transform_radix2(double _Complex* vec, size_t n, _Bool inverse);
void fft_transform(double _Complex* vec, size_t n, _Bool inverse) {
 if (n <= 1)
  return;
 else if ((n & (n - 1)) == 0)
  fft_transform_radix2(vec, n, inverse);
 else
  fft_transform_bluestein(vec, n, inverse);
}
