pub unsafe fn csv_write(
    dest: *mut libc::c_void,
    dest_size: usize,
    src: *const libc::c_void,
    src_size: usize,
) -> usize {
    csv_write2(dest, dest_size, src, src_size, 0x22)
}
