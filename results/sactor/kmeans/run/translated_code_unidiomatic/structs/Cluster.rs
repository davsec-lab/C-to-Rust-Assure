#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Cluster {
    pub x: libc::c_double,
    pub y: libc::c_double,
}
