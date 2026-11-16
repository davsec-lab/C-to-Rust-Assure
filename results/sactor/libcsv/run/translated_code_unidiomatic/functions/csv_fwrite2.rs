pub unsafe fn csv_fwrite2(
    fp: *mut libc::FILE,
    src: *const libc::c_void,
    src_size: libc::size_t,
    quote: u8,
) -> libc::c_int {
    let mut csrc = src as *const u8;
    let mut src_size = src_size;
    if fp.is_null() || src.is_null() {
        return 0;
    }
    if libc::fputc(quote as libc::c_int, fp) == -1 {
        return -1;
    }
    while src_size != 0 {
        if *csrc == quote {
            if libc::fputc(quote as libc::c_int, fp) == -1 {
                return -1;
            }
        }
        if libc::fputc(*csrc as libc::c_int, fp) == -1 {
            return -1;
        }
        src_size -= 1;
        csrc = csrc.add(1);
    }
    0
}
