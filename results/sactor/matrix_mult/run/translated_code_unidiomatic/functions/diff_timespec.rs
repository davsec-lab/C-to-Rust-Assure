pub fn diff_timespec(time1: *mut libc::timespec, time0: *mut libc::timespec) -> f64 {
    unsafe {
        let sec = (*time1).tv_sec.wrapping_sub((*time0).tv_sec);
        let nsec = (*time1).tv_nsec.wrapping_sub((*time0).tv_nsec);
        (sec as f64) + (nsec as f64) / 1000000000.0
    }
}
