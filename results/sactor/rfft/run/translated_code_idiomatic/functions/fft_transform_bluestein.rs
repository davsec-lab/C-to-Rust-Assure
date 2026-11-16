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
