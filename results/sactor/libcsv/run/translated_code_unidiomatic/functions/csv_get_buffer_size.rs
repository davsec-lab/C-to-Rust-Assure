use libc::size_t;
pub unsafe fn csv_get_buffer_size(p: *const csv_parser) -> size_t {
    if !p.is_null() {
        return (*p).entry_size;
    }
    0
}
