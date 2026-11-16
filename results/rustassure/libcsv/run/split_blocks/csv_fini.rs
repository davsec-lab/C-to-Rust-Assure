pub fn csv_fini(
    p: Option<&mut csv_parser>,
    cb1: Option<&mut dyn FnMut(Option<&[u8]>, size_t)>,
    cb2: Option<&mut dyn FnMut(i32)>,
) -> i32 {
    let p = match p {
        None => return -1,
        Some(p) => p,
    };
    let mut cb1 = cb1;
    let mut cb2 = cb2;
    let quoted = p.quoted;
    let pstate = p.pstate;
    let spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if pstate == 2 && p.quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }

    if pstate == 3 {
        p.entry_pos = p.entry_pos.wrapping_sub(p.spaces + 1);
        entry_pos = p.entry_pos;
    }
    if pstate == 1 || pstate == 2 || pstate == 3 {
        if quoted == 0 {
            entry_pos = entry_pos.wrapping_sub(spaces);
        }
        if (p.options & 8) != 0 {
            if entry_pos >= p.entry_buf.len() {
                p.entry_buf.resize(entry_pos + 1, 0);
            }
            p.entry_buf[entry_pos] = 0;
        }
        if let Some(cb) = cb1.as_mut() {
            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                cb(None, entry_pos);
            } else {
                let end = entry_pos.min(p.entry_buf.len());
                cb(Some(&p.entry_buf[..end]), entry_pos);
            }
        }
        if let Some(cb) = cb2.as_mut() {
            cb(-1);
        }
    }

    p.spaces = 0;
    p.quoted = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.pstate = 0;
    0
}