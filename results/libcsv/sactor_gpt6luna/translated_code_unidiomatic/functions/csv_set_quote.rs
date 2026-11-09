pub unsafe fn csv_set_quote(p: *mut csv_parser, c: libc::c_uchar) {
    if !p.is_null() {
        (*p).quote_char = c;
    }
}
