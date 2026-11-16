
pub type _IO_lock_t = ();
type __off64_t = i64;
type __off_t = i64;
type __syscall_slong_t = i64;
type __time_t = i64;
pub type size_t = usize;
pub struct csv_parser {
    pub pstate: i32,
    pub quoted: i32,
    pub spaces: size_t,
    pub entry_buf: Vec<u8>,
    pub entry_pos: size_t,
    pub entry_size: size_t,
    pub status: i32,
    pub options: u8,
    pub quote_char: u8,
    pub delim_char: u8,
    pub is_space: Option<fn(u8) -> i32>,
    pub is_term: Option<fn(u8) -> i32>,
    pub blk_size: size_t,
    pub malloc_func: Option<fn(size_t) -> Option<Vec<u8>>>,
    pub realloc_func: Option<fn(Vec<u8>, size_t) -> Option<Vec<u8>>>,
    pub free_func: Option<fn(Vec<u8>)>,
}

impl Default for csv_parser {
    fn default() -> Self {
        csv_parser {
            pstate: 0,
            quoted: 0,
            spaces: 0,
            entry_buf: Vec::new(),
            entry_pos: 0,
            entry_size: 0,
            status: 0,
            options: 0,
            quote_char: 0,
            delim_char: 0,
            is_space: None,
            is_term: None,
            blk_size: 0,
            malloc_func: None,
            realloc_func: None,
            free_func: None,
        }
    }
}
static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];