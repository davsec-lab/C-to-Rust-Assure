 
 
 
typedef long unsigned int size_t;
void fft_transform_radix2(double _Complex* vec, size_t n, _Bool inverse);
void fft_transform_bluestein(double _Complex* vec, size_t n, _Bool inverse);
void fft_transform_radix2(double _Complex* vec, size_t n, _Bool inverse);
void fft_transform_bluestein(double _Complex* vec, size_t n, _Bool inverse) {
 size_t m = 1;
 while (m <= 2 * n) {
  m *= 2;
 }
 double _Complex* avec = calloc(m, sizeof(double _Complex));
 double _Complex* bvec = calloc(m, sizeof(double _Complex));
 avec[0] = vec[0];
 bvec[0] = 1.0;
 for (size_t i = 1; i < n; i++) {
  size_t k = (i * i) % (2 * n);
  double angle = (inverse ? 3.14159265358979323846 : -3.14159265358979323846) * k / n;
  double _Complex omega = cos(angle) + ( 1.0iF) * sin(angle);
  avec[i] = vec[i] * omega;
  bvec[i] = bvec[m - i] = conj(omega);
 }
 fft_transform_radix2(avec, m, 0);
 fft_transform_radix2(bvec, m, 0);
 for (size_t i = 0; i < m; i++) {
  avec[i] *= bvec[i];
 }
 fft_transform_radix2(avec, m, 1);
 for (size_t i = 0; i < n; i++) {
  size_t k = (i * i) % (2 * n);
  double angle = (inverse ? 3.14159265358979323846 : -3.14159265358979323846) * k / n;
  double _Complex omega = cos(angle) + ( 1.0iF) * sin(angle);
  vec[i] = avec[i] * omega / m;
 }
 free(avec);
 free(bvec);
}
