pub unsafe fn csv_increase_buffer(p: *mut csv_parser) -> libc::c_int {
    if p.is_null() {
        return 0;
    }
    if (*p).realloc_func.is_none() {
        return 0;
    }
    let mut to_add: libc::size_t = (*p).blk_size;
    let size_max = libc::size_t::MAX;
    if (*p).entry_size >= size_max - to_add {
        to_add = size_max - (*p).entry_size;
    }
    if to_add == 0 {
        (*p).status = 3;
        return -1;
    }
    let realloc_func = (*p).realloc_func.unwrap();
    let vp = loop {
        let vp = realloc_func(
            (*p).entry_buf as *mut libc::c_void,
            (*p).entry_size + to_add,
        );
        if !vp.is_null() {
            break vp;
        }
        to_add /= 2;
        if to_add == 0 {
            (*p).status = 2;
            return -1;
        }
    };
    (*p).entry_buf = vp as *mut libc::c_uchar;
    (*p).entry_size += to_add;
    0
}
