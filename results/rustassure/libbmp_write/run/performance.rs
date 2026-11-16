use std::os::unix::ffi::OsStrExt;
use std::ffi::c_void;
use std::fs::File;
use std::io::{Read, Seek, SeekFrom, Write};

pub type _IO_lock_t = c_void;
type __off64_t = i64;
type __off_t = i64;
type __uint32_t = u32;
type __uint64_t = u64;
pub type size_t = usize;
type uint32_t = __uint32_t;
type uint64_t = __uint64_t;
pub enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED = -3,
    BMP_INVALID_FILE = -2,
    BMP_ERROR = -1,
    BMP_OK = 0,
}
pub struct BmpHeader {
    pub bf_size: u32,
    pub bf_reserved: u32,
    pub bf_off_bits: u32,
    pub bi_size: u32,
    pub bi_width: i32,
    pub bi_height: i32,
    pub bi_planes: u16,
    pub bi_bit_count: u16,
    pub bi_compression: u32,
    pub bi_size_image: u32,
    pub bi_x_pels_per_meter: i32,
    pub bi_y_pels_per_meter: i32,
    pub bi_clr_used: u32,
    pub bi_clr_important: u32,
}
pub struct BmpPixel {
    pub blue: u8,
    pub green: u8,
    pub red: u8,
}
pub struct BmpImg {
    pub img_header: BmpHeader,
    pub img_pixels: Vec<Vec<BmpPixel>>,
}
pub struct md5_ctx {
    pub state: [u32; 4],
    pub bit_len: uint64_t,
    pub buffer: [u8; 64],
    pub buffer_len: usize,
}

fn md5_left_rotate(value: uint32_t, shift: uint32_t) -> uint32_t {
    (value.wrapping_shl(shift)) | (value.wrapping_shr(32u32.wrapping_sub(shift)))
}
pub fn bmp_header_init_df(header: &mut BmpHeader, width: i32, height: i32) {
    let px = std::mem::size_of::<BmpPixel>() as u64;
    let w = width as i64 as u64;
    let rem = (width % 4) as i64 as u64;
    let h = height.wrapping_abs() as i64 as u64;
    header.bf_size = (px
        .wrapping_mul(w)
        .wrapping_add(rem))
        .wrapping_mul(h) as u32;
    header.bf_reserved = 0;
    header.bf_off_bits = 54;
    header.bi_size = 40;
    header.bi_width = width;
    header.bi_height = height;
    header.bi_planes = 1;
    header.bi_bit_count = 24;
    header.bi_compression = 0;
    header.bi_size_image = 0;
    header.bi_x_pels_per_meter = 0;
    header.bi_y_pels_per_meter = 0;
    header.bi_clr_used = 0;
    header.bi_clr_important = 0;
}
pub fn bmp_pixel_init(pxl: &mut BmpPixel, red: u8, green: u8, blue: u8) {
    pxl.red = red;
    pxl.green = green;
    pxl.blue = blue;
}


pub fn bmp_header_read(header: &mut BmpHeader, img_file: Option<&mut File>) -> bmp_error {
    let img_file = match img_file {
        None => return bmp_error::BMP_FILE_NOT_OPENED,
        Some(f) => f,
    };

    let mut magic_buf = [0u8; 2];
    if img_file.read_exact(&mut magic_buf).is_err() || u16::from_le_bytes(magic_buf) != 19778 {
        return bmp_error::BMP_INVALID_FILE;
    }

    let mut buf = [0u8; 52];
    if img_file.read_exact(&mut buf).is_err() {
        return bmp_error::BMP_ERROR;
    }

    let u32_at = |o: usize| u32::from_le_bytes([buf[o], buf[o + 1], buf[o + 2], buf[o + 3]]);
    let i32_at = |o: usize| i32::from_le_bytes([buf[o], buf[o + 1], buf[o + 2], buf[o + 3]]);
    let u16_at = |o: usize| u16::from_le_bytes([buf[o], buf[o + 1]]);

    header.bf_size = u32_at(0);
    header.bf_reserved = u32_at(4);
    header.bf_off_bits = u32_at(8);
    header.bi_size = u32_at(12);
    header.bi_width = i32_at(16);
    header.bi_height = i32_at(20);
    header.bi_planes = u16_at(24);
    header.bi_bit_count = u16_at(26);
    header.bi_compression = u32_at(28);
    header.bi_size_image = u32_at(32);
    header.bi_x_pels_per_meter = i32_at(36);
    header.bi_y_pels_per_meter = i32_at(40);
    header.bi_clr_used = u32_at(44);
    header.bi_clr_important = u32_at(48);

    bmp_error::BMP_OK
}
pub fn bmp_img_alloc(img: &mut BmpImg) {
    let h = img.img_header.bi_height.unsigned_abs() as usize;
    let w = if img.img_header.bi_width > 0 {
        img.img_header.bi_width as usize
    } else {
        0
    };
    img.img_pixels = Vec::with_capacity(h);
    for _y in 0..h {
        let mut row: Vec<BmpPixel> = Vec::with_capacity(w);
        for _x in 0..w {
            row.push(BmpPixel {
                blue: 0,
                green: 0,
                red: 0,
            });
        }
        img.img_pixels.push(row);
    }
}
fn bmp_row_index(header: &BmpHeader, y: size_t) -> size_t {
    let h: size_t = header.bi_height.unsigned_abs() as size_t;
    if header.bi_height > 0 {
        h - 1 - y
    } else {
        y
    }
}

