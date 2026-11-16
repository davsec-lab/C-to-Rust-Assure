pub unsafe fn csv_increase_buffer(p: *mut csv_parser) -> libc::c_int {
    if p.is_null() {
        return 0;
    }
    let realloc_func = match (*p).realloc_func {
        Some(f) => f,
        None => return 0,
    };
    let mut to_add: usize = (*p).blk_size as usize;
    let mut vp: *mut libc::c_void;
    if (*p).entry_size as usize >= usize::MAX - to_add {
        to_add = usize::MAX - (*p).entry_size as usize;
    }
    if to_add == 0 {
        (*p).status = 3;
        return -1;
    }
    loop {
        vp = realloc_func(
            (*p).entry_buf as *mut libc::c_void,
            ((*p).entry_size as usize).wrapping_add(to_add) as _,
        );
        if !vp.is_null() {
            break;
        }
        to_add /= 2;
        if to_add == 0 {
            (*p).status = 2;
            return -1;
        }
    }
    (*p).entry_buf = vp as *mut libc::c_uchar;
    (*p).entry_size = ((*p).entry_size as usize + to_add) as _;
    0
}
