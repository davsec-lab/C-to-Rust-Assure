pub fn bmp_header_read<R: std::io::Read>(img_file: Option<&mut R>) -> BmpResult<_bmp_header> {
    let file = match img_file {
        Some(f) => f,
        None => return Err(BmpError::FileNotOpened),
    };
    let mut magic = [0u8; 2];
    if file.read_exact(&mut magic).is_err() || u16::from_le_bytes(magic) != 19778 {
        return Err(BmpError::InvalidFile);
    }
    let mut buf = [0u8; 52];
    if file.read_exact(&mut buf).is_err() {
        return Err(BmpError::Error);
    }
    fn u32_at(b: &[u8], off: usize) -> u32 {
        u32::from_le_bytes([b[off], b[off + 1], b[off + 2], b[off + 3]])
    }
    fn i32_at(b: &[u8], off: usize) -> i32 {
        i32::from_le_bytes([b[off], b[off + 1], b[off + 2], b[off + 3]])
    }
    fn u16_at(b: &[u8], off: usize) -> u16 {
        u16::from_le_bytes([b[off], b[off + 1]])
    }
    Ok(_bmp_header {
        bfSize: u32_at(&buf, 0),
        bfReserved: u32_at(&buf, 4),
        bfOffBits: u32_at(&buf, 8),
        biSize: u32_at(&buf, 12),
        biWidth: i32_at(&buf, 16),
        biHeight: i32_at(&buf, 20),
        biPlanes: u16_at(&buf, 24),
        biBitCount: u16_at(&buf, 26),
        biCompression: u32_at(&buf, 28),
        biSizeImage: u32_at(&buf, 32),
        biXPelsPerMeter: i32_at(&buf, 36),
        biYPelsPerMeter: i32_at(&buf, 40),
        biClrUsed: u32_at(&buf, 44),
        biClrImportant: u32_at(&buf, 48),
    })
}
