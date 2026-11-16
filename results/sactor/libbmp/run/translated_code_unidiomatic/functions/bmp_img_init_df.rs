pub unsafe fn bmp_img_init_df(img: *mut _bmp_img, width: libc::c_int, height: libc::c_int) {
    bmp_header_init_df(std::ptr::addr_of_mut!((*img).img_header), width, height);
    bmp_img_alloc(img);
}
