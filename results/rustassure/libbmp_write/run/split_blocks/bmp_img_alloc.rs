pub fn bmp_img_alloc(img: &mut BmpImg) {
    let h = img.img_header.bi_height.unsigned_abs() as usize;
    let w = if img.img_header.bi_width > 0 {
        img.img_header.bi_width as usize
    } else {
        0
    };
    img.img_pixels = Vec::with_capacity(h);
    for _y in 0..h {
        let mut row: Vec<BmpPixel> = Vec::with_capacity(w);
        for _x in 0..w {
            row.push(BmpPixel {
                blue: 0,
                green: 0,
                red: 0,
            });
        }
        img.img_pixels.push(row);
    }
}