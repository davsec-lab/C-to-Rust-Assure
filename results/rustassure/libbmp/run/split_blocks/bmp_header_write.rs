use std::fs::File;
use std::io::Write;

pub fn bmp_header_write(header: Option<&BmpHeader>, img_file: Option<&mut File>) -> BmpError {
    let header = match header {
        None => return BmpError::BMP_HEADER_NOT_INITIALIZED,
        Some(h) => h,
    };
    let img_file = match img_file {
        None => return BmpError::BMP_FILE_NOT_OPENED,
        Some(f) => f,
    };
    let magic: u16 = 19778;
    let _ = img_file.write_all(&magic.to_le_bytes());

    let mut buf: Vec<u8> = Vec::with_capacity(52);
    buf.extend_from_slice(&header.bf_size.to_le_bytes());
    buf.extend_from_slice(&header.bf_reserved.to_le_bytes());
    buf.extend_from_slice(&header.bf_off_bits.to_le_bytes());
    buf.extend_from_slice(&header.bi_size.to_le_bytes());
    buf.extend_from_slice(&header.bi_width.to_le_bytes());
    buf.extend_from_slice(&header.bi_height.to_le_bytes());
    buf.extend_from_slice(&header.bi_planes.to_le_bytes());
    buf.extend_from_slice(&header.bi_bit_count.to_le_bytes());
    buf.extend_from_slice(&header.bi_compression.to_le_bytes());
    buf.extend_from_slice(&header.bi_size_image.to_le_bytes());
    buf.extend_from_slice(&header.bi_x_pels_per_meter.to_le_bytes());
    buf.extend_from_slice(&header.bi_y_pels_per_meter.to_le_bytes());
    buf.extend_from_slice(&header.bi_clr_used.to_le_bytes());
    buf.extend_from_slice(&header.bi_clr_important.to_le_bytes());
    let _ = img_file.write_all(&buf);

    BmpError::BMP_OK
}