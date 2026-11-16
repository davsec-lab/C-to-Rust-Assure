pub unsafe fn allocate_matrix(size: i32) -> *mut *mut i32 {
    let matrix = libc::malloc((size as usize).wrapping_mul(std::mem::size_of::<*mut i32>()))
        as *mut *mut i32;
    if matrix.is_null() {
        libc::printf(b"Error: Memory allocation failed.\n\0".as_ptr() as *const libc::c_char);
        libc::exit(1);
    }
    let mut i: i32 = 0;
    while i < size {
        let row =
            libc::malloc((size as usize).wrapping_mul(std::mem::size_of::<i32>())) as *mut i32;
        *matrix.add(i as usize) = row;
        if row.is_null() {
            libc::printf(b"Error: Memory allocation failed.\n\0".as_ptr() as *const libc::c_char);
            libc::exit(1);
        }
        i += 1;
    }
    matrix
}
