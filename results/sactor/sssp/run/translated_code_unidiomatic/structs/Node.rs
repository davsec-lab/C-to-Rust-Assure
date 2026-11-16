#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Node {
    pub id: libc::c_int,
    pub edges: *mut libc::c_int,
    pub weights: *mut libc::c_int,
    pub edge_count: libc::c_int,
    pub capacity: libc::c_int,
}
