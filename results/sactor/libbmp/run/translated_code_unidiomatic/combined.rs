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
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED = -3,
    BMP_INVALID_FILE = -2,
    BMP_ERROR = -1,
    BMP_OK = 0,
}
pub unsafe fn bmp_header_init_df(
    header: *mut _bmp_header,
    width: libc::c_int,
    height: libc::c_int,
) {
    let pixel_size: usize = std::mem::size_of::<_bmp_pixel>();
    let padding: libc::c_int = width % 4;
    let row: usize = pixel_size
        .wrapping_mul(width as usize)
        .wrapping_add(padding as usize);
    let total: usize = row.wrapping_mul(height.wrapping_abs() as usize);
    (*header).bfSize = total as libc::c_uint;
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
    let h: usize = (*img).img_header.biHeight.wrapping_abs() as usize;
    (*img).img_pixels =
        libc::malloc(std::mem::size_of::<*mut _bmp_pixel>() * h) as *mut *mut _bmp_pixel;
    let mut y: usize = 0;
    while y < h {
        let w = (*img).img_header.biWidth as usize;
        *(*img).img_pixels.add(y) =
            libc::malloc(std::mem::size_of::<_bmp_pixel>().wrapping_mul(w)) as *mut _bmp_pixel;
        y += 1;
    }
}
pub unsafe fn bmp_img_init_df(img: *mut _bmp_img, width: libc::c_int, height: libc::c_int) {
    bmp_header_init_df(std::ptr::addr_of_mut!((*img).img_header), width, height);
    bmp_img_alloc(img);
}
pub unsafe fn bmp_img_free(img: *mut _bmp_img) {
    let h: usize = (*img).img_header.biHeight.wrapping_abs() as isize as usize;
    let mut y: usize = 0;
    while y < h {
        libc::free(*(*img).img_pixels.add(y) as *mut libc::c_void);
        y += 1;
    }
    libc::free((*img).img_pixels as *mut libc::c_void);
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
    let height = (*img).img_header.biHeight;
    let h = (height as libc::c_int).wrapping_abs() as libc::c_uint as usize;
    let offset: usize = if height > 0 { h.wrapping_sub(1) } else { 0 };
    let padding: [libc::c_uchar; 3] = [0, 0, 0];
    let width = (*img).img_header.biWidth;
    let mut y: usize = 0;
    while y < h {
        let idx_val = offset.wrapping_sub(y) as libc::c_int;
        let idx = idx_val.wrapping_abs() as usize;
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
            (width % 4) as usize,
            img_file,
        );
        y += 1;
    }
    libc::fclose(img_file);
    bmp_error::BMP_OK
}
pub unsafe fn bmp_img_read(img: *mut _bmp_img, filename: *const libc::c_char) -> bmp_error {
    let img_file = libc::fopen(filename, b"rb\0".as_ptr() as *const libc::c_char);
    if img_file.is_null() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let err = bmp_header_read(&mut (*img).img_header as *mut _bmp_header, img_file);
    if err != bmp_error::BMP_OK {
        libc::fclose(img_file);
        return err;
    }
    bmp_img_alloc(img);
    let height = (*img).img_header.biHeight;
    let h: usize = (height as libc::c_int).wrapping_abs() as libc::c_int as usize;
    let offset: usize = if height > 0 { h.wrapping_sub(1) } else { 0 };
    let padding: usize = ((*img).img_header.biWidth % 4) as usize;
    let items: usize = (*img).img_header.biWidth as usize;
    let mut y: usize = 0;
    while y < h {
        let idx_i = offset.wrapping_sub(y) as libc::c_int;
        let idx = idx_i.wrapping_abs() as usize;
        let row = *(*img).img_pixels.add(idx);
        if libc::fread(
            row as *mut libc::c_void,
            std::mem::size_of::<_bmp_pixel>(),
            items,
            img_file,
        ) != items
        {
            libc::fclose(img_file);
            return bmp_error::BMP_ERROR;
        }
        libc::fseek(img_file, padding as libc::c_long, libc::SEEK_CUR);
        y += 1;
    }
    libc::fclose(img_file);
    bmp_error::BMP_OK
}
pub fn main() {
    use std::ffi::{CStr, CString};
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        println!(
            "Usage: {} <directory>",
            args.first().map(|s| s.as_str()).unwrap_or("")
        );
        std::process::exit(1);
    }
    let directory = args[1].clone();
    let c_dir = match CString::new(directory.clone()) {
        Ok(c) => c,
        Err(_) => {
            println!("Error: Cannot open directory {}", directory);
            std::process::exit(1);
        }
    };
    unsafe {
        let dir = libc::opendir(c_dir.as_ptr());
        if dir.is_null() {
            println!("Error: Cannot open directory {}", directory);
            std::process::exit(1);
        }
        let mut global_checksum: u64 = 0;
        let mut file_count: i32 = 0;
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
        loop {
            let entry = libc::readdir(dir);
            if entry.is_null() {
                break;
            }
            if (*entry).d_type != libc::DT_REG {
                continue;
            }
            let name_ptr = (*entry).d_name.as_ptr();
            let name_c = CStr::from_ptr(name_ptr);
            let name_bytes = name_c.to_bytes();
            let len = name_bytes.len();
            if len < 5 || &name_bytes[len - 4..] != b".bmp" {
                continue;
            }
            let mut filepath = [0 as libc::c_char; 1024];
            let fmt = b"%s/%s\0";
            libc::snprintf(
                filepath.as_mut_ptr(),
                filepath.len(),
                fmt.as_ptr() as *const libc::c_char,
                c_dir.as_ptr(),
                name_ptr,
            );
            let mut img: _bmp_img = std::mem::zeroed();
            let err = bmp_img_read(&mut img, filepath.as_ptr());
            if err == bmp_error::BMP_OK {
                let mut img_checksum: u64 = 0;
                let h = img.img_header.biHeight.wrapping_abs();
                let w = img.img_header.biWidth;
                for y in 0..h {
                    let row = *img.img_pixels.offset(y as isize);
                    for x in 0..w {
                        let p = *row.offset(x as isize);
                        img_checksum = img_checksum.wrapping_add(p.red as u64);
                        img_checksum = img_checksum.wrapping_add(p.green as u64);
                        img_checksum = img_checksum.wrapping_add(p.blue as u64);
                    }
                }
                global_checksum = global_checksum.wrapping_add(img_checksum);
                file_count += 1;
                bmp_img_free(&mut img);
            } else {
                let fp = CStr::from_ptr(filepath.as_ptr()).to_string_lossy();
                println!("Error reading {}: code {}", fp, err as i32);
            }
        }
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
        libc::closedir(dir);
        let elapsed_seconds = (end_time.tv_sec - start_time.tv_sec) as f64
            + (end_time.tv_nsec - start_time.tv_nsec) as f64 / 1000000000.0;
        println!("Processed {} BMP files", file_count);
        println!("Global checksum: {}", global_checksum);
        println!(
            "libbmp_time computation time: {:.6} seconds",
            elapsed_seconds
        );
    }
}
