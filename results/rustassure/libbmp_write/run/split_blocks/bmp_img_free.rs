pub fn bmp_img_free(img: &mut BmpImg) {
    // Free each row, then the row container itself.
    img.img_pixels.clear();
    img.img_pixels.shrink_to_fit();
}