pub fn bmp_header_write(
    header: Option<&BmpHeader>,
    img_file: Option<&mut dyn Write>,
) -> bmp_error {
    let header = match header {
        None => return bmp_error::BMP_HEADER_NOT_INITIALIZED,
        Some(h) => h,
    };
    let img_file = match img_file {
        None => return bmp_error::BMP_FILE_NOT_OPENED,
        Some(f) => f,
    };

    let magic: u16 = 19778;
    let _ = img_file.write_all(&magic.to_le_bytes());

    let mut buf: Vec<u8> = Vec::with_capacity(52);
    buf.extend_from_slice(&header.bf_size.to_le_bytes());
    buf.extend_from_slice(&header.bf_reserved.to_le_bytes());
    buf.extend_from_slice(&header.bf_off_bits.to_le_bytes());
    buf.extend_from_slice(&header.bi_size.to_le_bytes());
    buf.extend_from_slice(&header.bi_width.to_le_bytes());
    buf.extend_from_slice(&header.bi_height.to_le_bytes());
    buf.extend_from_slice(&header.bi_planes.to_le_bytes());
    buf.extend_from_slice(&header.bi_bit_count.to_le_bytes());
    buf.extend_from_slice(&header.bi_compression.to_le_bytes());
    buf.extend_from_slice(&header.bi_size_image.to_le_bytes());
    buf.extend_from_slice(&header.bi_x_pels_per_meter.to_le_bytes());
    buf.extend_from_slice(&header.bi_y_pels_per_meter.to_le_bytes());
    buf.extend_from_slice(&header.bi_clr_used.to_le_bytes());
    buf.extend_from_slice(&header.bi_clr_important.to_le_bytes());
    let _ = img_file.write_all(&buf);

    bmp_error::BMP_OK
}
pub fn bmp_img_free(img: &mut BmpImg) {
    // Free each row, then the row container itself.
    img.img_pixels.clear();
    img.img_pixels.shrink_to_fit();
}
fn md5_init(ctx: &mut md5_ctx) {
    ctx.state[0] = 0x67452301u32;
    ctx.state[1] = 0xefcdab89u32;
    ctx.state[2] = 0x98badcfeu32;
    ctx.state[3] = 0x10325476u32;
    ctx.bit_len = 0;
    ctx.buffer_len = 0;
}
fn md5_transform(ctx: &mut md5_ctx, block: &[u8; 64]) {
    static S: [u32; 64] = [
        7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
        5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
        4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
        6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21,
    ];
    static K: [u32; 64] = [
        0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee,
        0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
        0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be,
        0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
        0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa,
        0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
        0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed,
        0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
        0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c,
        0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
        0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05,
        0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
        0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039,
        0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
        0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1,
        0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391,
    ];
    let mut m = [0u32; 16];
    let mut a: u32 = ctx.state[0];
    let mut b: u32 = ctx.state[1];
    let mut c: u32 = ctx.state[2];
    let mut d: u32 = ctx.state[3];
    for i in 0..16usize {
        let j = i * 4;
        m[i] = (block[j] as u32)
            | ((block[j + 1] as u32) << 8)
            | ((block[j + 2] as u32) << 16)
            | ((block[j + 3] as u32) << 24);
    }
    for i in 0..64usize {
        let f: u32;
        let g: u32;
        if i < 16 {
            f = (b & c) | (!b & d);
            g = i as u32;
        } else if i < 32 {
            f = (d & b) | (!d & c);
            g = ((5 * i + 1) % 16) as u32;
        } else if i < 48 {
            f = b ^ c ^ d;
            g = ((3 * i + 5) % 16) as u32;
        } else {
            f = c ^ (b | !d);
            g = ((7 * i) % 16) as u32;
        }
        let tmp = d;
        d = c;
        c = b;
        let sum = a
            .wrapping_add(f)
            .wrapping_add(K[i])
            .wrapping_add(m[g as usize]);
        b = b.wrapping_add(md5_left_rotate(sum, S[i]));
        a = tmp;
    }
    ctx.state[0] = ctx.state[0].wrapping_add(a);
    ctx.state[1] = ctx.state[1].wrapping_add(b);
    ctx.state[2] = ctx.state[2].wrapping_add(c);
    ctx.state[3] = ctx.state[3].wrapping_add(d);
}
pub fn bmp_img_init_df(img: &mut BmpImg, width: i32, height: i32) {
    bmp_header_init_df(&mut img.img_header, width, height);
    bmp_img_alloc(img);
}


