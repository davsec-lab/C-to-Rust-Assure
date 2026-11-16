
type __syscall_slong_t = i64;
type __time_t = i64;
pub type size_t = usize;
pub struct Cluster {
    pub x: f64,
    pub y: f64,
}
pub struct Point {
    pub x: f64,
    pub y: f64,
    pub cluster_id: i32,
    pub cluster_distance: f64,
}