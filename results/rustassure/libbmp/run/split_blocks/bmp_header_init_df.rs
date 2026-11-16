pub fn bmp_header_init_df(header: &mut BmpHeader, width: i32, height: i32) {
    let size_px = std::mem::size_of::<BmpPixel>();
    let row = size_px
        .wrapping_mul(width as usize)
        .wrapping_add((width % 4) as usize);
    let total = row.wrapping_mul(height.unsigned_abs() as usize);
    header.bf_size = total as u32;
    header.bf_reserved = 0;
    header.bf_off_bits = 54;
    header.bi_size = 40;
    header.bi_width = width;
    header.bi_height = height;
    header.bi_planes = 1;
    header.bi_bit_count = 24;
    header.bi_compression = 0;
    header.bi_size_image = 0;
    header.bi_x_pels_per_meter = 0;
    header.bi_y_pels_per_meter = 0;
    header.bi_clr_used = 0;
    header.bi_clr_important = 0;
}