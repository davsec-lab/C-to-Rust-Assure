use libc::size_t;
use libc::uint32_t;
use libc::uint64_t;
pub type __uint32_t = libc::c_uint;
pub type __uint64_t = libc::c_ulong;
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct md5_ctx {
    pub state: [uint32_t; 4],
    pub bit_len: uint64_t,
    pub buffer: [libc::c_uchar; 64],
    pub buffer_len: size_t,
}
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct _bmp_header {
    pub bfSize: libc::c_uint,
    pub bfReserved: libc::c_uint,
    pub bfOffBits: libc::c_uint,
    pub biSize: libc::c_uint,
    pub biWidth: libc::c_int,
    pub biHeight: libc::c_int,
    pub biPlanes: libc::c_ushort,
    pub biBitCount: libc::c_ushort,
    pub biCompression: libc::c_uint,
    pub biSizeImage: libc::c_uint,
    pub biXPelsPerMeter: libc::c_int,
    pub biYPelsPerMeter: libc::c_int,
    pub biClrUsed: libc::c_uint,
    pub biClrImportant: libc::c_uint,
}
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct _bmp_pixel {
    pub blue: libc::c_uchar,
    pub green: libc::c_uchar,
    pub red: libc::c_uchar,
}
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct _bmp_img {
    pub img_header: _bmp_header,
    pub img_pixels: *mut *mut _bmp_pixel,
}
static k: [u32; 64] = [
    0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee, 0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
    0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be, 0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
    0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa, 0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
    0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed, 0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
    0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c, 0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
    0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05, 0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
    0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039, 0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
    0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1, 0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391,
];
static s: [u32; 64] = [
    7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9,
    14, 20, 5, 9, 14, 20, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 6, 10, 15,
    21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21,
];
static pad: u8 = 0x80;
#[allow(non_upper_case_globals)]
static zero: u8 = 0;
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash)]
pub enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED = -3,
    BMP_INVALID_FILE = -2,
    BMP_ERROR = -1,
    BMP_OK = 0,
}
extern "C" {
    static mut stderr: *mut libc::FILE;
}
pub fn md5_left_rotate(value: u32, shift: u32) -> u32 {
    value.wrapping_shl(shift) | value.wrapping_shr(32u32.wrapping_sub(shift))
}
pub unsafe fn md5_init(ctx: *mut md5_ctx) {
    (*ctx).state[0] = 0x67452301u32 as _;
    (*ctx).state[1] = 0xefcdab89u32 as _;
    (*ctx).state[2] = 0x98badcfeu32 as _;
    (*ctx).state[3] = 0x10325476u32 as _;
    (*ctx).bit_len = 0;
    (*ctx).buffer_len = 0;
}
pub fn md5_transform(ctx: &mut md5_ctx, block: &[libc::c_uchar; 64]) {
    let mut m: [u32; 16] = [0; 16];
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
            .wrapping_add(k[i])
            .wrapping_add(m[g as usize]);
        b = b.wrapping_add(unsafe { md5_left_rotate(sum, s[i]) });
        a = tmp;
    }
    ctx.state[0] = ctx.state[0].wrapping_add(a);
    ctx.state[1] = ctx.state[1].wrapping_add(b);
    ctx.state[2] = ctx.state[2].wrapping_add(c);
    ctx.state[3] = ctx.state[3].wrapping_add(d);
}
pub unsafe fn md5_update(ctx: &mut md5_ctx, data: *const libc::c_uchar, len: usize) {
    let mut data = data;
    let mut len = len;
    ctx.bit_len = ctx.bit_len.wrapping_add((len as u64).wrapping_mul(8u64));
    while len > 0 {
        let space: usize = ctx.buffer.len() - ctx.buffer_len;
        let chunk: usize = if len < space { len } else { space };
        std::ptr::copy_nonoverlapping(
            data,
            ctx.buffer.as_mut_ptr().add(ctx.buffer_len),
            chunk,
        );
        ctx.buffer_len += chunk as libc::size_t;
        data = data.add(chunk);
        len -= chunk;
        if ctx.buffer_len == ctx.buffer.len() {
            let block: [libc::c_uchar; 64] = ctx.buffer;
            md5_transform(ctx, &block);
            ctx.buffer_len = 0;
        }
    }
}
pub unsafe fn md5_final(ctx: &mut md5_ctx, digest: *mut libc::c_uchar) {
    let mut length_bytes: [libc::c_uchar; 8] = [0; 8];
    for i in 0..length_bytes.len() {
        length_bytes[i] = ((ctx.bit_len >> (8 * i)) & 0xff) as libc::c_uchar;
    }
    md5_update(ctx, &pad as *const u8, 1);
    while ctx.buffer_len != 56 {
        md5_update(ctx, &zero as *const u8, 1);
    }
    md5_update(ctx, length_bytes.as_ptr(), length_bytes.len());
    for i in 0..4usize {
        let st = ctx.state[i];
        *digest.add(i * 4) = (st & 0xff) as libc::c_uchar;
        *digest.add(i * 4 + 1) = ((st >> 8) & 0xff) as libc::c_uchar;
        *digest.add(i * 4 + 2) = ((st >> 16) & 0xff) as libc::c_uchar;
        *digest.add(i * 4 + 3) = ((st >> 24) & 0xff) as libc::c_uchar;
    }
}
pub fn print_file_md5(filename: *const libc::c_char) -> libc::c_int {
    unsafe {
        let mut digest: [libc::c_uchar; 16] = [0; 16];
        let mut buffer: [libc::c_uchar; 4096] = [0; 4096];
        let mut ctx: md5_ctx = std::mem::zeroed();
        let file = libc::fopen(filename, b"rb\0".as_ptr() as *const libc::c_char);
        if file.is_null() {
            libc::perror(b"fopen\0".as_ptr() as *const libc::c_char);
            return -1;
        }
        md5_init(&mut ctx);
        loop {
            let bytes_read = libc::fread(
                buffer.as_mut_ptr() as *mut libc::c_void,
                1,
                buffer.len(),
                file,
            );
            if bytes_read > 0 {
                md5_update(&mut ctx, buffer.as_ptr(), bytes_read as usize);
            }
            if (bytes_read as usize) < buffer.len() {
                if libc::ferror(file) != 0 {
                    libc::perror(b"fread\0".as_ptr() as *const libc::c_char);
                    libc::fclose(file);
                    return -1;
                }
                break;
            }
        }
        libc::fclose(file);
        md5_final(&mut ctx, digest.as_mut_ptr());
        libc::printf(b"md5: \0".as_ptr() as *const libc::c_char);
        for i in 0..digest.len() {
            libc::printf(
                b"%02x\0".as_ptr() as *const libc::c_char,
                digest[i] as libc::c_uint,
            );
        }
        libc::printf(b"\n\0".as_ptr() as *const libc::c_char);
        0
    }
}
pub unsafe fn bmp_header_init_df(
    header: *mut _bmp_header,
    width: libc::c_int,
    height: libc::c_int,
) {
    let w = width as isize as usize;
    let row_pad = (width % 4) as isize as usize;
    let h = height.wrapping_abs() as isize as usize;
    let size = (core::mem::size_of::<_bmp_pixel>())
        .wrapping_mul(w)
        .wrapping_add(row_pad)
        .wrapping_mul(h);
    (*header).bfSize = size as libc::c_uint;
    (*header).bfReserved = 0;
    (*header).bfOffBits = 54;
    (*header).biSize = 40;
    (*header).biWidth = width;
    (*header).biHeight = height;
    (*header).biPlanes = 1;
    (*header).biBitCount = 24;
    (*header).biCompression = 0;
    (*header).biSizeImage = 0;
    (*header).biXPelsPerMeter = 0;
    (*header).biYPelsPerMeter = 0;
    (*header).biClrUsed = 0;
    (*header).biClrImportant = 0;
}
pub unsafe fn bmp_header_write(header: *const _bmp_header, img_file: *mut libc::FILE) -> bmp_error {
    if header.is_null() {
        return bmp_error::BMP_HEADER_NOT_INITIALIZED;
    } else if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let magic: libc::c_ushort = 19778;
    libc::fwrite(
        &magic as *const libc::c_ushort as *const libc::c_void,
        std::mem::size_of::<libc::c_ushort>(),
        1,
        img_file,
    );
    libc::fwrite(
        header as *const libc::c_void,
        std::mem::size_of::<_bmp_header>(),
        1,
        img_file,
    );
    bmp_error::BMP_OK
}
pub unsafe fn bmp_header_read(header: *mut _bmp_header, img_file: *mut libc::FILE) -> bmp_error {
    if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let mut magic: libc::c_ushort = 0;
    if libc::fread(
        &mut magic as *mut libc::c_ushort as *mut libc::c_void,
        std::mem::size_of::<libc::c_ushort>(),
        1,
        img_file,
    ) != 1
        || magic != 19778
    {
        return bmp_error::BMP_INVALID_FILE;
    }
    if libc::fread(
        header as *mut libc::c_void,
        std::mem::size_of::<_bmp_header>(),
        1,
        img_file,
    ) != 1
    {
        return bmp_error::BMP_ERROR;
    }
    bmp_error::BMP_OK
}
pub unsafe fn bmp_pixel_init(
    pxl: *mut _bmp_pixel,
    red: libc::c_uchar,
    green: libc::c_uchar,
    blue: libc::c_uchar,
) {
    (*pxl).red = red;
    (*pxl).green = green;
    (*pxl).blue = blue;
}
pub unsafe fn bmp_img_alloc(img: *mut _bmp_img) {
    let h: usize = libc::abs((*img).img_header.biHeight) as usize;
    (*img).img_pixels = libc::malloc(std::mem::size_of::<*mut _bmp_pixel>().wrapping_mul(h))
        as *mut *mut _bmp_pixel;
    let mut y: usize = 0;
    while y < h {
        *(*img).img_pixels.add(y) = libc::malloc(
            std::mem::size_of::<_bmp_pixel>().wrapping_mul((*img).img_header.biWidth as usize),
        ) as *mut _bmp_pixel;
        y += 1;
    }
}
pub unsafe fn bmp_img_init_df(img: *mut _bmp_img, width: libc::c_int, height: libc::c_int) {
    bmp_header_init_df(&mut (*img).img_header as *mut _bmp_header, width, height);
    bmp_img_alloc(img);
}
pub unsafe fn bmp_img_free(img: *mut _bmp_img) {
    let h: usize = libc::abs((*img).img_header.biHeight) as usize;
    let mut y: usize = 0;
    while y < h {
        libc::free(*(*img).img_pixels.add(y) as *mut libc::c_void);
        y += 1;
    }
    libc::free((*img).img_pixels as *mut libc::c_void);
}
pub unsafe fn bmp_row_index(header: *const _bmp_header, y: usize) -> usize {
    let h: usize = libc::abs((*header).biHeight) as usize;
    if (*header).biHeight > 0 {
        h.wrapping_sub(1).wrapping_sub(y)
    } else {
        y
    }
}
pub unsafe fn bmp_img_write(img: *const _bmp_img, filename: *const libc::c_char) -> bmp_error {
    let img_file = libc::fopen(filename, b"wb\0".as_ptr() as *const libc::c_char);
    if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let err = bmp_header_write(&(*img).img_header as *const _bmp_header, img_file);
    if err != bmp_error::BMP_OK {
        libc::fclose(img_file);
        return err;
    }
    let h: usize = libc::abs((*img).img_header.biHeight) as usize;
    let padding: [libc::c_uchar; 3] = [0, 0, 0];
    let width = (*img).img_header.biWidth;
    let pad_count = (width % 4) as usize;
    for y in 0..h {
        let idx = bmp_row_index(&(*img).img_header as *const _bmp_header, y);
        let row = *(*img).img_pixels.add(idx);
        libc::fwrite(
            row as *const libc::c_void,
            std::mem::size_of::<_bmp_pixel>(),
            width as usize,
            img_file,
        );
        libc::fwrite(
            padding.as_ptr() as *const libc::c_void,
            std::mem::size_of::<libc::c_uchar>(),
            pad_count,
            img_file,
        );
    }
    libc::fclose(img_file);
    bmp_error::BMP_OK
}
pub unsafe fn bmp_img_read(img: *mut _bmp_img, filename: *const libc::c_char) -> bmp_error {
    let img_file = libc::fopen(filename, b"rb\0".as_ptr() as *const libc::c_char);
    if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let err = bmp_header_read(&mut (*img).img_header, img_file);
    if err != bmp_error::BMP_OK {
        libc::fclose(img_file);
        return err;
    }
    bmp_img_alloc(img);
    let h = libc::abs((*img).img_header.biHeight) as usize;
    let padding = ((*img).img_header.biWidth % 4) as usize;
    let items = (*img).img_header.biWidth as usize;
    for y in 0..h {
        let row = bmp_row_index(&(*img).img_header, y);
        let row_ptr = *(*img).img_pixels.add(row);
        if libc::fread(
            row_ptr as *mut libc::c_void,
            std::mem::size_of::<_bmp_pixel>(),
            items,
            img_file,
        ) != items
        {
            libc::fclose(img_file);
            return bmp_error::BMP_ERROR;
        }
        libc::fseek(img_file, padding as libc::c_long, libc::SEEK_CUR);
    }
    libc::fclose(img_file);
    bmp_error::BMP_OK
}
pub unsafe fn get_now(ts: *mut libc::timespec) -> libc::c_int {
    libc::clock_gettime(libc::CLOCK_MONOTONIC, ts)
}
pub fn main() {
    use std::ffi::CString;
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 3 {
        let name = if !args.is_empty() {
            args[0].clone()
        } else {
            String::new()
        };
        eprintln!("Usage: {} <width> <height>", name);
        std::process::exit(1);
    }
    unsafe {
        let a1 = CString::new(args[1].as_bytes()).unwrap_or_default();
        let mut endptr: *mut libc::c_char = std::ptr::null_mut();
        let width: libc::c_long = libc::strtol(a1.as_ptr(), &mut endptr, 10);
        if *a1.as_ptr() == 0 || *endptr != 0 || width <= 0 {
            eprintln!("Invalid width: {}", args[1]);
            std::process::exit(1);
        }
        let a2 = CString::new(args[2].as_bytes()).unwrap_or_default();
        endptr = std::ptr::null_mut();
        let height: libc::c_long = libc::strtol(a2.as_ptr(), &mut endptr, 10);
        if *a2.as_ptr() == 0 || *endptr != 0 || height <= 0 {
            eprintln!("Invalid height: {}", args[2]);
            std::process::exit(1);
        }
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        libc::srand(42);
        if get_now(&mut start_time) != 0 {
            eprintln!("Failed to get start time");
            std::process::exit(1);
        }
        let mut img: _bmp_img = std::mem::zeroed();
        bmp_img_init_df(&mut img, width as libc::c_int, height as libc::c_int);
        for y in 0..height {
            for x in 0..width {
                let red = (libc::rand() % 256) as libc::c_uchar;
                let green = (libc::rand() % 256) as libc::c_uchar;
                let blue = (libc::rand() % 256) as libc::c_uchar;
                let row = *img.img_pixels.offset(y as isize);
                bmp_pixel_init(row.offset(x as isize), red, green, blue);
            }
        }
        let output_path = "../file/test.bmp";
        let c_output = CString::new(output_path).unwrap();
        if bmp_img_write(&img, c_output.as_ptr()) != bmp_error::BMP_OK {
            eprintln!("Failed to write BMP file: {}", output_path);
            bmp_img_free(&mut img);
            std::process::exit(1);
        }
        bmp_img_free(&mut img);
        if get_now(&mut end_time) != 0 {
            eprintln!("Failed to get end time");
            std::process::exit(1);
        }
        print_file_md5(c_output.as_ptr());
        let elapsed_seconds = (end_time.tv_sec - start_time.tv_sec) as f64
            + (end_time.tv_nsec - start_time.tv_nsec) as f64 / 1000000000.0;
        println!("elapsed_time_seconds: {:.6}", elapsed_seconds);
    }
}
