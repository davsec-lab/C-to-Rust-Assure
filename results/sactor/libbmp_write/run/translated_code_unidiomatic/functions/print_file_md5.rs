pub fn print_file_md5(filename: *const libc::c_char) -> libc::c_int {
    unsafe {
        let mut digest: [libc::c_uchar; 16] = [0; 16];
        let mut buffer: [libc::c_uchar; 4096] = [0; 4096];
        let mut ctx: md5_ctx = std::mem::zeroed();
        let file = libc::fopen(filename, b"rb\0".as_ptr() as *const libc::c_char);
        if file.is_null() {
            libc::perror(b"fopen\0".as_ptr() as *const libc::c_char);
            return -1;
        }
        md5_init(&mut ctx);
        loop {
            let bytes_read = libc::fread(
                buffer.as_mut_ptr() as *mut libc::c_void,
                1,
                buffer.len(),
                file,
            );
            if bytes_read > 0 {
                md5_update(&mut ctx, buffer.as_ptr(), bytes_read as usize);
            }
            if (bytes_read as usize) < buffer.len() {
                if libc::ferror(file) != 0 {
                    libc::perror(b"fread\0".as_ptr() as *const libc::c_char);
                    libc::fclose(file);
                    return -1;
                }
                break;
            }
        }
        libc::fclose(file);
        md5_final(&mut ctx, digest.as_mut_ptr());
        libc::printf(b"md5: \0".as_ptr() as *const libc::c_char);
        for i in 0..digest.len() {
            libc::printf(
                b"%02x\0".as_ptr() as *const libc::c_char,
                digest[i] as libc::c_uint,
            );
        }
        libc::printf(b"\n\0".as_ptr() as *const libc::c_char);
        0
    }
}
