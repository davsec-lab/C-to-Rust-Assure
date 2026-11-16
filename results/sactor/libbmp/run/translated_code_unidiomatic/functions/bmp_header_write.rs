pub unsafe fn bmp_header_write(header: *const _bmp_header, img_file: *mut libc::FILE) -> bmp_error {
    if header.is_null() {
        return bmp_error::BMP_HEADER_NOT_INITIALIZED;
    } else if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let magic: libc::c_ushort = 19778;
    libc::fwrite(
        &magic as *const libc::c_ushort as *const libc::c_void,
        std::mem::size_of::<libc::c_ushort>(),
        1,
        img_file,
    );
    libc::fwrite(
        header as *const libc::c_void,
        std::mem::size_of::<_bmp_header>(),
        1,
        img_file,
    );
    bmp_error::BMP_OK
}
