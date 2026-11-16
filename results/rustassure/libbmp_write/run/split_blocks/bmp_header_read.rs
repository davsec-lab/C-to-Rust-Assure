use std::fs::File;
use std::io::Read;

pub fn bmp_header_read(header: &mut BmpHeader, img_file: Option<&mut File>) -> bmp_error {
    let img_file = match img_file {
        None => return bmp_error::BMP_FILE_NOT_OPENED,
        Some(f) => f,
    };

    let mut magic_buf = [0u8; 2];
    if img_file.read_exact(&mut magic_buf).is_err() || u16::from_le_bytes(magic_buf) != 19778 {
        return bmp_error::BMP_INVALID_FILE;
    }

    let mut buf = [0u8; 52];
    if img_file.read_exact(&mut buf).is_err() {
        return bmp_error::BMP_ERROR;
    }

    let u32_at = |o: usize| u32::from_le_bytes([buf[o], buf[o + 1], buf[o + 2], buf[o + 3]]);
    let i32_at = |o: usize| i32::from_le_bytes([buf[o], buf[o + 1], buf[o + 2], buf[o + 3]]);
    let u16_at = |o: usize| u16::from_le_bytes([buf[o], buf[o + 1]]);

    header.bf_size = u32_at(0);
    header.bf_reserved = u32_at(4);
    header.bf_off_bits = u32_at(8);
    header.bi_size = u32_at(12);
    header.bi_width = i32_at(16);
    header.bi_height = i32_at(20);
    header.bi_planes = u16_at(24);
    header.bi_bit_count = u16_at(26);
    header.bi_compression = u32_at(28);
    header.bi_size_image = u32_at(32);
    header.bi_x_pels_per_meter = i32_at(36);
    header.bi_y_pels_per_meter = i32_at(40);
    header.bi_clr_used = u32_at(44);
    header.bi_clr_important = u32_at(48);

    bmp_error::BMP_OK
}