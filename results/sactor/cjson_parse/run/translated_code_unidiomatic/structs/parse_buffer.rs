use libc::size_t;
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct parse_buffer {
    pub content: *const libc::c_uchar,
    pub length: size_t,
    pub offset: size_t,
    pub depth: size_t,
    pub hooks: internal_hooks,
}
