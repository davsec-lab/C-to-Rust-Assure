pub unsafe fn bmp_pixel_init(
    pxl: *mut _bmp_pixel,
    red: libc::c_uchar,
    green: libc::c_uchar,
    blue: libc::c_uchar,
) {
    (*pxl).red = red;
    (*pxl).green = green;
    (*pxl).blue = blue;
}
