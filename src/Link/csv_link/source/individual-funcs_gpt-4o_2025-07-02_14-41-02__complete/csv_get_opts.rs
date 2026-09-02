#![allow(unaligned_references)]
// Rust struct definition
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

// Function to get options from CsvParser
#[no_mangle]
fn csv_get_opts(p: Option<&CsvParser>) -> i32 {
    match p {
        None => -1,
        Some(parser) => parser.options as i32,
    }
}

#[no_mangle]
fn main() {
    // Example usage
    let parser = CsvParser {
        pstate: 0,
        quoted: 0,
        spaces: 0,
        entry_buf: None,
        entry_pos: 0,
        entry_size: 0,
        status: 0,
        options: 42,
        quote_char: b'"',
        delim_char: b',',
        is_space: |c| if c == b' ' { 1 } else { 0 },
        is_term: |c| if c == b'\n' { 1 } else { 0 },
        blk_size: 1024,
        malloc_func: |size| std::ptr::null_mut(),
        realloc_func: |ptr, size| std::ptr::null_mut(),
        free_func: |ptr| {},
    };

    let options = csv_get_opts(Some(&parser));
    println!("Options: {}", options);
}
