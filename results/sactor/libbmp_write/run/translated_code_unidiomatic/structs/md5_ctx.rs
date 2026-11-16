use libc::{size_t, uint32_t, uint64_t};
pub type __uint32_t = libc::c_uint;
pub type __uint64_t = libc::c_ulong;
pub type uint32_t = __uint32_t;
pub type uint64_t = __uint64_t;
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct md5_ctx {
    pub state: [uint32_t; 4],
    pub bit_len: uint64_t,
    pub buffer: [libc::c_uchar; 64],
    pub buffer_len: size_t,
}
