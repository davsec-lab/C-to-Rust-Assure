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
