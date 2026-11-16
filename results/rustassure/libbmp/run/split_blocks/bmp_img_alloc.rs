pub fn bmp_img_alloc(img: &mut BmpImg) {
    let h = img.img_header.bi_height.unsigned_abs() as usize;
    let w = if img.img_header.bi_width > 0 {
        img.img_header.bi_width as usize
    } else {
        0
    };
    img.img_pixels = Vec::with_capacity(h);
    for _ in 0..h {
        let row: Vec<BmpPixel> = (0..w)
            .map(|_| BmpPixel {
                blue: 0,
                green: 0,
                red: 0,
            })
            .collect();
        img.img_pixels.push(row);
    }
}