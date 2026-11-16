#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct _bmp_img {
    pub img_header: _bmp_header,
    pub img_pixels: *mut *mut _bmp_pixel,
}
