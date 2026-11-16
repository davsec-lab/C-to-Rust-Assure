pub unsafe fn bmp_img_read(img: *mut _bmp_img, filename: *const libc::c_char) -> bmp_error {
    let img_file = libc::fopen(filename, b"rb\0".as_ptr() as *const libc::c_char);
    if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let err = bmp_header_read(&mut (*img).img_header as *mut _bmp_header, img_file);
    if err != bmp_error::BMP_OK {
        libc::fclose(img_file);
        return err;
    }
    bmp_img_alloc(img);
    let height = (*img).img_header.biHeight;
    let h: usize = (height as libc::c_int).wrapping_abs() as libc::c_int as usize;
    let offset: usize = if height > 0 { h.wrapping_sub(1) } else { 0 };
    let padding: usize = ((*img).img_header.biWidth % 4) as usize;
    let items: usize = (*img).img_header.biWidth as usize;
    let mut y: usize = 0;
    while y < h {
        let idx_i = offset.wrapping_sub(y) as libc::c_int;
        let idx = idx_i.wrapping_abs() as usize;
        let row = *(*img).img_pixels.add(idx);
        if libc::fread(
            row as *mut libc::c_void,
            std::mem::size_of::<_bmp_pixel>(),
            items,
            img_file,
        ) != items
        {
            libc::fclose(img_file);
            return bmp_error::BMP_ERROR;
        }
        libc::fseek(img_file, padding as libc::c_long, libc::SEEK_CUR);
        y += 1;
    }
    libc::fclose(img_file);
    bmp_error::BMP_OK
}
