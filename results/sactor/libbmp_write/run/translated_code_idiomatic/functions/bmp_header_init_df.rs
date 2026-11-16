pub fn bmp_header_init_df(width: i32, height: i32) -> _bmp_header {
    let w = width as isize as usize;
    let row_pad = (width % 4) as isize as usize;
    let h = height.wrapping_abs() as isize as usize;
    let size = (core::mem::size_of::<_bmp_pixel>())
        .wrapping_mul(w)
        .wrapping_add(row_pad)
        .wrapping_mul(h);
    _bmp_header {
        bfSize: size as u32,
        bfReserved: 0,
        bfOffBits: 54,
        biSize: 40,
        biWidth: width,
        biHeight: height,
        biPlanes: 1,
        biBitCount: 24,
        biCompression: 0,
        biSizeImage: 0,
        biXPelsPerMeter: 0,
        biYPelsPerMeter: 0,
        biClrUsed: 0,
        biClrImportant: 0,
    }
}
