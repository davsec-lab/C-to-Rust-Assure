pub fn csv_fini(
    p: Option<&mut CsvParser<'_>>,
    cb1: Option<extern "C" fn(*mut core::ffi::c_void, usize, *mut core::ffi::c_void)>,
    cb2: Option<extern "C" fn(i32, *mut core::ffi::c_void)>,
    data: Option<&mut core::ffi::c_void>,
) -> i32 {
    let Some(p) = p else {
        return -1;
    };
    let quoted = p.quoted;
    let pstate = p.pstate;
    let spaces = p.spaces;
    let mut entry_pos = p.entry_pos;
    let data = data.map_or(core::ptr::null_mut(), |value| value as *mut _);
    if pstate == 2 && quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }
    match pstate {
        3 | 1 | 2 => {
            if pstate == 3 {
                p.entry_pos = p.entry_pos.wrapping_sub(p.spaces.wrapping_add(1));
                entry_pos = p.entry_pos;
            }
            if quoted == 0 {
                entry_pos = entry_pos.wrapping_sub(spaces);
            }
            if (p.options & 8) != 0 {
                if let Some(byte) = p
                    .entry_buf
                    .as_deref_mut()
                    .and_then(|buf| buf.get_mut(entry_pos))
                {
                    *byte = 0;
                }
            }
            if let Some(callback) = cb1 {
                let empty_is_null = (p.options & 16) != 0 && quoted == 0 && entry_pos == 0;
                let entry_ptr = if empty_is_null {
                    core::ptr::null_mut()
                } else {
                    p.entry_buf
                        .as_deref_mut()
                        .map_or(core::ptr::null_mut(), |buf| buf.as_mut_ptr().cast())
                };
                callback(entry_ptr, entry_pos, data);
            }
            if let Some(callback) = cb2 {
                callback(-1, data);
            }
        }
        0 => {}
        _ => {}
    }
    p.spaces = 0;
    p.quoted = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.pstate = 0;
    0
}
