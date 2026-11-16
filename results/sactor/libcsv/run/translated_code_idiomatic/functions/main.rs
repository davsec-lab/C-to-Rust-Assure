pub fn main() -> () {
    use std::io::Read;
    let args: Vec<String> = std::env::args().collect();
    let argc = args.len();
    if argc < 2 {
        eprintln!("Usage: csvvalid files");
        std::process::exit(1);
    }
    let mut p = csv_parser {
        pstate: 0,
        quoted: 0,
        spaces: 0,
        entry_buf: Vec::new(),
        entry_pos: 0,
        status: 0,
        options: 0,
        quote_char: 0,
        delim_char: 0,
        is_space: None,
        is_term: None,
        blk_size: 0,
    };
    if csv_init(&mut p, 1) != 0 {
        eprintln!("Failed to initialize csv parser");
        std::process::exit(1);
    }
    let mut buf = [0u8; 1024];
    for name in args.iter().skip(1) {
        let mut pos: usize = 0;
        let mut fp = match std::fs::File::open(name) {
            Ok(f) => f,
            Err(e) => {
                eprintln!("Failed to open {}: {}, skipping", name, e);
                continue;
            }
        };
        let start_time = std::time::Instant::now();
        'main: {
            loop {
                let bytes_read = match fp.read(&mut buf) {
                    Ok(0) => break,
                    Ok(n) => n,
                    Err(_) => break,
                };
                let retval = csv_parse(&mut p, &buf[..bytes_read], None, None);
                if retval != bytes_read {
                    if csv_error(&p) == 1 {
                        println!("{}: malformed at byte {}", name, pos + retval + 1);
                        break 'main;
                    } else {
                        println!(
                            "Error while processing {}: {}",
                            name,
                            csv_strerror(csv_error(&p))
                        );
                        break 'main;
                    }
                }
                pos += bytes_read;
            }
            let time_elapsed = start_time.elapsed().as_secs_f64();
            println!(
                "Time taken to parse csv {}: {:.6} seconds",
                name, time_elapsed
            );
            println!("{} well-formed", name);
        }
        drop(fp);
        let _ = csv_fini(&mut p, None, None);
    }
    csv_free(&mut p);
}
