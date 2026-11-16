pub unsafe fn csv_free(p: *mut csv_parser) {
    if p.is_null() {
        return;
    }
    if !(*p).entry_buf.is_null() {
        if let Some(f) = (*p).free_func {
            f((*p).entry_buf as *mut libc::c_void);
        }
    }
    (*p).entry_buf = std::ptr::null_mut();
    (*p).entry_size = 0;
    return;
}
