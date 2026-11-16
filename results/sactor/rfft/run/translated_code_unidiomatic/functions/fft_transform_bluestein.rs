pub unsafe fn fft_transform_bluestein(vec: *mut [f64; 2], n: usize, inverse: bool) {
    let mut m: usize = 1;
    while m <= 2 * n {
        m *= 2;
    }
    let avec = libc::calloc(m, std::mem::size_of::<[f64; 2]>()) as *mut [f64; 2];
    let bvec = libc::calloc(m, std::mem::size_of::<[f64; 2]>()) as *mut [f64; 2];
    *avec.add(0) = *vec.add(0);
    *bvec.add(0) = [1.0, 0.0];
    let pi: f64 = 3.14159265358979323846;
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
