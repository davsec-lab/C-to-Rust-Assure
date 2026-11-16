use libc::size_t;
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct error {
    pub json: *const libc::c_uchar,
    pub position: size_t,
}
