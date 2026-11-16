pub fn main() -> () {
    use std::ffi::CString;
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 3 {
        let name = if !args.is_empty() {
            args[0].clone()
        } else {
            String::new()
        };
        eprintln!("Usage: {} <width> <height>", name);
        std::process::exit(1);
    }
    unsafe {
        let a1 = CString::new(args[1].as_bytes()).unwrap_or_default();
        let mut endptr: *mut libc::c_char = std::ptr::null_mut();
        let width: libc::c_long = libc::strtol(a1.as_ptr(), &mut endptr, 10);
        if *a1.as_ptr() == 0 || *endptr != 0 || width <= 0 {
            eprintln!("Invalid width: {}", args[1]);
            std::process::exit(1);
        }
        let a2 = CString::new(args[2].as_bytes()).unwrap_or_default();
        endptr = std::ptr::null_mut();
        let height: libc::c_long = libc::strtol(a2.as_ptr(), &mut endptr, 10);
        if *a2.as_ptr() == 0 || *endptr != 0 || height <= 0 {
            eprintln!("Invalid height: {}", args[2]);
            std::process::exit(1);
        }
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        libc::srand(42);
        if get_now(&mut start_time) != 0 {
            eprintln!("Failed to get start time");
            std::process::exit(1);
        }
        let mut img: _bmp_img = std::mem::zeroed();
        bmp_img_init_df(&mut img, width as libc::c_int, height as libc::c_int);
        for y in 0..height {
            for x in 0..width {
                let red = (libc::rand() % 256) as libc::c_uchar;
                let green = (libc::rand() % 256) as libc::c_uchar;
                let blue = (libc::rand() % 256) as libc::c_uchar;
                let row = *img.img_pixels.offset(y as isize);
                bmp_pixel_init(row.offset(x as isize), red, green, blue);
            }
        }
        let output_path = "../file/test.bmp";
        let c_output = CString::new(output_path).unwrap();
        if bmp_img_write(&img, c_output.as_ptr()) != bmp_error::BMP_OK {
            eprintln!("Failed to write BMP file: {}", output_path);
            bmp_img_free(&mut img);
            std::process::exit(1);
        }
        bmp_img_free(&mut img);
        if get_now(&mut end_time) != 0 {
            eprintln!("Failed to get end time");
            std::process::exit(1);
        }
        print_file_md5(c_output.as_ptr());
        let elapsed_seconds = (end_time.tv_sec - start_time.tv_sec) as f64
            + (end_time.tv_nsec - start_time.tv_nsec) as f64 / 1000000000.0;
        println!("elapsed_time_seconds: {:.6}", elapsed_seconds);
    }
}
