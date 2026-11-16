use std::os::unix::ffi::OsStrExt;
use std::fs::File;
use std::io::{Read, Seek, SeekFrom, Write};
use std::fs;
use std::time::Instant;

pub type _IO_lock_t = ();
type __off64_t = i64;
type __off_t = i64;
pub type size_t = usize;
#[repr(i32)]
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum BmpError {
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

pub fn bmp_header_init_df(header: &mut BmpHeader, width: i32, height: i32) {
    let size_px = std::mem::size_of::<BmpPixel>();
    let row = size_px
        .wrapping_mul(width as usize)
        .wrapping_add((width % 4) as usize);
    let total = row.wrapping_mul(height.unsigned_abs() as usize);
    header.bf_size = total as u32;
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


pub fn bmp_header_read(header: &mut BmpHeader, img_file: Option<&mut File>) -> BmpError {
    let img_file = match img_file {
        None => return BmpError::BMP_FILE_NOT_OPENED,
        Some(f) => f,
    };

    let mut magic_buf = [0u8; 2];
    if img_file.read_exact(&mut magic_buf).is_err() || u16::from_ne_bytes(magic_buf) != 19778 {
        return BmpError::BMP_INVALID_FILE;
    }

    let mut buf = [0u8; 52];
    if img_file.read_exact(&mut buf).is_err() {
        return BmpError::BMP_ERROR;
    }

    let u32_at = |o: usize| u32::from_ne_bytes([buf[o], buf[o + 1], buf[o + 2], buf[o + 3]]);
    let i32_at = |o: usize| i32::from_ne_bytes([buf[o], buf[o + 1], buf[o + 2], buf[o + 3]]);
    let u16_at = |o: usize| u16::from_ne_bytes([buf[o], buf[o + 1]]);

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

    BmpError::BMP_OK
}
pub fn bmp_img_alloc(img: &mut BmpImg) {
    let h = img.img_header.bi_height.unsigned_abs() as usize;
    let w = if img.img_header.bi_width > 0 {
        img.img_header.bi_width as usize
    } else {
        0
    };
    img.img_pixels = Vec::with_capacity(h);
    for _ in 0..h {
        let row: Vec<BmpPixel> = (0..w)
            .map(|_| BmpPixel {
                blue: 0,
                green: 0,
                red: 0,
            })
            .collect();
        img.img_pixels.push(row);
    }
}


pub fn bmp_header_write(header: Option<&BmpHeader>, img_file: Option<&mut File>) -> BmpError {
    let header = match header {
        None => return BmpError::BMP_HEADER_NOT_INITIALIZED,
        Some(h) => h,
    };
    let img_file = match img_file {
        None => return BmpError::BMP_FILE_NOT_OPENED,
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

    BmpError::BMP_OK
}
pub fn bmp_img_free(img: &mut BmpImg) {
    // Free each row, then the outer container.
    img.img_pixels.clear();
    img.img_pixels.shrink_to_fit();
}


pub fn bmp_img_read(img: &mut BmpImg, filename: &str) -> BmpError {
    let mut img_file = match File::open(filename) {
        Ok(f) => f,
        Err(_) => return BmpError::BMP_FILE_NOT_OPENED,
    };
    let err = bmp_header_read(&mut img.img_header, Some(&mut img_file));
    if err != BmpError::BMP_OK {
        return err;
    }
    bmp_img_alloc(img);
    let height = img.img_header.bi_height;
    let h = height.unsigned_abs() as usize;
    let padding = (img.img_header.bi_width % 4) as i64;
    let items = img.img_header.bi_width as usize;
    let mut buf = vec![0u8; items * 3];
    for y in 0..h {
        let idx = if height > 0 { h - 1 - y } else { y };
        if img_file.read_exact(&mut buf).is_err() {
            return BmpError::BMP_ERROR;
        }
        let row = &mut img.img_pixels[idx];
        for (i, chunk) in buf.chunks_exact(3).enumerate() {
            row[i] = BmpPixel {
                blue: chunk[0],
                green: chunk[1],
                red: chunk[2],
            };
        }
        let _ = img_file.seek(SeekFrom::Current(padding));
    }
    BmpError::BMP_OK
}
pub fn bmp_img_init_df(img: &mut BmpImg, width: i32, height: i32) {
    bmp_header_init_df(&mut img.img_header, width, height);
    bmp_img_alloc(img);
}


pub fn bmp_img_write(img: &BmpImg, filename: &str) -> BmpError {
    let mut img_file = match File::create(filename) {
        Ok(f) => f,
        Err(_) => return BmpError::BMP_FILE_NOT_OPENED,
    };

    let err = bmp_header_write(Some(&img.img_header), Some(&mut img_file));
    if err != BmpError::BMP_OK {
        drop(img_file);
        return err;
    }

    let h: usize = img.img_header.bi_height.unsigned_abs() as usize;
    let offset: usize = if img.img_header.bi_height > 0 { h.wrapping_sub(1) } else { 0 };
    let padding: [u8; 3] = [0, 0, 0];

    let width: usize = if img.img_header.bi_width > 0 {
        img.img_header.bi_width as usize
    } else {
        0
    };
    let pad_count: usize = {
        let m = img.img_header.bi_width % 4;
        if m > 0 { m as usize } else { 0 }
    };

    for y in 0..h {
        let idx = (offset.wrapping_sub(y) as i32).wrapping_abs() as usize;
        if let Some(row) = img.img_pixels.get(idx) {
            let mut buf: Vec<u8> = Vec::with_capacity(width * 3);
            for p in row.iter().take(width) {
                buf.push(p.blue);
                buf.push(p.green);
                buf.push(p.red);
            }
            let _ = img_file.write_all(&buf);
        }
        let _ = img_file.write_all(&padding[..pad_count.min(3)]);
    }

    drop(img_file);
    BmpError::BMP_OK
}


fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        println!("Usage: {} <directory>", args.get(0).map(|s| s.as_str()).unwrap_or(""));
        std::process::exit(1);
    }

    let directory = args[1].as_str();
    let dir = match fs::read_dir(directory) {
        Ok(d) => d,
        Err(_) => {
            println!("Error: Cannot open directory {}", directory);
            std::process::exit(1);
        }
    };

    let mut global_checksum: u64 = 0;
    let mut file_count: i32 = 0;

    // MAIN COMPUTATION START
    let start_time = Instant::now();

    for entry in dir {
        let entry = match entry {
            Ok(e) => e,
            Err(_) => continue,
        };
        // Only regular files (d_type == DT_REG; symlinks are not followed)
        match entry.file_type() {
            Ok(ft) if ft.is_file() => {}
            _ => continue,
        }

        let filename_os = entry.file_name();
        let filename = filename_os.to_string_lossy().into_owned();
        let len = filename.len();

        if len < 5 || !filename.as_bytes().ends_with(b".bmp") {
            continue;
        }

        let filepath = format!("{}/{}", directory, filename);

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
        let err = bmp_img_read(&mut img, &filepath);

        if err == BmpError::BMP_OK {
            let mut img_checksum: u64 = 0;
            let h = img.img_header.bi_height.wrapping_abs();
            let w = img.img_header.bi_width;

            for y in 0..h {
                for x in 0..w {
                    let p = &img.img_pixels[y as usize][x as usize];
                    img_checksum = img_checksum.wrapping_add(p.red as u64);
                    img_checksum = img_checksum.wrapping_add(p.green as u64);
                    img_checksum = img_checksum.wrapping_add(p.blue as u64);
                }
            }

            global_checksum = global_checksum.wrapping_add(img_checksum);
            file_count += 1;
            bmp_img_free(&mut img);
        } else {
            println!("Error reading {}: code {}", filepath, err as i32);
        }
    }

    let elapsed_seconds = start_time.elapsed().as_secs_f64();
    // MAIN COMPUTATION END

    println!("Processed {} BMP files", file_count);
    println!("Global checksum: {}", global_checksum);
    println!("libbmp_time computation time: {:.6} seconds", elapsed_seconds);
}