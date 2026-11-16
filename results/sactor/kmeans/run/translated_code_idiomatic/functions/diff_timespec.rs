pub fn diff_timespec(time1: (i64, i64), time0: (i64, i64)) -> f64 {
    let sec = time1.0.wrapping_sub(time0.0);
    let nsec = time1.1.wrapping_sub(time0.1);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
