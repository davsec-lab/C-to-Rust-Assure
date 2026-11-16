pub unsafe fn bmp_header_init_df(
    header: *mut _bmp_header,
    width: libc::c_int,
    height: libc::c_int,
) {
    let pixel_size: usize = std::mem::size_of::<_bmp_pixel>();
    let padding: libc::c_int = width % 4;
    let row: usize = pixel_size
        .wrapping_mul(width as usize)
        .wrapping_add(padding as usize);
    let total: usize = row.wrapping_mul(height.wrapping_abs() as usize);
    (*header).bfSize = total as libc::c_uint;
    (*header).bfReserved = 0;
    (*header).bfOffBits = 54;
    (*header).biSize = 40;
    (*header).biWidth = width;
    (*header).biHeight = height;
    (*header).biPlanes = 1;
    (*header).biBitCount = 24;
    (*header).biCompression = 0;
    (*header).biSizeImage = 0;
    (*header).biXPelsPerMeter = 0;
    (*header).biYPelsPerMeter = 0;
    (*header).biClrUsed = 0;
    (*header).biClrImportant = 0;
}
