pub fn bmp_img_alloc(img: &mut _bmp_img) {
    let h: usize = img.img_header.biHeight.unsigned_abs() as usize;
    let w: usize = img.img_header.biWidth.max(0) as usize;
    img.img_pixels = (0..h)
        .map(|_| {
            vec![
                _bmp_pixel {
                    blue: 0,
                    green: 0,
                    red: 0
                };
                w
            ]
        })
        .collect();
}
