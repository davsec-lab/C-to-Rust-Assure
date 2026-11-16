pub fn bmp_img_init_df(img: &mut _bmp_img, width: i32, height: i32) {
    img.img_header = bmp_header_init_df(width, height);
    bmp_img_alloc(img);
}
