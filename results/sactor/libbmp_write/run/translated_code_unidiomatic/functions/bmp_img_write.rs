pub unsafe fn bmp_img_write(img: *const _bmp_img, filename: *const libc::c_char) -> bmp_error {
    let img_file = libc::fopen(filename, b"wb\0".as_ptr() as *const libc::c_char);
    if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let err = bmp_header_write(&(*img).img_header as *const _bmp_header, img_file);
    if err != bmp_error::BMP_OK {
        libc::fclose(img_file);
        return err;
    }
    let h: usize = libc::abs((*img).img_header.biHeight) as usize;
    let padding: [libc::c_uchar; 3] = [0, 0, 0];
    let width = (*img).img_header.biWidth;
    let pad_count = (width % 4) as usize;
    for y in 0..h {
        let idx = bmp_row_index(&(*img).img_header as *const _bmp_header, y);
        let row = *(*img).img_pixels.add(idx);
        libc::fwrite(
            row as *const libc::c_void,
            std::mem::size_of::<_bmp_pixel>(),
            width as usize,
            img_file,
        );
        libc::fwrite(
            padding.as_ptr() as *const libc::c_void,
            std::mem::size_of::<libc::c_uchar>(),
            pad_count,
            img_file,
        );
    }
    libc::fclose(img_file);
    bmp_error::BMP_OK
}