pub fn bmp_img_read(img: &mut BmpImg, filename: &str) -> bmp_error {
    let mut img_file = match File::open(filename) {
        Ok(f) => f,
        Err(_) => return bmp_error::BMP_FILE_NOT_OPENED,
    };

    let err = bmp_header_read(&mut img.img_header, Some(&mut img_file));
    match err {
        bmp_error::BMP_OK => {}
        other => {
            return other;
        }
    }

    bmp_img_alloc(img);

    let h = img.img_header.bi_height.unsigned_abs() as usize;
    let padding = (img.img_header.bi_width % 4) as usize;
    let items = img.img_header.bi_width as usize;

    let mut buf = vec![0u8; items * 3];

    for y in 0..h {
        if img_file.read_exact(&mut buf).is_err() {
            return bmp_error::BMP_ERROR;
        }
        let idx = bmp_row_index(&img.img_header, y);
        let row = &mut img.img_pixels[idx];
        for (px, chunk) in row.iter_mut().zip(buf.chunks(3)) {
            px.blue = chunk[0];
            px.green = chunk[1];
            px.red = chunk[2];
        }
        let _ = img_file.seek(SeekFrom::Current(padding as i64));
    }

    bmp_error::BMP_OK
}


pub fn bmp_img_write(img: &BmpImg, filename: &str) -> bmp_error {
    let mut img_file = match File::create(filename) {
        Ok(f) => f,
        Err(_) => return bmp_error::BMP_FILE_NOT_OPENED,
    };
    let err = bmp_header_write(Some(&img.img_header), Some(&mut img_file as &mut dyn Write));
    if !matches!(err, bmp_error::BMP_OK) {
        return err;
    }
    let h = img.img_header.bi_height.unsigned_abs() as usize;
    let padding: [u8; 3] = [0, 0, 0];
    let width = if img.img_header.bi_width > 0 {
        img.img_header.bi_width as usize
    } else {
        0
    };
    for y in 0..h {
        let idx = bmp_row_index(&img.img_header, y);
        if let Some(row) = img.img_pixels.get(idx) {
            let n = width.min(row.len());
            let mut buf: Vec<u8> = Vec::with_capacity(n * 3);
            for p in row.iter().take(n) {
                buf.push(p.blue);
                buf.push(p.green);
                buf.push(p.red);
            }
            let _ = img_file.write_all(&buf);
        }
        let _ = img_file.write_all(&padding[..(width % 4)]);
    }
    bmp_error::BMP_OK
}
fn md5_update(ctx: &mut md5_ctx, data: &[u8], len: usize) {
    ctx.bit_len = ctx.bit_len.wrapping_add((len as u64).wrapping_mul(8));
    let mut data = data;
    let mut len = len;
    while len > 0 {
        let space = ctx.buffer.len() - ctx.buffer_len;
        let chunk = if len < space { len } else { space };
        let start = ctx.buffer_len;
        ctx.buffer[start..start + chunk].copy_from_slice(&data[..chunk]);
        ctx.buffer_len += chunk;
        data = &data[chunk..];
        len -= chunk;
        if ctx.buffer_len == ctx.buffer.len() {
            let block = ctx.buffer;
            md5_transform(ctx, &block);
            ctx.buffer_len = 0;
        }
    }
}
fn md5_final(ctx: &mut md5_ctx, digest: &mut [u8; 16]) {
    static PAD: u8 = 0x80;
    static ZERO: u8 = 0;
    let mut length_bytes = [0u8; 8];
    for i in 0..length_bytes.len() {
        length_bytes[i] = ((ctx.bit_len >> (8 * i)) & 0xff) as u8;
    }
    md5_update(ctx, &[PAD], 1);
    while ctx.buffer_len != 56 {
        md5_update(ctx, &[ZERO], 1);
    }
    md5_update(ctx, &length_bytes, length_bytes.len());
    for i in 0..4 {
        digest[i * 4] = (ctx.state[i] & 0xff) as u8;
        digest[i * 4 + 1] = ((ctx.state[i] >> 8) & 0xff) as u8;
        digest[i * 4 + 2] = ((ctx.state[i] >> 16) & 0xff) as u8;
        digest[i * 4 + 3] = ((ctx.state[i] >> 24) & 0xff) as u8;
    }
}


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

