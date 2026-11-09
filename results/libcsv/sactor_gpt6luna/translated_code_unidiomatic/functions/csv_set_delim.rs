pub unsafe fn csv_set_delim(p: *mut csv_parser, c: libc::c_uchar) {
    if !p.is_null() {
        (*p).delim_char = c;
    }
}
