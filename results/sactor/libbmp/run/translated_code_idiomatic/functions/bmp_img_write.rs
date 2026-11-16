pub fn bmp_img_write(img: &_bmp_img, filename: &str) -> BmpResult<()> {
    use std::io::{BufWriter, Write};
    let file = std::fs::File::create(filename).map_err(|_| BmpError::FileNotOpened)?;
    let mut writer = BufWriter::new(file);
    bmp_header_write(&img.img_header, &mut writer)?;
    let height = img.img_header.biHeight;
    let h = height.wrapping_abs() as u32 as usize;
    let width = img.img_header.biWidth;
    let w = if width > 0 { width as usize } else { 0 };
    let pad_len = if width > 0 { (width % 4) as usize } else { 0 };
    let padding = [0u8; 3];
    for y in 0..h {
        let idx = if height > 0 { h - 1 - y } else { y };
        let row = img.img_pixels.get(idx).ok_or(BmpError::Error)?;
        let mut buf: Vec<u8> = Vec::with_capacity(w * 3);
        for p in row.iter().take(w) {
            buf.push(p.blue);
            buf.push(p.green);
            buf.push(p.red);
        }
        let _ = writer.write_all(&buf);
        let _ = writer.write_all(&padding[..pad_len]);
    }
    let _ = writer.flush();
    Ok(())
}
