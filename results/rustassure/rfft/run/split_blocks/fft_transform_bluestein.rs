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