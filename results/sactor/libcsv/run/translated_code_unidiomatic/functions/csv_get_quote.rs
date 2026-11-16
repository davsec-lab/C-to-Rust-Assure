pub unsafe fn csv_get_quote(p: *const csv_parser) -> libc::c_uchar {
    if p.is_null() {
        libc::abort();
    }
    (*p).quote_char
}
