use libc::size_t;
#[no_mangle]
pub unsafe fn csv_set_blk_size(p: *mut csv_parser, size: size_t) {
    if !p.is_null() {
        (*p).blk_size = size;
    }
}
