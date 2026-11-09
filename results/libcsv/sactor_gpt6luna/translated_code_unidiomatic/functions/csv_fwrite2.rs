pub unsafe fn csv_fwrite2(
    fp: *mut libc::FILE,
    src: *const libc::c_void,
    mut src_size: usize,
    quote: libc::c_uchar,
) -> libc::c_int {
    if fp.is_null() || src.is_null() {
        return 0;
    }
    if libc::fputc(quote as libc::c_int, fp) == -1 {
        return -1;
    }
    let mut csrc = src as *const libc::c_uchar;
    while src_size != 0 {
        let byte = *csrc;
        if byte == quote && libc::fputc(quote as libc::c_int, fp) == -1 {
            return -1;
        }
        if libc::fputc(byte as libc::c_int, fp) == -1 {
            return -1;
        }
        src_size -= 1;
        csrc = csrc.add(1);
    }
    if libc::fputc(quote as libc::c_int, fp) == -1 {
        return -1;
    }
    0
}
