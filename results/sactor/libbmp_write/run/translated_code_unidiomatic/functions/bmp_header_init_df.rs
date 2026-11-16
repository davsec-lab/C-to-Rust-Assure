pub unsafe fn bmp_header_init_df(
    header: *mut _bmp_header,
    width: libc::c_int,
    height: libc::c_int,
) {
    let w = width as isize as usize;
    let row_pad = (width % 4) as isize as usize;
    let h = height.wrapping_abs() as isize as usize;
    let size = (core::mem::size_of::<_bmp_pixel>())
        .wrapping_mul(w)
        .wrapping_add(row_pad)
        .wrapping_mul(h);
    (*header).bfSize = size as libc::c_uint;
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
