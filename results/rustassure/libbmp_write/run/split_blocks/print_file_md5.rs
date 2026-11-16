use std::fs::File;
use std::io::Read;

fn print_file_md5(filename: &str) -> i32 {
    let mut digest = [0u8; 16];
    let mut buffer = [0u8; 4096];
    let mut ctx = md5_ctx {
        state: [0u32; 4],
        bit_len: 0,
        buffer: [0u8; 64],
        buffer_len: 0,
    };
    let mut file = match File::open(filename) {
        Ok(f) => f,
        Err(e) => {
            eprintln!("fopen: {}", e);
            return -1;
        }
    };
    md5_init(&mut ctx);
    loop {
        // emulate fread: fill the buffer fully unless EOF or error
        let mut bytes_read: usize = 0;
        let mut err: Option<std::io::Error> = None;
        while bytes_read < buffer.len() {
            match file.read(&mut buffer[bytes_read..]) {
                Ok(0) => break,
                Ok(n) => bytes_read += n,
                Err(e) if e.kind() == std::io::ErrorKind::Interrupted => continue,
                Err(e) => {
                    err = Some(e);
                    break;
                }
            }
        }
        if bytes_read > 0 {
            md5_update(&mut ctx, &buffer[..bytes_read], bytes_read);
        }
        if bytes_read < buffer.len() {
            if let Some(e) = err {
                eprintln!("fread: {}", e);
                return -1;
            }
            break;
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