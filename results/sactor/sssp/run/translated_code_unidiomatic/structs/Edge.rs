#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Edge {
    pub from: libc::c_int,
    pub to: libc::c_int,
    pub weight: libc::c_int,
}
