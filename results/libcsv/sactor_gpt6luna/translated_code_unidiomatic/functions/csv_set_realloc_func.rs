pub unsafe fn csv_set_realloc_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(*mut libc::c_void, libc::size_t) -> *mut libc::c_void>,
) {
    if !p.is_null() {
        if let Some(func) = f {
            (*p).realloc_func = Some(func);
        }
    }
}
