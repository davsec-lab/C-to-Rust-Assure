pub unsafe fn csv_error(p: *const csv_parser) -> libc::c_int {
    if p.is_null() {
        panic!("assertion failed: p && \"received null csv_parser\"");
    }
    (*p).status
}
