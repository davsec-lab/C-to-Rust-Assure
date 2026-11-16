pub unsafe fn bmp_img_free(img: *mut _bmp_img) {
    let h: usize = libc::abs((*img).img_header.biHeight) as usize;
    let mut y: usize = 0;
    while y < h {
        libc::free(*(*img).img_pixels.add(y) as *mut libc::c_void);
        y += 1;
    }
    libc::free((*img).img_pixels as *mut libc::c_void);
}
