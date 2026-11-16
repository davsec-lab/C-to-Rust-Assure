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
pub unsafe fn fft_transform_bluestein(vec: *mut [f64; 2], n: usize, inverse: bool) {
    let mut m: usize = 1;
    while m <= 2 * n {
        m *= 2;
    }
    let avec = libc::calloc(m, std::mem::size_of::<[f64; 2]>()) as *mut [f64; 2];
    let bvec = libc::calloc(m, std::mem::size_of::<[f64; 2]>()) as *mut [f64; 2];
    *avec.add(0) = *vec.add(0);
    *bvec.add(0) = [1.0, 0.0];
    let pi: f64 = 3.141_592_653_589_793;
    let sign = if inverse { pi } else { -pi };
    for i in 1..n {
        let k = (i * i) % (2 * n);
        let angle = sign * (k as f64) / (n as f64);
        let omega = [angle.cos(), angle.sin()];
        let v = *vec.add(i);
        *avec.add(i) = [
            v[0] * omega[0] - v[1] * omega[1],
            v[0] * omega[1] + v[1] * omega[0],
        ];
        let c = [omega[0], -omega[1]];
        *bvec.add(i) = c;
        *bvec.add(m - i) = c;
    }
    fft_transform_radix2(avec, m, false);
    fft_transform_radix2(bvec, m, false);
    for i in 0..m {
        let a = *avec.add(i);
        let b = *bvec.add(i);
        *avec.add(i) = [a[0] * b[0] - a[1] * b[1], a[0] * b[1] + a[1] * b[0]];
    }
    fft_transform_radix2(avec, m, true);
    for i in 0..n {
        let k = (i * i) % (2 * n);
        let angle = sign * (k as f64) / (n as f64);
        let omega = [angle.cos(), angle.sin()];
        let a = *avec.add(i);
        let re = a[0] * omega[0] - a[1] * omega[1];
        let im = a[0] * omega[1] + a[1] * omega[0];
        *vec.add(i) = [re / (m as f64), im / (m as f64)];
    }
    libc::free(avec as *mut libc::c_void);
    libc::free(bvec as *mut libc::c_void);
}
pub unsafe fn fft_transform(vec: *mut [f64; 2], n: usize, inverse: bool) {
    if n <= 1 {
    } else if (n & (n - 1)) == 0 {
        fft_transform_radix2(vec, n, inverse);
    } else {
        fft_transform_bluestein(vec, n, inverse);
    }
}
pub fn main() {
    unsafe {
        let n: usize = 8388608;
        let vec = libc::calloc(n, std::mem::size_of::<[f64; 2]>()) as *mut [f64; 2];
        if vec.is_null() {
            return;
        }
        let pi: f64 = 3.141_592_653_589_793;
        for i in 0..n {
            let t = (i as f64) / (n as f64);
            let val = (2.0 * pi * 5.0 * t).sin() + 0.5 * (2.0 * pi * 20.0 * t).sin();
            *vec.add(i) = [val, 0.0 * 1.0];
        }
        println!("Dataset generated: {} elements.", n);
        println!("First 5 elements before FFT:");
        for i in 0..5 {
            let v = *vec.add(i);
            println!(
                "{:.4} {} {:.4}i",
                v[0],
                if v[1] >= 0.0 { "+" } else { "-" },
                v[1].abs()
            );
        }
        let mut start: libc::timespec = std::mem::zeroed();
        let mut end: libc::timespec = std::mem::zeroed();
        let mut time_taken: f64;
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start);
        fft_transform(vec, n, false);
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end);
        time_taken =
            (end.tv_sec - start.tv_sec) as f64 + (end.tv_nsec - start.tv_nsec) as f64 / 1e9;
        println!("rfft forward computation time: {:.6} seconds", time_taken);
        println!("First 5 elements after FFT:");
        for i in 0..5 {
            let v = *vec.add(i);
            println!(
                "{:.4} {} {:.4}i",
                v[0],
                if v[1] >= 0.0 { "+" } else { "-" },
                v[1].abs()
            );
        }
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start);
        fft_transform(vec, n, true);
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end);
        time_taken =
            (end.tv_sec - start.tv_sec) as f64 + (end.tv_nsec - start.tv_nsec) as f64 / 1e9;
        println!("rfft inverse computation time: {:.6} seconds", time_taken);
        println!("First 5 elements after Inverse FFT (normalized):");
        for i in 0..5 {
            let v = *vec.add(i);
            let re = v[0] / (n as f64);
            let im = v[1] / (n as f64);
            println!(
                "Normalized: {:.4} {} {:.4}i",
                re,
                if im >= 0.0 { "+" } else { "-" },
                im.abs()
            );
        }
        libc::free(vec as *mut libc::c_void);
    }
}
