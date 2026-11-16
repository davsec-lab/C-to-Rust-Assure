pub unsafe fn bmp_img_read(img: *mut _bmp_img, filename: *const libc::c_char) -> bmp_error {
    let img_file = libc::fopen(filename, b"rb\0".as_ptr() as *const libc::c_char);
    if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let err = bmp_header_read(&mut (*img).img_header, img_file);
    if err != bmp_error::BMP_OK {
        libc::fclose(img_file);
        return err;
    }
    bmp_img_alloc(img);
    let h = libc::abs((*img).img_header.biHeight) as usize;
    let padding = ((*img).img_header.biWidth % 4) as usize;
    let items = (*img).img_header.biWidth as usize;
    for y in 0..h {
        let row = bmp_row_index(&(*img).img_header, y);
        let row_ptr = *(*img).img_pixels.add(row);
        if libc::fread(
            row_ptr as *mut libc::c_void,
            std::mem::size_of::<_bmp_pixel>(),
            items,
            img_file,
        ) != items
        {
            libc::fclose(img_file);
            return bmp_error::BMP_ERROR;
        }
        libc::fseek(img_file, padding as libc::c_long, libc::SEEK_CUR);
    }
    libc::fclose(img_file);
    bmp_error::BMP_OK
}
