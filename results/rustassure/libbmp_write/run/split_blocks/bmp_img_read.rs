use std::fs::File;
use std::io::{Read, Seek, SeekFrom};

pub fn bmp_img_read(img: &mut BmpImg, filename: &str) -> bmp_error {
    let mut img_file = match File::open(filename) {
        Ok(f) => f,
        Err(_) => return bmp_error::BMP_FILE_NOT_OPENED,
    };

    let err = bmp_header_read(&mut img.img_header, Some(&mut img_file));
    match err {
        bmp_error::BMP_OK => {}
        other => {
            return other;
        }
    }

    bmp_img_alloc(img);

    let h = img.img_header.bi_height.unsigned_abs() as usize;
    let padding = (img.img_header.bi_width % 4) as usize;
    let items = img.img_header.bi_width as usize;

    let mut buf = vec![0u8; items * 3];

    for y in 0..h {
        if img_file.read_exact(&mut buf).is_err() {
            return bmp_error::BMP_ERROR;
        }
        let idx = bmp_row_index(&img.img_header, y);
        let row = &mut img.img_pixels[idx];
        for (px, chunk) in row.iter_mut().zip(buf.chunks(3)) {
            px.blue = chunk[0];
            px.green = chunk[1];
            px.red = chunk[2];
        }
        let _ = img_file.seek(SeekFrom::Current(padding as i64));
    }

    bmp_error::BMP_OK
}