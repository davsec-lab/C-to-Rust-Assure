pub fn main() -> () {
    struct GlibcRand {
        ring: [u32; 31],
        i: usize,
    }
    impl GlibcRand {
        fn new(seed: u32) -> Self {
            let mut r = [0u32; 34];
            let seed = if seed == 0 { 1 } else { seed };
            r[0] = seed;
            let mut word: i64 = seed as i32 as i64;
            for i in 1..31 {
                let hi = word / 127773;
                let lo = word % 127773;
                word = 16807 * lo - 2836 * hi;
                if word < 0 {
                    word += 2147483647;
                }
                r[i] = word as u32;
            }
            for i in 31..34 {
                r[i] = r[i - 31];
            }
            let mut ring = [0u32; 31];
            for j in 3..34 {
                ring[j % 31] = r[j];
            }
            let mut g = GlibcRand { ring, i: 34 };
            for _ in 0..310 {
                g.next_raw();
            }
            g
        }
        fn next_raw(&mut self) -> u32 {
            let idx = self.i % 31;
            let prev = (self.i + 28) % 31;
            let v = self.ring[idx].wrapping_add(self.ring[prev]);
            self.ring[idx] = v;
            self.i += 1;
            v
        }
        fn rand(&mut self) -> i32 {
            (self.next_raw() >> 1) as i32
        }
    }
    fn parse_positive(s: &str) -> Option<i64> {
        match s.trim_start().parse::<i64>() {
            Ok(v) if v > 0 => Some(v),
            _ => None,
        }
    }
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 3 {
        let name = args.first().cloned().unwrap_or_default();
        eprintln!("Usage: {} <width> <height>", name);
        std::process::exit(1);
    }
    let width = match parse_positive(&args[1]) {
        Some(v) => v,
        None => {
            eprintln!("Invalid width: {}", args[1]);
            std::process::exit(1);
        }
    };
    let height = match parse_positive(&args[2]) {
        Some(v) => v,
        None => {
            eprintln!("Invalid height: {}", args[2]);
            std::process::exit(1);
        }
    };
    let mut rng = GlibcRand::new(42);
    let (start_sec, start_nsec) = get_now();
    let mut img = _bmp_img {
        img_header: _bmp_header::default(),
        img_pixels: Vec::new(),
    };
    bmp_img_init_df(&mut img, width as i32, height as i32);
    for y in 0..height as usize {
        for x in 0..width as usize {
            let red = (rng.rand() % 256) as u8;
            let green = (rng.rand() % 256) as u8;
            let blue = (rng.rand() % 256) as u8;
            bmp_pixel_init(&mut img.img_pixels[y][x], red, green, blue);
        }
    }
    let output_path = "../file/test.bmp";
    if bmp_img_write(&img, output_path).is_err() {
        eprintln!("Failed to write BMP file: {}", output_path);
        bmp_img_free(img);
        std::process::exit(1);
    }
    bmp_img_free(img);
    let (end_sec, end_nsec) = get_now();
    print_file_md5(output_path);
    let elapsed_seconds =
        (end_sec - start_sec) as f64 + (end_nsec - start_nsec) as f64 / 1_000_000_000.0;
    println!("elapsed_time_seconds: {:.6}", elapsed_seconds);
}
