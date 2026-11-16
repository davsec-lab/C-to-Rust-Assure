#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Graph {
    pub nodes: *mut Node,
    pub node_count: libc::c_int,
    pub edges: *mut Edge,
    pub edge_count: libc::c_int,
    pub capacity: libc::c_int,
}