extern "C" {
    fn srand(seed: u32);
    fn rand() -> i32;
}

/// Emulates C `strtol(s, &endptr, 10)`. Returns (value, index of end pointer in bytes).
fn c_strtol(s: &str) -> (i64, usize) {
    let b = s.as_bytes();
    let mut i = 0usize;
    while i < b.len() && matches!(b[i], b' ' | b'\t' | b'\n' | 0x0b | 0x0c | b'\r') {
        i += 1;
    }
    let mut neg = false;
    if i < b.len() && (b[i] == b'+' || b[i] == b'-') {
        neg = b[i] == b'-';
        i += 1;
    }
    let digits_start = i;
    let mut val: i128 = 0;
    let mut overflow = false;
    while i < b.len() && b[i].is_ascii_digit() {
        if !overflow {
            val = val * 10 + (b[i] - b'0') as i128;
            if val > (i64::MAX as i128) + 1 {
                overflow = true;
            }
        }
        i += 1;
    }
    if i == digits_start {
        return (0, 0);
    }
    let result = if neg {
        if overflow || -val < i64::MIN as i128 {
            i64::MIN
        } else {
            (-val) as i64
        }
    } else if overflow || val > i64::MAX as i128 {
        i64::MAX
    } else {
        val as i64
    };
    (result, i)
}

fn get_now(ts: &mut (i64, i64)) -> i32 {
    match std::time::SystemTime::now().duration_since(std::time::UNIX_EPOCH) {
        Ok(d) => {
            ts.0 = d.as_secs() as i64;
            ts.1 = d.subsec_nanos() as i64;
            0
        }
        Err(_) => -1,
    }
}

fn main() {
    let argv: Vec<String> = std::env::args().collect();
    if argv.len() != 3 {
        eprintln!(
            "Usage: {} <width> <height>",
            argv.get(0).map(|s| s.as_str()).unwrap_or("")
        );
        std::process::exit(1);
    }

    let (width, wend) = c_strtol(&argv[1]);
    if argv[1].is_empty() || wend != argv[1].len() || width <= 0 {
        eprintln!("Invalid width: {}", argv[1]);
        std::process::exit(1);
    }

    let (height, hend) = c_strtol(&argv[2]);
    if argv[2].is_empty() || hend != argv[2].len() || height <= 0 {
        eprintln!("Invalid height: {}", argv[2]);
        std::process::exit(1);
    }

    let mut start_time: (i64, i64) = (0, 0);
    let mut end_time: (i64, i64) = (0, 0);
    unsafe {
        srand(42);
    }

    if get_now(&mut start_time) != 0 {
        eprintln!("Failed to get start time");
        std::process::exit(1);
    }

    // MAIN COMPUTATION START
    let mut img = BmpImg {
        img_header: BmpHeader {
            bf_size: 0,
            bf_reserved: 0,
            bf_off_bits: 0,
            bi_size: 0,
            bi_width: 0,
            bi_height: 0,
            bi_planes: 0,
            bi_bit_count: 0,
            bi_compression: 0,
            bi_size_image: 0,
            bi_x_pels_per_meter: 0,
            bi_y_pels_per_meter: 0,
            bi_clr_used: 0,
            bi_clr_important: 0,
        },
        img_pixels: Vec::new(),
    };
    bmp_img_init_df(&mut img, width as i32, height as i32);

    for y in 0..height as usize {
        for x in 0..width as usize {
            let red = (unsafe { rand() } % 256) as u8;
            let green = (unsafe { rand() } % 256) as u8;
            let blue = (unsafe { rand() } % 256) as u8;
            bmp_pixel_init(&mut img.img_pixels[y][x], red, green, blue);
        }
    }

    let output_path = "../file/test.bmp";
    if let Some(parent) = std::path::Path::new(output_path).parent() {
        if !parent.as_os_str().is_empty() {
            let _ = std::fs::create_dir_all(parent);
        }
    }
    if !matches!(bmp_img_write(&img, output_path), bmp_error::BMP_OK) {
        eprintln!("Failed to write BMP file: {}", output_path);
        bmp_img_free(&mut img);
        std::process::exit(1);
    }

    bmp_img_free(&mut img);

    // MAIN COMPUTATION END
    if get_now(&mut end_time) != 0 {
        eprintln!("Failed to get end time");
        std::process::exit(1);
    }

    print_file_md5(output_path);

    let elapsed_seconds = (end_time.0 - start_time.0) as f64
        + (end_time.1 - start_time.1) as f64 / 1000000000.0;
    println!("elapsed_time_seconds: {:.6}", elapsed_seconds);
    let _ = std::io::stdout().flush();
}