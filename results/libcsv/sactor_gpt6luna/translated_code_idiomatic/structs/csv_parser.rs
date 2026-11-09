use core::ffi::c_void;
pub struct CsvParser<'a> {
    pub pstate: i32,
    pub quoted: i32,
    pub spaces: usize,
    pub entry_buf: Option<&'a mut [u8]>,
    pub entry_pos: usize,
    pub entry_size: usize,
    pub status: i32,
    pub options: u8,
    pub quote_char: u8,
    pub delim_char: u8,
    pub is_space: Option<unsafe extern "C" fn(u8) -> i32>,
    pub is_term: Option<unsafe extern "C" fn(u8) -> i32>,
    pub blk_size: usize,
    pub malloc_func: Option<unsafe extern "C" fn(usize) -> *mut c_void>,
    pub realloc_func: Option<unsafe extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    pub free_func: Option<unsafe extern "C" fn(*mut c_void)>,
}
