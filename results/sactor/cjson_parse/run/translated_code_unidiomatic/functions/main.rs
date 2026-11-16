pub fn main() -> () {
    unsafe {
        let args: Vec<String> = std::env::args().collect();
        if args.len() < 2 {
            let name = if args.len() > 0 {
                args[0].clone()
            } else {
                String::new()
            };
            eprintln!("Usage: {} <file.json>", name);
            std::process::exit(1);
        }
        let path = args[1].clone();
        let cpath = std::ffi::CString::new(path.clone()).unwrap();
        let f = libc::fopen(cpath.as_ptr(), b"rb\0".as_ptr() as *const libc::c_char);
        if f.is_null() {
            eprintln!("Error: cannot open '{}'", path);
            std::process::exit(1);
        }
        libc::fseek(f, 0, libc::SEEK_END);
        let length: libc::c_long = libc::ftell(f);
        libc::fseek(f, 0, libc::SEEK_SET);
        if length < 0 {
            eprintln!("Error: cannot determine file size");
            libc::fclose(f);
            std::process::exit(1);
        }
        let content = libc::malloc((length as usize) + 1) as *mut libc::c_char;
        if content.is_null() {
            eprintln!("Error: out of memory");
            libc::fclose(f);
            std::process::exit(1);
        }
        if libc::fread(content as *mut libc::c_void, 1, length as usize, f) != length as usize {
            eprintln!("Error: failed to read file");
            libc::free(content as *mut libc::c_void);
            libc::fclose(f);
            std::process::exit(1);
        }
        libc::fclose(f);
        *content.add(length as usize) = 0;
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        let mut checksum: f64 = 0.0;
        let iterations: libc::c_long = 5000;
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
        let mut i: libc::c_long = 0;
        while i < iterations {
            let root = cJSON_ParseWithLength(content as *const libc::c_char, (length as usize) + 1);
            if root.is_null() {
                let err = cJSON_GetErrorPtr();
                let msg = if !err.is_null() {
                    std::ffi::CStr::from_ptr(err).to_string_lossy().into_owned()
                } else {
                    "(unknown)".to_string()
                };
                eprintln!("Parse error near: {}", msg);
                libc::free(content as *mut libc::c_void);
                std::process::exit(1);
            }
            checksum += tree_checksum(root as *const cJSON);
            cJSON_Delete(root);
            i += 1;
        }
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
        let time_elapsed = diff_timespec(&end_time, &start_time);
        libc::free(content as *mut libc::c_void);
        println!(
            "Time taken to parse json {}: {:.6} seconds",
            path, time_elapsed
        );
        println!("Checksum: {:.0}", checksum);
    }
}
