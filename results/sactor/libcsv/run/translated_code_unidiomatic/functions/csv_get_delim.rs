pub unsafe fn csv_get_delim(p: *const csv_parser) -> libc::c_uchar {
    if p.is_null() {
        panic!("received null csv_parser");
    }
    (*p).delim_char
}
