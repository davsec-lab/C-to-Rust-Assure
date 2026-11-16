pub fn main() -> () {
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
