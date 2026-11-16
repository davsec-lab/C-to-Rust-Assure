pub unsafe fn multiply_matrices(a: *mut *mut i32, b: *mut *mut i32, c: *mut *mut i32, size: i32) {
    let mut i: i32 = 0;
    while i < size {
        let mut j: i32 = 0;
        while j < size {
            let c_row = *c.offset(i as isize);
            *c_row.offset(j as isize) = 0;
            let mut k: i32 = 0;
            while k < size {
                let a_row = *a.offset(i as isize);
                let b_row = *b.offset(k as isize);
                let prod = (*a_row.offset(k as isize)).wrapping_mul(*b_row.offset(j as isize));
                let cur = *c_row.offset(j as isize);
                *c_row.offset(j as isize) = cur.wrapping_add(prod);
                k += 1;
            }
            j += 1;
        }
        i += 1;
    }
}
