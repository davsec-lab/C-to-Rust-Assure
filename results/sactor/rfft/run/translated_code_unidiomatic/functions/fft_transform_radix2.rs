pub unsafe fn fft_transform_radix2(vec: *mut [f64; 2], n: usize, inverse: bool) {
    let mut levels: i32 = 0;
    let mut k: usize = 1;
    while (k & n) == 0 {
        levels += 1;
        k <<= 1;
    }
    for i in 0..n {
        let mut j: usize = 0;
        let mut ii: usize = i;
        for _ in 0..levels {
            j = (j << 1) | (ii & 1);
            ii >>= 1;
        }
        if j > i {
            let tmp = *vec.add(i);
            *vec.add(i) = *vec.add(j);
            *vec.add(j) = tmp;
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
                let a = *vec.add(i + j + half);
                let tmp: [f64; 2] = [
                    a[0] * omega[0] - a[1] * omega[1],
                    a[0] * omega[1] + a[1] * omega[0],
                ];
                let b = *vec.add(i + j);
                *vec.add(i + j + half) = [b[0] - tmp[0], b[1] - tmp[1]];
                *vec.add(i + j) = [b[0] + tmp[0], b[1] + tmp[1]];
                i += size;
            }
            j += 1;
            k += step;
        }
        half *= 2;
    }
}
