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
pub unsafe fn free_matrix(matrix: *mut *mut i32, size: i32) {
    let mut i: i32 = 0;
    while i < size {
        libc::free(*matrix.offset(i as isize) as *mut libc::c_void);
        i += 1;
    }
    libc::free(matrix as *mut libc::c_void);
}
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
pub fn diff_timespec(time1: *mut libc::timespec, time0: *mut libc::timespec) -> f64 {
    unsafe {
        let sec = (*time1).tv_sec.wrapping_sub((*time0).tv_sec);
        let nsec = (*time1).tv_nsec.wrapping_sub((*time0).tv_nsec);
        (sec as f64) + (nsec as f64) / 1000000000.0
    }
}
pub fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        let prog = if !args.is_empty() {
            args[0].clone()
        } else {
            String::new()
        };
        println!("Usage: {} <matrix_size>", prog);
        std::process::exit(1);
    }
    let c_arg = std::ffi::CString::new(args[1].clone())
        .unwrap_or_else(|_| std::ffi::CString::new("").unwrap());
    let size: i32 = unsafe { libc::atoi(c_arg.as_ptr()) };
    if size <= 0 {
        println!("Error: matrix size must be a positive integer.");
        std::process::exit(1);
    }
    unsafe {
        libc::srand(10000);
        let a = allocate_matrix(size);
        let b = allocate_matrix(size);
        let c = allocate_matrix(size);
        fill_matrix(a, size);
        fill_matrix(b, size);
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
        multiply_matrices(a, b, c, size);
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
        let time_elapsed: f64 = diff_timespec(&mut end_time, &mut start_time);
        println!(
            "Time taken for matrix multiplication of size {} x {}: {:.6} seconds",
            size, size, time_elapsed
        );
        free_matrix(a, size);
        free_matrix(b, size);
        free_matrix(c, size);
    }
}
