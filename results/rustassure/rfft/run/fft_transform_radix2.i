 
 
typedef long unsigned int size_t;
void fft_transform_radix2(double _Complex* vec, size_t n, _Bool inverse);
void fft_transform_radix2(double _Complex* vec, size_t n, _Bool inverse) {
 int levels = 0;
 for (size_t k = 1; (k & n) == 0; k <<= 1)
  levels++;
 for (size_t i = 0; i < n; i++) {
  size_t j = 0, ii = i;
  for (int k = 0; k < levels; k++) {
   j = (j << 1) | (ii & 1);
   ii >>= 1;
  }
  if (j > i) {
   double _Complex tmp = vec[i];
   vec[i] = vec[j];
   vec[j] = tmp;
  }
 }
 for (size_t half = 1; half < n; half *= 2) {
  size_t size = 2 * half;
  size_t step = n / size;
  for (size_t j = 0, k = 0; j < half; j++, k += step) {
   double angle = (inverse ? 2 : -2) * 3.14159265358979323846 * k / n;
   double _Complex omega = cos(angle) + ( 1.0iF) * sin(angle);
          for (size_t i = 0; i < n; i += size) {
    double _Complex tmp = vec[i + j + half] * omega;
    vec[i + j + half] = vec[i + j] - tmp;
    vec[i + j] += tmp;
   }
  }
 }
}
