use std::fs::File;
use std::io::Write;

pub fn bmp_img_write(img: &BmpImg, filename: &str) -> BmpError {
    let mut img_file = match File::create(filename) {
        Ok(f) => f,
        Err(_) => return BmpError::BMP_FILE_NOT_OPENED,
    };

    let err = bmp_header_write(Some(&img.img_header), Some(&mut img_file));
    if err != BmpError::BMP_OK {
        drop(img_file);
        return err;
    }

    let h: usize = img.img_header.bi_height.unsigned_abs() as usize;
    let offset: usize = if img.img_header.bi_height > 0 { h.wrapping_sub(1) } else { 0 };
    let padding: [u8; 3] = [0, 0, 0];

    let width: usize = if img.img_header.bi_width > 0 {
        img.img_header.bi_width as usize
    } else {
        0
    };
    let pad_count: usize = {
        let m = img.img_header.bi_width % 4;
        if m > 0 { m as usize } else { 0 }
    };

    for y in 0..h {
        let idx = (offset.wrapping_sub(y) as i32).wrapping_abs() as usize;
        if let Some(row) = img.img_pixels.get(idx) {
            let mut buf: Vec<u8> = Vec::with_capacity(width * 3);
            for p in row.iter().take(width) {
                buf.push(p.blue);
                buf.push(p.green);
                buf.push(p.red);
            }
            let _ = img_file.write_all(&buf);
        }
        let _ = img_file.write_all(&padding[..pad_count.min(3)]);
    }

    drop(img_file);
    BmpError::BMP_OK
}