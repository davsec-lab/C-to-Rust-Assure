pub fn main() -> () {
    unsafe {
        let args: Vec<String> = std::env::args().collect();
        let argc = args.len();
        if argc < 2 {
            libc::fprintf(
                stderr,
                b"Usage: csvvalid files\n\0".as_ptr() as *const libc::c_char,
            );
            std::process::exit(1);
        }
        let mut p: csv_parser = std::mem::zeroed();
        if csv_init(&mut p, 1) != 0 {
            libc::fprintf(
                stderr,
                b"Failed to initialize csv parser\n\0".as_ptr() as *const libc::c_char,
            );
            std::process::exit(1);
        }
        let mut buf = [0u8; 1024];
        for i in 1..argc {
            let mut pos: libc::size_t = 0;
            let cname = match std::ffi::CString::new(args[i].as_bytes()) {
                Ok(c) => c,
                Err(_) => {
                    continue;
                }
            };
            let fp = libc::fopen(cname.as_ptr(), b"rb\0".as_ptr() as *const libc::c_char);
            if fp.is_null() {
                libc::fprintf(
                    stderr,
                    b"Failed to open %s: %s, skipping\n\0".as_ptr() as *const libc::c_char,
                    cname.as_ptr(),
                    libc::strerror(*libc::__errno_location()),
                );
                continue;
            }
            let mut start_time: libc::timespec = std::mem::zeroed();
            let mut end_time: libc::timespec = std::mem::zeroed();
            let mut time_elapsed: f64;
            libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
            'main: {
                loop {
                    let bytes_read =
                        libc::fread(buf.as_mut_ptr() as *mut libc::c_void, 1, 1024, fp);
                    if bytes_read == 0 {
                        break;
                    }
                    let retval = csv_parse(
                        &mut p,
                        buf.as_ptr() as *const libc::c_void,
                        bytes_read,
                        None,
                        None,
                        std::ptr::null_mut(),
                    );
                    if retval != bytes_read {
                        if csv_error(&p) == 1 {
                            libc::printf(
                                b"%s: malformed at byte %lu\n\0".as_ptr() as *const libc::c_char,
                                cname.as_ptr(),
                                (pos as libc::c_ulong)
                                    .wrapping_add(retval as libc::c_ulong)
                                    .wrapping_add(1),
                            );
                            break 'main;
                        } else {
                            libc::printf(
                                b"Error while processing %s: %s\n\0".as_ptr()
                                    as *const libc::c_char,
                                cname.as_ptr(),
                                csv_strerror(csv_error(&p)),
                            );
                            break 'main;
                        }
                    }
                    pos += bytes_read;
                }
                libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
                time_elapsed = diff_timespec(&mut end_time, &mut start_time);
                libc::printf(
                    b"Time taken to parse csv %s: %f seconds\n\0".as_ptr() as *const libc::c_char,
                    cname.as_ptr(),
                    time_elapsed,
                );
                libc::printf(
                    b"%s well-formed\n\0".as_ptr() as *const libc::c_char,
                    cname.as_ptr(),
                );
            }
            let _ = pos;
            libc::fclose(fp);
            csv_fini(&mut p, None, None, std::ptr::null_mut());
        }
        csv_free(&mut p);
    }
}
