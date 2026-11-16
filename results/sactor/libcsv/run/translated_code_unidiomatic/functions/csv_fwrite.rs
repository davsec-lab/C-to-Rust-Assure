pub unsafe fn csv_fwrite(
    fp: *mut libc::FILE,
    src: *const libc::c_void,
    src_size: libc::size_t,
) -> libc::c_int {
    csv_fwrite2(fp, src, src_size, 0x22u8)
}
