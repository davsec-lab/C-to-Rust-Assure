#[derive(Clone, Debug)]
pub struct _bmp_img {
    pub img_header: _bmp_header,
    pub img_pixels: Vec<Vec<_bmp_pixel>>,
}
