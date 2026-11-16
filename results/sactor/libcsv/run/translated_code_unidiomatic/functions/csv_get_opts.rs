pub unsafe fn csv_get_opts(p: *const csv_parser) -> libc::c_int {
    if p.is_null() {
        return -1;
    }
    (*p).options as libc::c_int
}
