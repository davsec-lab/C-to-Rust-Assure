pub fn fft_transform(vec: &mut [(f64, f64)], n: size_t, inverse: bool) {
    if n <= 1 {
        return;
    } else if (n & (n - 1)) == 0 {
        fft_transform_radix2(vec, n, inverse);
    } else {
        fft_transform_bluestein(vec, n, inverse);
    }
}