
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