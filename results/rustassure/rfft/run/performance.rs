use std::time::Instant;

pub type size_t = std::os::raw::c_ulong;

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
fn cmul(a: (f64, f64), b: (f64, f64)) -> (f64, f64) {
    (a.0 * b.0 - a.1 * b.1, a.0 * b.1 + a.1 * b.0)
}

pub fn fft_transform_bluestein(vec: &mut [(f64, f64)], n: size_t, inverse: bool) {
    let nn = n as usize;
    let mut m: usize = 1;
    while m <= 2 * nn {
        m *= 2;
    }
    let mut avec: Vec<(f64, f64)> = vec![(0.0, 0.0); m];
    let mut bvec: Vec<(f64, f64)> = vec![(0.0, 0.0); m];
    avec[0] = vec[0];
    bvec[0] = (1.0, 0.0);
    let pi = 3.14159265358979323846_f64;
    for i in 1..nn {
        let k = (i * i) % (2 * nn);
        let angle = (if inverse { pi } else { -pi }) * (k as f64) / (nn as f64);
        let omega = (angle.cos(), angle.sin());
        avec[i] = cmul(vec[i], omega);
        let c = (omega.0, -omega.1);
        bvec[m - i] = c;
        bvec[i] = c;
    }
    fft_transform_radix2(&mut avec, m as size_t, false);
    fft_transform_radix2(&mut bvec, m as size_t, false);
    for i in 0..m {
        avec[i] = cmul(avec[i], bvec[i]);
    }
    fft_transform_radix2(&mut avec, m as size_t, true);
    for i in 0..nn {
        let k = (i * i) % (2 * nn);
        let angle = (if inverse { pi } else { -pi }) * (k as f64) / (nn as f64);
        let omega = (angle.cos(), angle.sin());
        let p = cmul(avec[i], omega);
        vec[i] = (p.0 / (m as f64), p.1 / (m as f64));
    }
}
pub fn fft_transform(vec: &mut [(f64, f64)], n: size_t, inverse: bool) {
    if n <= 1 {
        return;
    } else if (n & (n - 1)) == 0 {
        fft_transform_radix2(vec, n, inverse);
    } else {
        fft_transform_bluestein(vec, n, inverse);
    }
}

fn main() {
    let n: usize = 8388608;
    let mut vec: Vec<(f64, f64)> = vec![(0.0, 0.0); n];
    let pi = std::f64::consts::PI;

    for i in 0..n {
        let t = (i as f64) / (n as f64);
        let val = (2.0 * pi * 5.0 * t).sin() + 0.5 * (2.0 * pi * 20.0 * t).sin();
        vec[i] = (val, 0.0 * 1.0);
    }

    println!("Dataset generated: {} elements.", n);
    println!("First 5 elements before FFT:");
    for i in 0..5 {
        let (re, im) = vec[i];
        println!("{:.4} {} {:.4}i", re, if im >= 0.0 { "+" } else { "-" }, im.abs());
    }

    let start = Instant::now();
    fft_transform(&mut vec, n as size_t, false);
    let time_taken = start.elapsed().as_secs_f64();
    println!("rfft forward computation time: {:.6} seconds", time_taken);

    println!("First 5 elements after FFT:");
    for i in 0..5 {
        let (re, im) = vec[i];
        println!("{:.4} {} {:.4}i", re, if im >= 0.0 { "+" } else { "-" }, im.abs());
    }

    let start = Instant::now();
    fft_transform(&mut vec, n as size_t, true);
    let time_taken = start.elapsed().as_secs_f64();
    println!("rfft inverse computation time: {:.6} seconds", time_taken);

    println!("First 5 elements after Inverse FFT (normalized):");
    for i in 0..5 {
        let (re, im) = vec[i];
        let re = re / (n as f64);
        let im = im / (n as f64);
        println!(
            "Normalized: {:.4} {} {:.4}i",
            re,
            if im >= 0.0 { "+" } else { "-" },
            im.abs()
        );
    }
}