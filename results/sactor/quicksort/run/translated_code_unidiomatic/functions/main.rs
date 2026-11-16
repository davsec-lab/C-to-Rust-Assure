pub fn main() -> () {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        println!("Usage: {} <array_size>", args[0]);
        std::process::exit(1);
    }
    let size: i32 = unsafe {
        let c = std::ffi::CString::new(args[1].clone())
            .unwrap_or_else(|_| std::ffi::CString::new("").unwrap());
        libc::atoi(c.as_ptr())
    };
    if size <= 0 {
        println!("Error: array size must be a positive integer.");
        std::process::exit(1);
    }
    unsafe {
        let arr =
            libc::malloc((size as usize).wrapping_mul(std::mem::size_of::<i32>())) as *mut i32;
        if arr.is_null() {
            println!("Error: Memory allocation failed.");
            std::process::exit(1);
        }
        libc::srand(10000);
        for i in 0..size {
            *arr.add(i as usize) = libc::rand();
        }
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
        quicksort(arr, 0, size - 1);
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
        let time_elapsed: f64 = diff_timespec(&end_time, &start_time);
        println!(
            "Time taken for quicksort of array size {}: {:.6} seconds",
            size, time_elapsed
        );
        libc::free(arr as *mut libc::c_void);
    }
}
