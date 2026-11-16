use std::fs::File;
use std::io::{Read, Seek, SeekFrom};

pub fn bmp_img_read(img: &mut BmpImg, filename: &str) -> BmpError {
    let mut img_file = match File::open(filename) {
        Ok(f) => f,
        Err(_) => return BmpError::BMP_FILE_NOT_OPENED,
    };
    let err = bmp_header_read(&mut img.img_header, Some(&mut img_file));
    if err != BmpError::BMP_OK {
        return err;
    }
    bmp_img_alloc(img);
    let height = img.img_header.bi_height;
    let h = height.unsigned_abs() as usize;
    let padding = (img.img_header.bi_width % 4) as i64;
    let items = img.img_header.bi_width as usize;
    let mut buf = vec![0u8; items * 3];
    for y in 0..h {
        let idx = if height > 0 { h - 1 - y } else { y };
        if img_file.read_exact(&mut buf).is_err() {
            return BmpError::BMP_ERROR;
        }
        let row = &mut img.img_pixels[idx];
        for (i, chunk) in buf.chunks_exact(3).enumerate() {
            row[i] = BmpPixel {
                blue: chunk[0],
                green: chunk[1],
                red: chunk[2],
            };
        }
        let _ = img_file.seek(SeekFrom::Current(padding));
    }
    BmpError::BMP_OK
}