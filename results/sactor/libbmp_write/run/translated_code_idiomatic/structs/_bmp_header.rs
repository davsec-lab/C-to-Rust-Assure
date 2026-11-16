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
