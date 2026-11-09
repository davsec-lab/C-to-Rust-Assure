use libc::size_t;
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct csv_parser {
    pub pstate: libc::c_int,
    pub quoted: libc::c_int,
    pub spaces: size_t,
    pub entry_buf: *mut libc::c_uchar,
    pub entry_pos: size_t,
    pub entry_size: size_t,
    pub status: libc::c_int,
    pub options: libc::c_uchar,
    pub quote_char: libc::c_uchar,
    pub delim_char: libc::c_uchar,
    pub is_space: Option<unsafe extern "C" fn(libc::c_uchar) -> libc::c_int>,
    pub is_term: Option<unsafe extern "C" fn(libc::c_uchar) -> libc::c_int>,
    pub blk_size: size_t,
    pub malloc_func: Option<unsafe extern "C" fn(size_t) -> *mut libc::c_void>,
    pub realloc_func: Option<unsafe extern "C" fn(*mut libc::c_void, size_t) -> *mut libc::c_void>,
    pub free_func: Option<unsafe extern "C" fn(*mut libc::c_void) -> ()>,
}
