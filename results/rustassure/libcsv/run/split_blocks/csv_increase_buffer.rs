fn csv_increase_buffer(p: &mut csv_parser) -> i32 {
    let realloc_func = match p.realloc_func {
        Some(f) => f,
        None => return 0,
    };
    let mut to_add: size_t = p.blk_size;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    let vp: Vec<u8> = loop {
        // Clone so the original buffer is preserved if the reallocation fails,
        // matching C realloc semantics.
        match realloc_func(p.entry_buf.clone(), p.entry_size + to_add) {
            Some(v) => break v,
            None => {
                to_add /= 2;
                if to_add == 0 {
                    p.status = 2;
                    return -1;
                }
            }
        }
    };
    p.entry_buf = vp;
    p.entry_size += to_add;
    0
}