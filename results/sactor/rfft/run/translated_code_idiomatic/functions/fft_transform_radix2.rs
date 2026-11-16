pub fn fft_transform_radix2(vec: &mut [[f64; 2]], inverse: bool) {
    let n = vec.len();
    if n == 0 {
        return;
    }
    let levels: u32 = n.trailing_zeros();
    for i in 0..n {
        let mut j: usize = 0;
        let mut ii: usize = i;
        for _ in 0..levels {
            j = (j << 1) | (ii & 1);
            ii >>= 1;
        }
        if j > i {
            vec.swap(i, j);
        }
    }
    let mut half: usize = 1;
    while half < n {
        let size = 2 * half;
        let step = n / size;
        let mut j: usize = 0;
        let mut k: usize = 0;
        while j < half {
            let coef: f64 = if inverse { 2.0 } else { -2.0 };
            let angle: f64 = coef * std::f64::consts::PI * (k as f64) / (n as f64);
            let omega: [f64; 2] = [angle.cos(), angle.sin()];
            let mut i: usize = 0;
            while i < n {
                let a = vec[i + j + half];
                let tmp: [f64; 2] = [
                    a[0] * omega[0] - a[1] * omega[1],
                    a[0] * omega[1] + a[1] * omega[0],
                ];
                let b = vec[i + j];
                vec[i + j + half] = [b[0] - tmp[0], b[1] - tmp[1]];
                vec[i + j] = [b[0] + tmp[0], b[1] + tmp[1]];
                i += size;
            }
            j += 1;
            k += step;
        }
        half *= 2;
    }
}
