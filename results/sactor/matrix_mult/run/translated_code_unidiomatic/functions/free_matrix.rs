pub unsafe fn free_matrix(matrix: *mut *mut i32, size: i32) {
    let mut i: i32 = 0;
    while i < size {
        libc::free(*matrix.offset(i as isize) as *mut libc::c_void);
        i += 1;
    }
    libc::free(matrix as *mut libc::c_void);
}
