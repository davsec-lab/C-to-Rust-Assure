pub fn fft_transform(vec: &mut [[f64; 2]], inverse: bool) {
    let n = vec.len();
    if n <= 1 {
        return;
    } else if (n & (n - 1)) == 0 {
        fft_transform_radix2(vec, inverse);
    } else {
        fft_transform_bluestein(vec, inverse);
    }
}
