pub fn bmp_img_write(img: &_bmp_img, filename: &str) -> BmpResult<()> {
    use std::io::{BufWriter, Write};
    let file = match std::fs::File::create(filename) {
        Ok(f) => f,
        Err(_) => return Err(BmpError::FileNotOpened),
    };
    let mut writer = BufWriter::new(file);
    bmp_header_write(&img.img_header, &mut writer)?;
    let h: usize = img.img_header.biHeight.unsigned_abs() as usize;
    let padding: [u8; 3] = [0, 0, 0];
    let width = img.img_header.biWidth;
    let width_usize = width.max(0) as usize;
    let pad_count = ((width.max(0)) % 4) as usize;
    for y in 0..h {
        let idx = bmp_row_index(&img.img_header, y);
        if let Some(row) = img.img_pixels.get(idx) {
            let n = width_usize.min(row.len());
            for px in &row[..n] {
                let _ = writer.write_all(&[px.blue, px.green, px.red]);
            }
        }
        let _ = writer.write_all(&padding[..pad_count]);
    }
    let _ = writer.flush();
    Ok(())
}
