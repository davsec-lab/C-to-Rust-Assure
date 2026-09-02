#![allow(unaligned_references)]
// Rust struct definitions
#[repr(C, packed)]struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<&'a mut [u8]>,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: fn(u8) -> i32,
    is_term: fn(u8) -> i32,
    blk_size: usize,
    malloc_func: fn(usize) -> *mut u8,
    realloc_func: fn(*mut u8, usize) -> *mut u8,
    free_func: fn(*mut u8),
}

impl<'a> CsvParser<'a> {
#[no_mangle]
    fn new(options: u8) -> Self {
        CsvParser {
            pstate: 0,
            quoted: 0,
            spaces: 0,
            entry_buf: None,
            entry_pos: 0,
            entry_size: 0,
            status: 0,
            options,
            quote_char: 0x22,
            delim_char: 0x2c,
            is_space: |c| if c.is_ascii_whitespace() { 1 } else { 0 },
            is_term: |c| if c == b'\n' || c == b'\r' { 1 } else { 0 },
            blk_size: 128,
            malloc_func: |size| {
                let mut vec = Vec::with_capacity(size);
                let ptr = vec.as_mut_ptr();
                std::mem::forget(vec);
                ptr
            },
            realloc_func: |ptr, size| {
                if ptr.is_null() {
                    let mut vec = Vec::with_capacity(size);
                    let ptr = vec.as_mut_ptr();
                    std::mem::forget(vec);
                    ptr
                } else {
                    unsafe {
                        let vec = Vec::from_raw_parts(ptr, 0, size);
                        let mut new_vec = vec;
                        new_vec.reserve(size);
                        let new_ptr = new_vec.as_mut_ptr();
                        std::mem::forget(new_vec);
                        new_ptr
                    }
                }
            },
            free_func: |ptr| {
                if !ptr.is_null() {
                    unsafe {
                        let _ = Vec::from_raw_parts(ptr, 0, 0);
                    }
                }
            },
        }
    }
}

#[no_mangle]
fn csv_init(p: &mut CsvParser, options: u8) -> i32 {
    if p as *const _ == std::ptr::null() {
        return -1;
    }
    *p = CsvParser::new(options);
    0
}
