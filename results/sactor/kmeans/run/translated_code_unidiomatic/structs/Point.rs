#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Point {
    pub x: libc::c_double,
    pub y: libc::c_double,
    pub cluster_id: libc::c_int,
    pub cluster_distance: libc::c_double,
}
