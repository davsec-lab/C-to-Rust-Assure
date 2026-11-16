use libc::size_t;
pub unsafe fn csv_fini(
    p: *mut csv_parser,
    cb1: Option<unsafe extern "C" fn(*mut libc::c_void, size_t, *mut libc::c_void)>,
    cb2: Option<unsafe extern "C" fn(libc::c_int, *mut libc::c_void)>,
    data: *mut libc::c_void,
) -> libc::c_int {
    if p.is_null() {
        return -1;
    }
    let mut quoted: libc::c_int = (*p).quoted;
    let mut pstate: libc::c_int = (*p).pstate;
    let mut spaces: size_t = (*p).spaces;
    let mut entry_pos: size_t = (*p).entry_pos;
    if pstate == 2 && (*p).quoted != 0 && ((*p).options & 1) != 0 && ((*p).options & 4) != 0 {
        (*p).status = 1;
        return -1;
    }
    let mut do_submit = false;
    match pstate {
        3 => {
            (*p).entry_pos = (*p).entry_pos.wrapping_sub((*p).spaces.wrapping_add(1));
            entry_pos = (*p).entry_pos;
            do_submit = true;
        }
        1 | 2 => {
            do_submit = true;
        }
        _ => {}
    }
    if do_submit {
        if quoted == 0 {
            entry_pos = entry_pos.wrapping_sub(spaces);
        }
        if ((*p).options & 8) != 0 {
            *(*p).entry_buf.add(entry_pos) = 0;
        }
        if cb1.is_some() && ((*p).options & 16) != 0 && quoted == 0 && entry_pos == 0 {
            (cb1.unwrap())(std::ptr::null_mut(), entry_pos, data);
        } else if let Some(f) = cb1 {
            f((*p).entry_buf as *mut libc::c_void, entry_pos, data);
        }
        pstate = 1;
        entry_pos = 0;
        quoted = 0;
        spaces = 0;
        let _ = (pstate, entry_pos, quoted, spaces);
        if let Some(f) = cb2 {
            f(-1, data);
        }
        pstate = 0;
        entry_pos = 0;
        quoted = 0;
        spaces = 0;
        let _ = (pstate, entry_pos, quoted, spaces);
    }
    (*p).spaces = 0;
    (*p).quoted = 0;
    (*p).entry_pos = 0;
    (*p).status = 0;
    (*p).pstate = 0;
    0
}
