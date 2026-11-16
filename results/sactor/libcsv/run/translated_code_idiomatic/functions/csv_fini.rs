pub fn csv_fini(
    p: &mut csv_parser,
    cb1: Option<&mut dyn FnMut(Option<&[u8]>)>,
    cb2: Option<&mut dyn FnMut(i32)>,
) -> i32 {
    let quoted = p.quoted;
    let pstate = p.pstate;
    let spaces = p.spaces;
    let mut entry_pos = p.entry_pos;
    if pstate == 2 && p.quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }
    let mut do_submit = false;
    match pstate {
        3 => {
            p.entry_pos = p.entry_pos.wrapping_sub(p.spaces.wrapping_add(1));
            entry_pos = p.entry_pos;
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
        if (p.options & 8) != 0 {
            if entry_pos >= p.entry_buf.len() {
                p.entry_buf.resize(entry_pos.saturating_add(1), 0);
            }
            p.entry_buf[entry_pos] = 0;
        }
        if let Some(f) = cb1 {
            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                f(None);
            } else {
                let n = entry_pos.min(p.entry_buf.len());
                f(Some(&p.entry_buf[..n]));
            }
        }
        if let Some(f) = cb2 {
            f(-1);
        }
    }
    p.spaces = 0;
    p.quoted = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.pstate = 0;
    0
}
