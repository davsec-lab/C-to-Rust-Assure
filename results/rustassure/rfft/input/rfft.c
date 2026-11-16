#include <complex.h>
#include <math.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <time.h>

#ifndef M_PI
	#define M_PI 3.14159265358979323846
#endif 

// Perform the FFT in place for an array of size 2^k.
// No normalization is done.
void fft_transform_radix2(double complex* vec, size_t n, bool inverse);

// Perform the FFT for an arbitrary array using the Bluestein's algorithm.
// The code needs to allocate two supplementary buffers (of size < 4 * n - 3).
// No normalization is done.
void fft_transform_bluestein(double complex* vec, size_t n, bool inverse);

// Perform the FFT, choosing the suitable algorithm from the two above.
void fft_transform(double complex* vec,	size_t n, bool inverse);

void fft_transform_radix2(double complex* vec, size_t n, bool inverse) {
	int levels = 0;	 // Compute levels = floor(log2(n))
	for (size_t k =	1; (k &	n) == 0; k <<= 1)
		levels++;
	
	// Permute vec by reversing the bits of addresses
	for (size_t i =	0; i < n; i++) {
		// Reverse the bits of i
		size_t j = 0, ii = i;
		for (int k = 0;	k < levels; k++) {
			j = (j << 1) | (ii & 1);
			ii >>= 1;
		}
	
		if (j >	i) {
			double complex tmp = vec[i];
			vec[i] = vec[j];
			vec[j] = tmp;
		}
	}
	
	// Cooley-Tukey	in place
	for (size_t half = 1; half < n;	half *=	2) {
		size_t size = 2	* half;
		size_t step = n	/ size;
		for (size_t j =	0, k = 0; j < half; j++, k += step) {
			double angle = (inverse	? 2 : -2) * M_PI * k / n;
			double complex omega = cos(angle) + I *	sin(angle);
        		for (size_t i =	0; i < n; i += size) {
				double complex tmp = vec[i + j + half] * omega;
				vec[i + j + half] = vec[i + j] - tmp;
				vec[i + j] += tmp;
			}
		}
	}
}

void fft_transform_bluestein(double complex* vec, size_t n, bool inverse) {
	// Find m = 2^k such that m >= 2 * n + 1
	size_t m = 1;
	while (m <= 2 * n) {
		m *= 2;
	}
	
	// Extended vectors of size m
	double complex*	avec = calloc(m, sizeof(double complex));
	double complex*	bvec = calloc(m, sizeof(double complex));
	avec[0]	= vec[0];
	bvec[0]	= 1.0;
	for (size_t i =	1; i < n; i++) {
		size_t k = (i * i) % (2 * n);
		double angle = (inverse	? M_PI : -M_PI)	* k / n;
		double complex omega = cos(angle) + I *	sin(angle);
		avec[i]	= vec[i] * omega;
		bvec[i]	= bvec[m - i] =	conj(omega);
	}

	// Convolution
	fft_transform_radix2(avec, m, false);
	fft_transform_radix2(bvec, m, false);
	for (size_t i =	0; i < m; i++) {
		avec[i]	*= bvec[i];
	}
	fft_transform_radix2(avec, m, true);

	for (size_t i =	0; i < n; i++) {
		size_t k = (i * i) % (2 * n);
		double angle = (inverse	? M_PI : -M_PI)	* k / n;
		double complex omega = cos(angle) + I *	sin(angle);
		vec[i] = avec[i] * omega / m;
	}

	free(avec);
	free(bvec);
}

void fft_transform(double complex* vec,	size_t n, bool inverse)	{
	if (n <= 1)
		return;
	else if	((n & (n - 1)) == 0)  // Power of 2
		fft_transform_radix2(vec, n, inverse);
	else
		fft_transform_bluestein(vec, n,	inverse);
}

int main() {
	size_t n = 8388608; // 2^23 = 8M elements for ~1-2 second runtime
	double complex* vec = calloc(n, sizeof(double complex));

	// Generate a synthetic dataset (e.g., a mix of two sine waves)
	for (size_t i = 0; i < n; i++) {
		double t = (double)i / n;
		// 5 Hz wave + 20 Hz wave
		double val = sin(2.0 * M_PI * 5.0 * t) + 0.5 * sin(2.0 * M_PI * 20.0 * t);
		vec[i] = val + 0.0 * I;
	}

	printf("Dataset generated: %zu elements.\n", n);
	printf("First 5 elements before FFT:\n");
	for (size_t i = 0; i < 5; i++) {
		printf("%.4f %s %.4fi\n", creal(vec[i]), cimag(vec[i]) >= 0 ? "+" : "-", fabs(cimag(vec[i])));
	}

	struct timespec start, end;
	double time_taken;

	// Forward FFT
	clock_gettime(CLOCK_MONOTONIC, &start);
	fft_transform(vec, n, false);
	clock_gettime(CLOCK_MONOTONIC, &end);
	time_taken = (double)(end.tv_sec - start.tv_sec) + (double)(end.tv_nsec - start.tv_nsec) / 1e9;
	printf("rfft forward computation time: %.6f seconds\n", time_taken);

	printf("First 5 elements after FFT:\n");
	for (size_t i = 0; i < 5; i++) {
		printf("%.4f %s %.4fi\n", creal(vec[i]), cimag(vec[i]) >= 0 ? "+" : "-", fabs(cimag(vec[i])));
	}

	// Inverse FFT
	clock_gettime(CLOCK_MONOTONIC, &start);
	fft_transform(vec, n, true);
	clock_gettime(CLOCK_MONOTONIC, &end);
	time_taken = (double)(end.tv_sec - start.tv_sec) + (double)(end.tv_nsec - start.tv_nsec) / 1e9;
	printf("rfft inverse computation time: %.6f seconds\n", time_taken);
	
	printf("First 5 elements after Inverse FFT (normalized):\n");
	for (size_t i = 0; i < 5; i++) {
		double complex val = vec[i] / (double)n;
		printf("Normalized: %.4f %s %.4fi\n", creal(val), cimag(val) >= 0 ? "+" : "-", fabs(cimag(val)));
	}

	free(vec);
	return 0;
}

