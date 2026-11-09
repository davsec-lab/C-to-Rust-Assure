pub unsafe fn csv_init(p: *mut csv_parser, options: libc::c_uchar) -> libc::c_int {
    if p.is_null() {
        return -1;
    }
    (*p).entry_buf = std::ptr::null_mut();
    (*p).pstate = 0;
    (*p).quoted = 0;
    (*p).spaces = 0;
    (*p).entry_pos = 0;
    (*p).entry_size = 0;
    (*p).status = 0;
    (*p).options = options;
    (*p).quote_char = 0x22;
    (*p).delim_char = 0x2c;
    (*p).is_space = None;
    (*p).is_term = None;
    (*p).blk_size = 128;
    (*p).malloc_func = None;
    (*p).realloc_func = Some(libc::realloc);
    (*p).free_func = Some(libc::free);
    0
}
