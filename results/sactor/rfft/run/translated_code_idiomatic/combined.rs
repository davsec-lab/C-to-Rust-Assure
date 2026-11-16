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
pub fn fft_transform_bluestein(vec: &mut [[f64; 2]], inverse: bool) {
    let n = vec.len();
    if n == 0 {
        return;
    }
    let mut m: usize = 1;
    while m <= 2 * n {
        m *= 2;
    }
    let mut avec: Vec<[f64; 2]> = vec![[0.0, 0.0]; m];
    let mut bvec: Vec<[f64; 2]> = vec![[0.0, 0.0]; m];
    avec[0] = vec[0];
    bvec[0] = [1.0, 0.0];
    let pi: f64 = std::f64::consts::PI;
    let sign = if inverse { pi } else { -pi };
    for i in 1..n {
        let k = (i * i) % (2 * n);
        let angle = sign * (k as f64) / (n as f64);
        let omega = [angle.cos(), angle.sin()];
        let v = vec[i];
        avec[i] = [
            v[0] * omega[0] - v[1] * omega[1],
            v[0] * omega[1] + v[1] * omega[0],
        ];
        let c = [omega[0], -omega[1]];
        bvec[i] = c;
        bvec[m - i] = c;
    }
    fft_transform_radix2(&mut avec, false);
    fft_transform_radix2(&mut bvec, false);
    for i in 0..m {
        let a = avec[i];
        let b = bvec[i];
        avec[i] = [a[0] * b[0] - a[1] * b[1], a[0] * b[1] + a[1] * b[0]];
    }
    fft_transform_radix2(&mut avec, true);
    for i in 0..n {
        let k = (i * i) % (2 * n);
        let angle = sign * (k as f64) / (n as f64);
        let omega = [angle.cos(), angle.sin()];
        let a = avec[i];
        let re = a[0] * omega[0] - a[1] * omega[1];
        let im = a[0] * omega[1] + a[1] * omega[0];
        vec[i] = [re / (m as f64), im / (m as f64)];
    }
}
pub fn fft_transform(vec: &mut [[f64; 2]], inverse: bool) {
    let n = vec.len();
    if n <= 1 {
    } else if (n & (n - 1)) == 0 {
        fft_transform_radix2(vec, inverse);
    } else {
        fft_transform_bluestein(vec, inverse);
    }
}
pub fn main() {
    use std::time::Instant;
    let n: usize = 8388608;
    let mut vec: Vec<[f64; 2]> = vec![[0.0; 2]; n];
    let pi: f64 = 3.141_592_653_589_793;
    for i in 0..n {
        let t = (i as f64) / (n as f64);
        let val = (2.0 * pi * 5.0 * t).sin() + 0.5 * (2.0 * pi * 20.0 * t).sin();
        vec[i] = [val, 0.0 * 1.0];
    }
    println!("Dataset generated: {} elements.", n);
    println!("First 5 elements before FFT:");
    for i in 0..5 {
        let v = vec[i];
        println!(
            "{:.4} {} {:.4}i",
            v[0],
            if v[1] >= 0.0 { "+" } else { "-" },
            v[1].abs()
        );
    }
    let start = Instant::now();
    fft_transform(&mut vec, false);
    let time_taken = start.elapsed().as_secs_f64();
    println!("rfft forward computation time: {:.6} seconds", time_taken);
    println!("First 5 elements after FFT:");
    for i in 0..5 {
        let v = vec[i];
        println!(
            "{:.4} {} {:.4}i",
            v[0],
            if v[1] >= 0.0 { "+" } else { "-" },
            v[1].abs()
        );
    }
    let start = Instant::now();
    fft_transform(&mut vec, true);
    let time_taken = start.elapsed().as_secs_f64();
    println!("rfft inverse computation time: {:.6} seconds", time_taken);
    println!("First 5 elements after Inverse FFT (normalized):");
    for i in 0..5 {
        let v = vec[i];
        let re = v[0] / (n as f64);
        let im = v[1] / (n as f64);
        println!(
            "Normalized: {:.4} {} {:.4}i",
            re,
            if im >= 0.0 { "+" } else { "-" },
            im.abs()
        );
    }
}
