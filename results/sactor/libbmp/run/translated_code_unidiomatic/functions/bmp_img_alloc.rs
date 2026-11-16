pub unsafe fn bmp_img_alloc(img: *mut _bmp_img) {
    let h: usize = (*img).img_header.biHeight.wrapping_abs() as usize;
    (*img).img_pixels =
        libc::malloc(std::mem::size_of::<*mut _bmp_pixel>() * h) as *mut *mut _bmp_pixel;
    let mut y: usize = 0;
    while y < h {
        let w = (*img).img_header.biWidth as usize;
        *(*img).img_pixels.add(y) =
            libc::malloc(std::mem::size_of::<_bmp_pixel>().wrapping_mul(w)) as *mut _bmp_pixel;
        y += 1;
    }
}
