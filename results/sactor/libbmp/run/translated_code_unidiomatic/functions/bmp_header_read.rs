pub unsafe fn bmp_header_read(header: *mut _bmp_header, img_file: *mut libc::FILE) -> bmp_error {
    if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let mut magic: libc::c_ushort = 0;
    if libc::fread(
        &mut magic as *mut libc::c_ushort as *mut libc::c_void,
        std::mem::size_of::<libc::c_ushort>(),
        1,
        img_file,
    ) != 1
        || magic != 19778
    {
        return bmp_error::BMP_INVALID_FILE;
    }
    if libc::fread(
        header as *mut libc::c_void,
        std::mem::size_of::<_bmp_header>(),
        1,
        img_file,
    ) != 1
    {
        return bmp_error::BMP_ERROR;
    }
    bmp_error::BMP_OK
}
