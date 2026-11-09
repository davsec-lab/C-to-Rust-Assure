pub unsafe fn csv_get_buffer_size(p: *const csv_parser) -> libc::size_t {
    if p.is_null() {
        0
    } else {
        unsafe { (*p).entry_size }
    }
}
