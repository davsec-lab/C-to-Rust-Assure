use std::fmt;
#[allow(non_camel_case_types)]
#[derive(Copy, Clone, Debug)]
pub struct md5_ctx {
    pub state: [u32; 4],
    pub bit_len: u64,
    pub buffer: [u8; 64],
    pub buffer_len: usize,
}
impl Default for md5_ctx {
    fn default() -> Self {
        md5_ctx {
            state: [0u32; 4],
            bit_len: 0,
            buffer: [0u8; 64],
            buffer_len: 0,
        }
    }
}
#[derive(Copy, Clone, Debug, Default, PartialEq, Eq)]
pub struct _bmp_header {
    pub bfSize: u32,
    pub bfReserved: u32,
    pub bfOffBits: u32,
    pub biSize: u32,
    pub biWidth: i32,
    pub biHeight: i32,
    pub biPlanes: u16,
    pub biBitCount: u16,
    pub biCompression: u32,
    pub biSizeImage: u32,
    pub biXPelsPerMeter: i32,
    pub biYPelsPerMeter: i32,
    pub biClrUsed: u32,
    pub biClrImportant: u32,
}
#[derive(Copy, Clone, Debug)]
pub struct _bmp_pixel {
    pub blue: u8,
    pub green: u8,
    pub red: u8,
}
#[derive(Clone, Debug)]
pub struct _bmp_img {
    pub img_header: _bmp_header,
    pub img_pixels: Vec<Vec<_bmp_pixel>>,
}
const K: [u32; 64] = [
    0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee, 0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
    0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be, 0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
    0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa, 0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
    0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed, 0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
    0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c, 0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
    0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05, 0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
    0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039, 0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
    0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1, 0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391,
];
/// Per-round left-rotation amounts for the MD5 algorithm.
const S: [u32; 64] = [
    7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9,
    14, 20, 5, 9, 14, 20, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 6, 10, 15,
    21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21,
];
const PAD: u8 = 0x80;
const ZERO: u8 = 0;
#[repr(i32)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash)]
pub enum BmpError {
    FileNotOpened = -4,
    HeaderNotInitialized = -3,
    InvalidFile = -2,
    Error = -1,
}
impl BmpError {
    /// Returns the numeric code corresponding to the original C error value.
    pub fn code(self) -> i32 {
        self as i32
    }
}
impl fmt::Display for BmpError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let msg = match self {
            BmpError::FileNotOpened => "file not opened",
            BmpError::HeaderNotInitialized => "header not initialized",
            BmpError::InvalidFile => "invalid file",
            BmpError::Error => "unspecified BMP error",
        };
        f.write_str(msg)
    }
}
impl std::error::Error for BmpError {}
/// Success (`BMP_OK`) is represented by `Ok(())`.
pub type BmpResult<T = ()> = Result<T, BmpError>;
pub fn md5_left_rotate(value: u32, shift: u32) -> u32 {
    value.rotate_left(shift)
}
pub fn md5_init(ctx: &mut md5_ctx) {
    ctx.state = [0x67452301u32, 0xefcdab89u32, 0x98badcfeu32, 0x10325476u32];
    ctx.bit_len = 0;
    ctx.buffer_len = 0;
}
pub fn md5_transform(ctx: &mut md5_ctx, block: &[u8; 64]) {
    let mut m: [u32; 16] = [0; 16];
    let mut a: u32 = ctx.state[0];
    let mut b: u32 = ctx.state[1];
    let mut c: u32 = ctx.state[2];
    let mut d: u32 = ctx.state[3];
    for (word, chunk) in m.iter_mut().zip(block.chunks_exact(4)) {
        *word = u32::from_le_bytes([chunk[0], chunk[1], chunk[2], chunk[3]]);
    }
    for i in 0..64usize {
        let (f, g): (u32, usize) = if i < 16 {
            ((b & c) | (!b & d), i)
        } else if i < 32 {
            ((d & b) | (!d & c), (5 * i + 1) % 16)
        } else if i < 48 {
            (b ^ c ^ d, (3 * i + 5) % 16)
        } else {
            (c ^ (b | !d), (7 * i) % 16)
        };
        let tmp = d;
        d = c;
        c = b;
        let sum = a.wrapping_add(f).wrapping_add(K[i]).wrapping_add(m[g]);
        b = b.wrapping_add(sum.rotate_left(S[i]));
        a = tmp;
    }
    ctx.state[0] = ctx.state[0].wrapping_add(a);
    ctx.state[1] = ctx.state[1].wrapping_add(b);
    ctx.state[2] = ctx.state[2].wrapping_add(c);
    ctx.state[3] = ctx.state[3].wrapping_add(d);
}
pub fn md5_update(ctx: &mut md5_ctx, data: &[u8]) {
    let mut data = data;
    ctx.bit_len = ctx
        .bit_len
        .wrapping_add((data.len() as u64).wrapping_mul(8u64));
    while !data.is_empty() {
        let space: usize = ctx.buffer.len() - ctx.buffer_len;
        let chunk: usize = data.len().min(space);
        let start = ctx.buffer_len;
        ctx.buffer[start..start + chunk].copy_from_slice(&data[..chunk]);
        ctx.buffer_len += chunk;
        data = &data[chunk..];
        if ctx.buffer_len == ctx.buffer.len() {
            let block: [u8; 64] = ctx.buffer;
            md5_transform(ctx, &block);
            ctx.buffer_len = 0;
        }
    }
}
pub fn md5_final(ctx: &mut md5_ctx, digest: &mut [u8; 16]) {
    let length_bytes: [u8; 8] = ctx.bit_len.to_le_bytes();
    md5_update(ctx, &[PAD]);
    while ctx.buffer_len != 56 {
        md5_update(ctx, &[ZERO]);
    }
    md5_update(ctx, &length_bytes);
    for i in 0..4usize {
        digest[i * 4..i * 4 + 4].copy_from_slice(&ctx.state[i].to_le_bytes());
    }
}
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
pub fn bmp_header_init_df(width: i32, height: i32) -> _bmp_header {
    let w = width as isize as usize;
    let row_pad = (width % 4) as isize as usize;
    let h = height.wrapping_abs() as isize as usize;
    let size = (core::mem::size_of::<_bmp_pixel>())
        .wrapping_mul(w)
        .wrapping_add(row_pad)
        .wrapping_mul(h);
    _bmp_header {
        bfSize: size as u32,
        bfReserved: 0,
        bfOffBits: 54,
        biSize: 40,
        biWidth: width,
        biHeight: height,
        biPlanes: 1,
        biBitCount: 24,
        biCompression: 0,
        biSizeImage: 0,
        biXPelsPerMeter: 0,
        biYPelsPerMeter: 0,
        biClrUsed: 0,
        biClrImportant: 0,
    }
}
pub fn bmp_header_write<W: std::io::Write>(
    header: &_bmp_header,
    img_file: &mut W,
) -> BmpResult<()> {
    let magic: u16 = 19778;
    let mut buf: Vec<u8> = Vec::with_capacity(54);
    buf.extend_from_slice(&magic.to_le_bytes());
    buf.extend_from_slice(&header.bfSize.to_le_bytes());
    buf.extend_from_slice(&header.bfReserved.to_le_bytes());
    buf.extend_from_slice(&header.bfOffBits.to_le_bytes());
    buf.extend_from_slice(&header.biSize.to_le_bytes());
    buf.extend_from_slice(&header.biWidth.to_le_bytes());
    buf.extend_from_slice(&header.biHeight.to_le_bytes());
    buf.extend_from_slice(&header.biPlanes.to_le_bytes());
    buf.extend_from_slice(&header.biBitCount.to_le_bytes());
    buf.extend_from_slice(&header.biCompression.to_le_bytes());
    buf.extend_from_slice(&header.biSizeImage.to_le_bytes());
    buf.extend_from_slice(&header.biXPelsPerMeter.to_le_bytes());
    buf.extend_from_slice(&header.biYPelsPerMeter.to_le_bytes());
    buf.extend_from_slice(&header.biClrUsed.to_le_bytes());
    buf.extend_from_slice(&header.biClrImportant.to_le_bytes());
    img_file.write_all(&buf).map_err(|_| BmpError::Error)?;
    Ok(())
}
pub fn bmp_header_read<R: std::io::Read>(img_file: Option<&mut R>) -> BmpResult<_bmp_header> {
    let file = match img_file {
        Some(f) => f,
        None => return Err(BmpError::FileNotOpened),
    };
    let mut magic = [0u8; 2];
    if file.read_exact(&mut magic).is_err() || u16::from_le_bytes(magic) != 19778 {
        return Err(BmpError::InvalidFile);
    }
    let mut buf = [0u8; 52];
    if file.read_exact(&mut buf).is_err() {
        return Err(BmpError::Error);
    }
    fn u32_at(b: &[u8], off: usize) -> u32 {
        u32::from_le_bytes([b[off], b[off + 1], b[off + 2], b[off + 3]])
    }
    fn i32_at(b: &[u8], off: usize) -> i32 {
        i32::from_le_bytes([b[off], b[off + 1], b[off + 2], b[off + 3]])
    }
    fn u16_at(b: &[u8], off: usize) -> u16 {
        u16::from_le_bytes([b[off], b[off + 1]])
    }
    Ok(_bmp_header {
        bfSize: u32_at(&buf, 0),
        bfReserved: u32_at(&buf, 4),
        bfOffBits: u32_at(&buf, 8),
        biSize: u32_at(&buf, 12),
        biWidth: i32_at(&buf, 16),
        biHeight: i32_at(&buf, 20),
        biPlanes: u16_at(&buf, 24),
        biBitCount: u16_at(&buf, 26),
        biCompression: u32_at(&buf, 28),
        biSizeImage: u32_at(&buf, 32),
        biXPelsPerMeter: i32_at(&buf, 36),
        biYPelsPerMeter: i32_at(&buf, 40),
        biClrUsed: u32_at(&buf, 44),
        biClrImportant: u32_at(&buf, 48),
    })
}
pub fn bmp_pixel_init(pxl: &mut _bmp_pixel, red: u8, green: u8, blue: u8) {
    pxl.red = red;
    pxl.green = green;
    pxl.blue = blue;
}
pub fn bmp_img_alloc(img: &mut _bmp_img) {
    let h: usize = img.img_header.biHeight.unsigned_abs() as usize;
    let w: usize = img.img_header.biWidth.max(0) as usize;
    let blank = _bmp_pixel {
        blue: 0,
        green: 0,
        red: 0,
    };
    img.img_pixels = (0..h).map(|_| vec![blank; w]).collect();
}
pub fn bmp_img_init_df(img: &mut _bmp_img, width: i32, height: i32) {
    img.img_header = bmp_header_init_df(width, height);
    bmp_img_alloc(img);
}
pub fn bmp_img_free(img: _bmp_img) {
    drop(img);
}
pub fn bmp_row_index(header: &_bmp_header, y: usize) -> usize {
    let h: usize = header.biHeight.unsigned_abs() as usize;
    if header.biHeight > 0 {
        h.wrapping_sub(1).wrapping_sub(y)
    } else {
        y
    }
}
pub fn bmp_img_write(img: &_bmp_img, filename: &str) -> BmpResult<()> {
    use std::io::{BufWriter, Write};
    let file = match std::fs::File::create(filename) {
        Ok(f) => f,
        Err(_) => return Err(BmpError::FileNotOpened),
    };
    let mut writer = BufWriter::new(file);
    bmp_header_write(&img.img_header, &mut writer)?;
    let h: usize = img.img_header.biHeight.unsigned_abs() as usize;
    let padding: [u8; 3] = [0, 0, 0];
    let width = img.img_header.biWidth;
    let width_usize = width.max(0) as usize;
    let pad_count = ((width.max(0)) % 4) as usize;
    for y in 0..h {
        let idx = bmp_row_index(&img.img_header, y);
        if let Some(row) = img.img_pixels.get(idx) {
            let n = width_usize.min(row.len());
            for px in &row[..n] {
                let _ = writer.write_all(&[px.blue, px.green, px.red]);
            }
        }
        let _ = writer.write_all(&padding[..pad_count]);
    }
    let _ = writer.flush();
    Ok(())
}
pub fn bmp_img_read(img: &mut _bmp_img, filename: &str) -> BmpResult<()> {
    use std::fs::File;
    use std::io::{BufReader, Read, Seek, SeekFrom};
    let file = File::open(filename).map_err(|_| BmpError::FileNotOpened)?;
    let mut reader = BufReader::new(file);
    img.img_header = bmp_header_read(Some(&mut reader))?;
    bmp_img_alloc(img);
    let h = img.img_header.biHeight.unsigned_abs() as usize;
    let width = img.img_header.biWidth;
    let padding = (width % 4) as i64;
    let items = if width > 0 { width as usize } else { 0 };
    let mut buf = vec![0u8; items * 3];
    for y in 0..h {
        let row = bmp_row_index(&img.img_header, y);
        reader.read_exact(&mut buf).map_err(|_| BmpError::Error)?;
        let pixels: Vec<_bmp_pixel> = buf
            .chunks_exact(3)
            .map(|c| _bmp_pixel {
                blue: c[0],
                green: c[1],
                red: c[2],
            })
            .collect();
        img.img_pixels[row] = pixels;
        let _ = reader.seek(SeekFrom::Current(padding));
    }
    Ok(())
}
pub fn get_now() -> (i64, i64) {
    use std::sync::OnceLock;
    use std::time::Instant;
    static START: OnceLock<Instant> = OnceLock::new();
    let start = *START.get_or_init(Instant::now);
    let d = Instant::now().duration_since(start);
    (d.as_secs() as i64, d.subsec_nanos() as i64)
}
pub fn main() {
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
