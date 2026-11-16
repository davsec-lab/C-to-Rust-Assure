pub fn csv_parse<T>(
    p: &mut csv_parser,
    s: Option<&[u8]>,
    len: size_t,
    cb1: Option<fn(Option<&[u8]>, size_t, &mut T)>,
    cb2: Option<fn(i32, &mut T)>,
    data: &mut T,
) -> size_t {
    let us = match s {
        None => return 0,
        Some(x) => x,
    };
    let mut c: u8;
    let mut pos: size_t = 0;
    let delim: u8 = p.delim_char;
    let quote: u8 = p.quote_char;
    let is_space = p.is_space;
    let is_term = p.is_term;
    let mut quoted: i32 = p.quoted;
    let mut pstate: i32 = p.pstate;
    let mut spaces: size_t = p.spaces;
    let mut entry_pos: size_t = p.entry_pos;

    let space_check = |c: u8| -> bool {
        match is_space {
            Some(f) => f(c) != 0,
            None => c == 0x20 || c == 0x09,
        }
    };
    let term_check = |c: u8| -> bool {
        match is_term {
            Some(f) => f(c) != 0,
            None => c == 0x0d || c == 0x0a,
        }
    };

    macro_rules! save_state {
        () => {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
        };
    }

    macro_rules! submit_field {
        () => {
            if quoted == 0 {
                entry_pos = entry_pos.wrapping_sub(spaces);
            }
            if p.options & 8 != 0 {
                p.entry_buf[entry_pos] = 0;
            }
            if let Some(f) = cb1 {
                if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                    f(None, entry_pos, data);
                } else {
                    f(Some(&p.entry_buf[..]), entry_pos, data);
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
        };
    }

    macro_rules! submit_row {
        ($c:expr) => {
            if let Some(f) = cb2 {
                f($c as i32, data);
            }
            pstate = 0;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
        };
    }

    if p.entry_buf.is_empty() && pos < len {
        if csv_increase_buffer(p) != 0 {
            save_state!();
            return pos;
        }
    }

    while pos < len {
        let limit = if (p.options & 8) != 0 {
            p.entry_size.wrapping_sub(1)
        } else {
            p.entry_size
        };
        if entry_pos == limit {
            if csv_increase_buffer(p) != 0 {
                save_state!();
                return pos;
            }
        }
        c = us[pos];
        pos += 1;
        match pstate {
            0 | 1 => {
                if space_check(c) && c != delim {
                    continue;
                } else if term_check(c) {
                    if pstate == 1 {
                        submit_field!();
                        submit_row!(c);
                    } else {
                        if p.options & 2 != 0 {
                            submit_row!(c);
                        }
                    }
                    continue;
                } else if c == delim {
                    submit_field!();
                } else if c == quote {
                    pstate = 2;
                    quoted = 1;
                } else {
                    pstate = 2;
                    quoted = 0;
                    p.entry_buf[entry_pos] = c;
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            save_state!();
                            return pos - 1;
                        }
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                    } else {
                        submit_field!();
                    }
                } else if term_check(c) {
                    if quoted == 0 {
                        submit_field!();
                        submit_row!(c);
                    } else {
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                    }
                } else if quoted == 0 && space_check(c) {
                    p.entry_buf[entry_pos] = c;
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    p.entry_buf[entry_pos] = c;
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos = entry_pos.wrapping_sub(spaces + 1);
                    submit_field!();
                } else if term_check(c) {
                    entry_pos = entry_pos.wrapping_sub(spaces + 1);
                    submit_field!();
                    submit_row!(c);
                } else if space_check(c) {
                    p.entry_buf[entry_pos] = c;
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            save_state!();
                            return pos - 1;
                        }
                        spaces = 0;
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                    } else {
                        pstate = 2;
                    }
                } else {
                    if p.options & 1 != 0 {
                        p.status = 1;
                        save_state!();
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    p.entry_buf[entry_pos] = c;
                    entry_pos += 1;
                }
            }
            _ => {}
        }
    }
    save_state!();
    pos
}