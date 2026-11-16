pub unsafe fn fill_matrix(matrix: *mut *mut libc::c_int, size: libc::c_int) {
    let mut i: libc::c_int = 0;
    while i < size {
        let mut j: libc::c_int = 0;
        while j < size {
            let row = *matrix.offset(i as isize);
            *row.offset(j as isize) = libc::rand();
            j += 1;
        }
        i += 1;
    }
}
