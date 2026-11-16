pub unsafe fn csv_write(
    dest: *mut libc::c_void,
    dest_size: libc::size_t,
    src: *const libc::c_void,
    src_size: libc::size_t,
) -> libc::size_t {
    csv_write2(dest, dest_size, src, src_size, 0x22 as libc::c_uchar)
}
