pub fn bmp_img_read(img: &mut _bmp_img, filename: &str) -> BmpResult<()> {
    use std::io::{BufReader, Read};
    let file = match std::fs::File::open(filename) {
        Ok(f) => f,
        Err(_) => return Err(BmpError::FileNotOpened),
    };
    let mut reader = BufReader::new(file);
    img.img_header = bmp_header_read(Some(&mut reader))?;
    bmp_img_alloc(img);
    let height = img.img_header.biHeight;
    let h: usize = height.unsigned_abs() as usize;
    let offset: usize = if height > 0 { h.wrapping_sub(1) } else { 0 };
    let width = img.img_header.biWidth;
    let padding: i64 = (width % 4) as i64;
    let items: usize = usize::try_from(width).map_err(|_| BmpError::Error)?;
    let mut buf = vec![0u8; items * 3];
    for y in 0..h {
        let idx = if height > 0 { offset - y } else { y };
        let row = img.img_pixels.get_mut(idx).ok_or(BmpError::Error)?;
        if row.len() < items {
            return Err(BmpError::Error);
        }
        reader.read_exact(&mut buf).map_err(|_| BmpError::Error)?;
        for (px, c) in row.iter_mut().zip(buf.chunks_exact(3)) {
            px.blue = c[0];
            px.green = c[1];
            px.red = c[2];
        }
        let _ = reader.seek_relative(padding);
    }
    Ok(())
}
