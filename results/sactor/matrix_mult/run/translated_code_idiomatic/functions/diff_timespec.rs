pub fn diff_timespec(time1_sec: i64, time1_nsec: i64, time0_sec: i64, time0_nsec: i64) -> f64 {
    let sec = time1_sec.wrapping_sub(time0_sec);
    let nsec = time1_nsec.wrapping_sub(time0_nsec);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
