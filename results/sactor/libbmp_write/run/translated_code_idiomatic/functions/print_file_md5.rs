pub fn print_file_md5(filename: &str) -> i32 {
    use std::io::Read;
    let mut digest: [u8; 16] = [0; 16];
    let mut buffer: [u8; 4096] = [0; 4096];
    let mut ctx: md5_ctx = md5_ctx::default();
    let mut file = match std::fs::File::open(filename) {
        Ok(f) => f,
        Err(e) => {
            eprintln!("fopen: {}", e);
            return -1;
        }
    };
    md5_init(&mut ctx);
    loop {
        match file.read(&mut buffer) {
            Ok(0) => break,
            Ok(n) => {
                md5_update(&mut ctx, &buffer[..n]);
            }
            Err(ref e) if e.kind() == std::io::ErrorKind::Interrupted => continue,
            Err(e) => {
                eprintln!("fread: {}", e);
                return -1;
            }
        }
    }
    drop(file);
    md5_final(&mut ctx, &mut digest);
    print!("md5: ");
    for b in digest.iter() {
        print!("{:02x}", b);
    }
    println!();
    0
}
