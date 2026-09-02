#![allow(unaligned_references)]
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

#[no_mangle]
fn csv_set_delim(p: &mut CsvParser, c: u8) {
    p.delim_char = c;
}
