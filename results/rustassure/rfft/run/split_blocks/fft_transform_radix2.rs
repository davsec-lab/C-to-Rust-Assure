pub fn fft_transform_radix2(vec: &mut [(f64, f64)], n: size_t, inverse: bool) {
    // Each element is (real, imag). This avoids the external `num_complex` crate.
    let n = n as usize;
    if n == 0 {
        return;
    }
    let mut levels: i32 = 0;
    let mut k: usize = 1;
    while k != 0 && (k & n) == 0 {
        levels += 1;
        k <<= 1;
    }
    for i in 0..n {
        let mut j: usize = 0;
        let mut ii = i;
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
            let angle = (if inverse { 2.0 } else { -2.0 })
                * 3.14159265358979323846_f64
                * (k as f64)
                / (n as f64);
            let (wr, wi) = (angle.cos(), angle.sin());
            let mut i: usize = 0;
            while i < n {
                let (br, bi) = vec[i + j + half];
                // tmp = vec[i + j + half] * omega
                let tr = br * wr - bi * wi;
                let ti = br * wi + bi * wr;
                let (ar, ai) = vec[i + j];
                vec[i + j + half] = (ar - tr, ai - ti);
                vec[i + j] = (ar + tr, ai + ti);
                i += size;
            }
            j += 1;
            k += step;
        }
        half *= 2;
    }
}