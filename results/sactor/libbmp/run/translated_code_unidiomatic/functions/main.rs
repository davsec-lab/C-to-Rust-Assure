pub fn main() -> () {
    use std::ffi::{CStr, CString};
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        println!(
            "Usage: {} <directory>",
            args.get(0).map(|s| s.as_str()).unwrap_or("")
        );
        std::process::exit(1);
    }
    let directory = args[1].clone();
    let c_dir = match CString::new(directory.clone()) {
        Ok(c) => c,
        Err(_) => {
            println!("Error: Cannot open directory {}", directory);
            std::process::exit(1);
        }
    };
    unsafe {
        let dir = libc::opendir(c_dir.as_ptr());
        if dir.is_null() {
            println!("Error: Cannot open directory {}", directory);
            std::process::exit(1);
        }
        let mut global_checksum: u64 = 0;
        let mut file_count: i32 = 0;
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
        loop {
            let entry = libc::readdir(dir);
            if entry.is_null() {
                break;
            }
            if (*entry).d_type != libc::DT_REG {
                continue;
            }
            let name_ptr = (*entry).d_name.as_ptr();
            let name_c = CStr::from_ptr(name_ptr);
            let name_bytes = name_c.to_bytes();
            let len = name_bytes.len();
            if len < 5 || &name_bytes[len - 4..] != b".bmp" {
                continue;
            }
            let mut filepath = [0 as libc::c_char; 1024];
            let fmt = b"%s/%s\0";
            libc::snprintf(
                filepath.as_mut_ptr(),
                filepath.len(),
                fmt.as_ptr() as *const libc::c_char,
                c_dir.as_ptr(),
                name_ptr,
            );
            let mut img: _bmp_img = std::mem::zeroed();
            let err = bmp_img_read(&mut img, filepath.as_ptr());
            if err == bmp_error::BMP_OK {
                let mut img_checksum: u64 = 0;
                let h = img.img_header.biHeight.wrapping_abs();
                let w = img.img_header.biWidth;
                for y in 0..h {
                    let row = *img.img_pixels.offset(y as isize);
                    for x in 0..w {
                        let p = *row.offset(x as isize);
                        img_checksum = img_checksum.wrapping_add(p.red as u64);
                        img_checksum = img_checksum.wrapping_add(p.green as u64);
                        img_checksum = img_checksum.wrapping_add(p.blue as u64);
                    }
                }
                global_checksum = global_checksum.wrapping_add(img_checksum);
                file_count += 1;
                bmp_img_free(&mut img);
            } else {
                let fp = CStr::from_ptr(filepath.as_ptr()).to_string_lossy();
                println!("Error reading {}: code {}", fp, err as i32);
            }
        }
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
        libc::closedir(dir);
        let elapsed_seconds = (end_time.tv_sec - start_time.tv_sec) as f64
            + (end_time.tv_nsec - start_time.tv_nsec) as f64 / 1000000000.0;
        println!("Processed {} BMP files", file_count);
        println!("Global checksum: {}", global_checksum);
        println!(
            "libbmp_time computation time: {:.6} seconds",
            elapsed_seconds
        );
    }
}
