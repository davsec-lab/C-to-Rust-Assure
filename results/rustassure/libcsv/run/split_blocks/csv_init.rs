fn csv_realloc_impl(mut v: Vec<u8>, size: size_t) -> Option<Vec<u8>> {
    v.resize(size, 0);
    Some(v)
}

fn csv_free_impl(v: Vec<u8>) {
    drop(v);
}

pub fn csv_init(p: Option<&mut csv_parser>, options: u8) -> i32 {
    let p = match p {
        Some(p) => p,
        None => return -1,
    };
    p.entry_buf = Vec::new();
    p.pstate = 0;
    p.quoted = 0;
    p.spaces = 0;
    p.entry_pos = 0;
    p.entry_size = 0;
    p.status = 0;
    p.options = options;
    p.quote_char = 0x22;
    p.delim_char = 0x2c;
    p.is_space = None;
    p.is_term = None;
    p.blk_size = 128;
    p.malloc_func = None;
    p.realloc_func = Some(csv_realloc_impl);
    p.free_func = Some(csv_free_impl);
    0
}