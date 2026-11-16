pub fn main() -> () {
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        println!(
            "Usage: {} <directory>",
            args.get(0).map(|s| s.as_str()).unwrap_or("")
        );
        std::process::exit(1);
    }
    let directory = args[1].clone();
    let entries = match std::fs::read_dir(&directory) {
        Ok(e) => e,
        Err(_) => {
            println!("Error: Cannot open directory {}", directory);
            std::process::exit(1);
        }
    };
    let mut global_checksum: u64 = 0;
    let mut file_count: i32 = 0;
    let start_time = std::time::Instant::now();
    for entry in entries {
        let entry = match entry {
            Ok(e) => e,
            Err(_) => continue,
        };
        match entry.file_type() {
            Ok(ft) if ft.is_file() => {}
            _ => continue,
        }
        let name = entry.file_name().to_string_lossy().into_owned();
        let name_bytes = name.as_bytes();
        let len = name_bytes.len();
        if len < 5 || &name_bytes[len - 4..] != b".bmp" {
            continue;
        }
        let filepath = format!("{}/{}", directory, name);
        let mut img = _bmp_img {
            img_header: _bmp_header::default(),
            img_pixels: Vec::new(),
        };
        match bmp_img_read(&mut img, &filepath) {
            Ok(()) => {
                let mut img_checksum: u64 = 0;
                for row in img.img_pixels.iter() {
                    for p in row.iter() {
                        img_checksum = img_checksum.wrapping_add(p.red as u64);
                        img_checksum = img_checksum.wrapping_add(p.green as u64);
                        img_checksum = img_checksum.wrapping_add(p.blue as u64);
                    }
                }
                global_checksum = global_checksum.wrapping_add(img_checksum);
                file_count += 1;
                bmp_img_free(img);
            }
            Err(err) => {
                println!("Error reading {}: code {}", filepath, err.code());
            }
        }
    }
    let elapsed_seconds = start_time.elapsed().as_secs_f64();
    println!("Processed {} BMP files", file_count);
    println!("Global checksum: {}", global_checksum);
    println!(
        "libbmp_time computation time: {:.6} seconds",
        elapsed_seconds
    );
}
