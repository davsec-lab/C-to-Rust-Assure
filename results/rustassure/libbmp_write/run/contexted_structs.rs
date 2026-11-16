
use std::ffi::c_void;

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