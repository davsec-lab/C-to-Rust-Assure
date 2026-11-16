#[derive(Debug, Clone, Copy, Default)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

fn diff_timespec(time1: &timespec, time0: &timespec) -> f64 {
    (time1.tv_sec.wrapping_sub(time0.tv_sec)) as f64
        + (time1.tv_nsec.wrapping_sub(time0.tv_nsec)) as f64 / 1000000000.0
}