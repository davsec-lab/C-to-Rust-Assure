pub fn bmp_header_init_df(width: i32, height: i32) -> _bmp_header {
    let pixel_size: usize = std::mem::size_of::<_bmp_pixel>();
    let padding: i32 = width % 4;
    let row: usize = pixel_size
        .wrapping_mul(width as usize)
        .wrapping_add(padding as usize);
    let total: usize = row.wrapping_mul(height.wrapping_abs() as usize);
    _bmp_header {
        bfSize: total as u32,
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
