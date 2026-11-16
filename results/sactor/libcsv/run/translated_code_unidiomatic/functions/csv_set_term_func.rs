pub unsafe fn csv_set_term_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(libc::c_uchar) -> libc::c_int>,
) {
    if !p.is_null() {
        (*p).is_term = f;
    }
}
