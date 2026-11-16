pub unsafe fn get_now(ts: *mut libc::timespec) -> libc::c_int {
    libc::clock_gettime(libc::CLOCK_MONOTONIC, ts)
}
