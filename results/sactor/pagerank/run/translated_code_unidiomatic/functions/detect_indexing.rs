pub unsafe fn detect_indexing(filename: *const libc::c_char) -> libc::c_int {
    let fp = libc::fopen(filename, b"r\0".as_ptr() as *const libc::c_char);
    if fp.is_null() {
        return 1;
    }
    let mut min_node: libc::c_int = libc::c_int::MAX;
    let mut samples: libc::c_int = 0;
    let mut line: [libc::c_char; 256] = [0; 256];
    while !libc::fgets(line.as_mut_ptr(), line.len() as libc::c_int, fp).is_null() && samples < 100
    {
        if line[0] == b'#' as libc::c_char {
            continue;
        }
        let mut fromnode: libc::c_int = 0;
        let mut tonode: libc::c_int = 0;
        let n = libc::sscanf(
            line.as_ptr(),
            b"%d %d\0".as_ptr() as *const libc::c_char,
            &mut fromnode as *mut libc::c_int,
            &mut tonode as *mut libc::c_int,
        );
        if n == 2 {
            if fromnode < min_node {
                min_node = fromnode;
            }
            if tonode < min_node {
                min_node = tonode;
            }
            samples += 1;
        }
    }
    libc::fclose(fp);
    let is_one_indexed: libc::c_int = if min_node != 0 { 1 } else { 0 };
    let s: &[u8] = if is_one_indexed != 0 {
        b"1-indexed\0"
    } else {
        b"0-indexed\0"
    };
    libc::printf(
        b"Detected indexing: %s (min node ID: %d)\n\0".as_ptr() as *const libc::c_char,
        s.as_ptr() as *const libc::c_char,
        min_node,
    );
    is_one_indexed
}
