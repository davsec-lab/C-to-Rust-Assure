pub unsafe fn print_matrix(matrix: *mut *mut i32, size: i32, name: *const libc::c_char) {
    libc::printf(b"Matrix %s:\n\0".as_ptr() as *const libc::c_char, name);
    let mut i: i32 = 0;
    while i < size {
        let row = *matrix.offset(i as isize);
        let mut j: i32 = 0;
        while j < size {
            libc::printf(
                b"%5d \0".as_ptr() as *const libc::c_char,
                *row.offset(j as isize) as libc::c_int,
            );
            j += 1;
        }
        libc::printf(b"\n\0".as_ptr() as *const libc::c_char);
        i += 1;
    }
    libc::printf(b"\n\0".as_ptr() as *const libc::c_char);
}
