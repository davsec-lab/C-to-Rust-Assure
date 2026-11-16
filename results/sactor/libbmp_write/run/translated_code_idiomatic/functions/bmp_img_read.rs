pub fn bmp_img_read(img: &mut _bmp_img, filename: &str) -> BmpResult<()> {
    use std::fs::File;
    use std::io::{BufReader, Read, Seek, SeekFrom};
    let file = File::open(filename).map_err(|_| BmpError::FileNotOpened)?;
    let mut reader = BufReader::new(file);
    img.img_header = bmp_header_read(Some(&mut reader))?;
    bmp_img_alloc(img);
    let h = img.img_header.biHeight.unsigned_abs() as usize;
    let width = img.img_header.biWidth;
    let padding = (width % 4) as i64;
    let items = if width > 0 { width as usize } else { 0 };
    let mut buf = vec![0u8; items * 3];
    for y in 0..h {
        let row = bmp_row_index(&img.img_header, y);
        reader.read_exact(&mut buf).map_err(|_| BmpError::Error)?;
        let pixels: Vec<_bmp_pixel> = buf
            .chunks_exact(3)
            .map(|c| _bmp_pixel {
                blue: c[0],
                green: c[1],
                red: c[2],
            })
            .collect();
        img.img_pixels[row] = pixels;
        let _ = reader.seek(SeekFrom::Current(padding));
    }
    Ok(())
}
