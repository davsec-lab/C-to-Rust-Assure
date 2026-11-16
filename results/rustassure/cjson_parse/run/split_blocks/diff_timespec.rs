#[derive(Clone, Copy, Default, Debug)]
pub struct Timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

fn diff_timespec(time1: &Timespec, time0: &Timespec) -> f64 {
    (time1.tv_sec - time0.tv_sec) as f64
        + (time1.tv_nsec - time0.tv_nsec) as f64 / 1000000000.0
}