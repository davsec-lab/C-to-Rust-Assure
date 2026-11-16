pub unsafe fn bmp_img_alloc(img: *mut _bmp_img) {
    let h: usize = libc::abs((*img).img_header.biHeight) as usize;
    (*img).img_pixels = libc::malloc(std::mem::size_of::<*mut _bmp_pixel>().wrapping_mul(h))
        as *mut *mut _bmp_pixel;
    let mut y: usize = 0;
    while y < h {
        *(*img).img_pixels.add(y) = libc::malloc(
            std::mem::size_of::<_bmp_pixel>().wrapping_mul((*img).img_header.biWidth as usize),
        ) as *mut _bmp_pixel;
        y += 1;
    }
}
