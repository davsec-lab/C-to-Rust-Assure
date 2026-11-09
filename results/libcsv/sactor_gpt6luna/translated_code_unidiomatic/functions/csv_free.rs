pub unsafe fn csv_free(p: *mut csv_parser) {
    if p.is_null() {
        return;
    }
    let parser = &mut *p;
    if !parser.entry_buf.is_null() {
        if let Some(free_func) = parser.free_func {
            free_func(parser.entry_buf as *mut libc::c_void);
        }
    }
    parser.entry_buf = core::ptr::null_mut();
    parser.entry_size = 0;
}
