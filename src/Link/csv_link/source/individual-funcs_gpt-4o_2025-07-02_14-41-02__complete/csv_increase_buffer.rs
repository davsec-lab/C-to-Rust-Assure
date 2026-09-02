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
fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    if p.realloc_func as *const () == std::ptr::null() {
        return 0;
    }

    let mut to_add = p.blk_size;
    let mut vp: *mut u8 = std::ptr::null_mut();

    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }

    if to_add == 0 {
        p.status = 3;
        return -1;
    }

    while {
        if let Some(buf) = &mut p.entry_buf {
            vp = (p.realloc_func)(buf.as_mut_ptr(), p.entry_size + to_add);
        }
        vp.is_null()
    } {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }

    if let Some(buf) = &mut p.entry_buf {
        *buf = unsafe { std::slice::from_raw_parts_mut(vp, p.entry_size + to_add) };
    }
    p.entry_size += to_add;
    0
}
