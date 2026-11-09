pub unsafe fn csv_set_opts(p: *mut csv_parser, options: libc::c_uchar) -> libc::c_int {
    if p.is_null() {
        return -1;
    }
    (*p).options = options;
    0
}
