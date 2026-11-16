use std::fs::File;
use std::io::Write;

pub fn bmp_img_write(img: &BmpImg, filename: &str) -> bmp_error {
    let mut img_file = match File::create(filename) {
        Ok(f) => f,
        Err(_) => return bmp_error::BMP_FILE_NOT_OPENED,
    };
    let err = bmp_header_write(Some(&img.img_header), Some(&mut img_file as &mut dyn Write));
    if !matches!(err, bmp_error::BMP_OK) {
        return err;
    }
    let h = img.img_header.bi_height.unsigned_abs() as usize;
    let padding: [u8; 3] = [0, 0, 0];
    let width = if img.img_header.bi_width > 0 {
        img.img_header.bi_width as usize
    } else {
        0
    };
    for y in 0..h {
        let idx = bmp_row_index(&img.img_header, y);
        if let Some(row) = img.img_pixels.get(idx) {
            let n = width.min(row.len());
            let mut buf: Vec<u8> = Vec::with_capacity(n * 3);
            for p in row.iter().take(n) {
                buf.push(p.blue);
                buf.push(p.green);
                buf.push(p.red);
            }
            let _ = img_file.write_all(&buf);
        }
        let _ = img_file.write_all(&padding[..(width % 4)]);
    }
    bmp_error::BMP_OK
}