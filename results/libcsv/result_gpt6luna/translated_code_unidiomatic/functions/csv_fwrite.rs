pub unsafe fn csv_fwrite(
    fp: *mut libc::FILE,
    src: *const libc::c_void,
    src_size: usize,
) -> libc::c_int {
    csv_fwrite2(fp, src, src_size, 0x22 as libc::c_uchar)
}
