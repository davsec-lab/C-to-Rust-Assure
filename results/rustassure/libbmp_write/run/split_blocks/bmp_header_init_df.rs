pub fn bmp_header_init_df(header: &mut BmpHeader, width: i32, height: i32) {
    let px = std::mem::size_of::<BmpPixel>() as u64;
    let w = width as i64 as u64;
    let rem = (width % 4) as i64 as u64;
    let h = height.wrapping_abs() as i64 as u64;
    header.bf_size = (px
        .wrapping_mul(w)
        .wrapping_add(rem))
        .wrapping_mul(h) as u32;
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