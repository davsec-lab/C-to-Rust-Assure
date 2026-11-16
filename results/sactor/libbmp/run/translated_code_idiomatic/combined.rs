use std::fmt;
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
#[repr(i32)]
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum BmpError {
    FileNotOpened = -4,
    HeaderNotInitialized = -3,
    InvalidFile = -2,
    Error = -1,
}
impl BmpError {
    /// Returns the numeric code used by the original C API.
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
/// Convenience alias: `BMP_OK` becomes `Ok(())`.
pub type BmpResult<T = ()> = Result<T, BmpError>;
pub fn bmp_header_init_df(width: i32, height: i32) -> _bmp_header {
    let pixel_size: usize = std::mem::size_of::<_bmp_pixel>();
    let padding: i32 = width % 4;
    let row: usize = pixel_size
        .wrapping_mul(width as usize)
        .wrapping_add(padding as usize);
    let total: usize = row.wrapping_mul(height.wrapping_abs() as usize);
    _bmp_header {
        bfSize: total as u32,
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
    let mut buf: Vec<u8> = Vec::with_capacity(2 + 52);
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
    img.img_pixels = (0..h)
        .map(|_| {
            vec![
                _bmp_pixel {
                    blue: 0,
                    green: 0,
                    red: 0
                };
                w
            ]
        })
        .collect();
}
pub fn bmp_img_init_df(img: &mut _bmp_img, width: i32, height: i32) {
    img.img_header = bmp_header_init_df(width, height);
    bmp_img_alloc(img);
}
pub fn bmp_img_free(img: _bmp_img) {
    drop(img);
}
pub fn bmp_img_write(img: &_bmp_img, filename: &str) -> BmpResult<()> {
    use std::io::{BufWriter, Write};
    let file = std::fs::File::create(filename).map_err(|_| BmpError::FileNotOpened)?;
    let mut writer = BufWriter::new(file);
    bmp_header_write(&img.img_header, &mut writer)?;
    let height = img.img_header.biHeight;
    let h = height.wrapping_abs() as u32 as usize;
    let width = img.img_header.biWidth;
    let w = if width > 0 { width as usize } else { 0 };
    let pad_len = if width > 0 { (width % 4) as usize } else { 0 };
    let padding = [0u8; 3];
    for y in 0..h {
        let idx = if height > 0 { h - 1 - y } else { y };
        let row = img.img_pixels.get(idx).ok_or(BmpError::Error)?;
        let mut buf: Vec<u8> = Vec::with_capacity(w * 3);
        for p in row.iter().take(w) {
            buf.push(p.blue);
            buf.push(p.green);
            buf.push(p.red);
        }
        let _ = writer.write_all(&buf);
        let _ = writer.write_all(&padding[..pad_len]);
    }
    let _ = writer.flush();
    Ok(())
}
pub fn bmp_img_read(img: &mut _bmp_img, filename: &str) -> BmpResult<()> {
    use std::io::{BufReader, Read};
    let file = match std::fs::File::open(filename) {
        Ok(f) => f,
        Err(_) => return Err(BmpError::FileNotOpened),
    };
    let mut reader = BufReader::new(file);
    img.img_header = bmp_header_read(Some(&mut reader))?;
    bmp_img_alloc(img);
    let height = img.img_header.biHeight;
    let h: usize = height.unsigned_abs() as usize;
    let offset: usize = if height > 0 { h.wrapping_sub(1) } else { 0 };
    let width = img.img_header.biWidth;
    let padding: i64 = (width % 4) as i64;
    let items: usize = usize::try_from(width).map_err(|_| BmpError::Error)?;
    let mut buf = vec![0u8; items * 3];
    for y in 0..h {
        let idx = if height > 0 { offset - y } else { y };
        let row = img.img_pixels.get_mut(idx).ok_or(BmpError::Error)?;
        if row.len() < items {
            return Err(BmpError::Error);
        }
        reader.read_exact(&mut buf).map_err(|_| BmpError::Error)?;
        for (px, c) in row.iter_mut().zip(buf.chunks_exact(3)) {
            px.blue = c[0];
            px.green = c[1];
            px.red = c[2];
        }
        let _ = reader.seek_relative(padding);
    }
    Ok(())
}
pub fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        println!(
            "Usage: {} <directory>",
            args.first().map(|s| s.as_str()).unwrap_or("")
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
