pub fn bmp_img_init_df(img: &mut BmpImg, width: i32, height: i32) {
    bmp_header_init_df(&mut img.img_header, width, height);
    bmp_img_alloc(img);
}