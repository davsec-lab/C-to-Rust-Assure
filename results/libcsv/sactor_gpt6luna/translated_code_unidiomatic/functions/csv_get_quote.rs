pub unsafe fn csv_get_quote(p: *const csv_parser) -> libc::c_uchar {
    assert!(!p.is_null(), "received null csv_parser");
    (*p).quote_char
}
