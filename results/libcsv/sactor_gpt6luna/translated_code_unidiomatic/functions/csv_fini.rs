pub unsafe fn csv_fini(
    p: *mut csv_parser,
    cb1: Option<unsafe extern "C" fn(*mut libc::c_void, libc::size_t, *mut libc::c_void)>,
    cb2: Option<unsafe extern "C" fn(libc::c_int, *mut libc::c_void)>,
    data: *mut libc::c_void,
) -> libc::c_int {
    if p.is_null() {
        return -1;
    }
    let mut quoted = (*p).quoted;
    let mut pstate = (*p).pstate;
    let mut spaces = (*p).spaces;
    let mut entry_pos = (*p).entry_pos;
    if pstate == 2 && (*p).quoted != 0 && ((*p).options & 1) != 0 && ((*p).options & 4) != 0 {
        (*p).status = 1;
        return -1;
    }
    match pstate {
        3 | 1 | 2 => {
            if pstate == 3 {
                (*p).entry_pos = (*p).entry_pos.wrapping_sub((*p).spaces.wrapping_add(1));
                entry_pos = (*p).entry_pos;
            }
            if quoted == 0 {
                entry_pos = entry_pos.wrapping_sub(spaces);
            }
            if ((*p).options & 8) != 0 {
                *(*p).entry_buf.add(entry_pos) = 0;
            }
            if let Some(callback) = cb1 {
                if ((*p).options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                    callback(std::ptr::null_mut(), entry_pos, data);
                } else {
                    callback((*p).entry_buf.cast(), entry_pos, data);
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
            if let Some(callback) = cb2 {
                callback(-1, data);
            }
            pstate = 0;
            entry_pos = 0;
            quoted = 0;
        }
        0 => {}
        _ => {}
    }
    (*p).spaces = 0;
    (*p).quoted = 0;
    (*p).entry_pos = 0;
    (*p).status = 0;
    (*p).pstate = 0;
    0
}
