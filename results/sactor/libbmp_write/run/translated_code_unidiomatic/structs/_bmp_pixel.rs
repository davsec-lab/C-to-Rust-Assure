#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct _bmp_pixel {
    pub blue: libc::c_uchar,
    pub green: libc::c_uchar,
    pub red: libc::c_uchar,
}
