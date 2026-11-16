pub fn csv_parse(
    p: &mut csv_parser,
    s: &[u8],
    cb1: Option<&mut dyn FnMut(Option<&[u8]>)>,
    cb2: Option<&mut dyn FnMut(i32)>,
) -> usize {
    let len = s.len();
    let mut cb1 = cb1;
    let mut cb2 = cb2;
    let mut c: u8;
    let mut pos: usize = 0;
    let delim: u8 = p.delim_char;
    let quote: u8 = p.quote_char;
    let is_space = p.is_space;
    let is_term = p.is_term;
    let mut quoted: i32 = p.quoted;
    let mut pstate: i32 = p.pstate;
    let mut spaces: usize = p.spaces;
    let mut entry_pos: usize = p.entry_pos;
    macro_rules! save {
        () => {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
        };
    }
    macro_rules! isspace {
        ($c:expr) => {
            match is_space {
                Some(f) => f($c) != 0,
                None => $c == 0x20 || $c == 0x09,
            }
        };
    }
    macro_rules! isterm {
        ($c:expr) => {
            match is_term {
                Some(f) => f($c) != 0,
                None => $c == 0x0d || $c == 0x0a,
            }
        };
    }
    macro_rules! submit_char {
        ($c:expr) => {
            p.entry_buf[entry_pos] = $c;
            entry_pos += 1;
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
            if let Some(f) = cb1.as_mut() {
                if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                    f(None);
                } else {
                    f(Some(&p.entry_buf[..entry_pos]));
                }
            }
            pstate = 1;
            quoted = 0;
            spaces = 0;
            entry_pos = 0;
        };
    }
    macro_rules! submit_row {
        ($c:expr) => {
            if let Some(f) = cb2.as_mut() {
                f($c as i32);
            }
            pstate = 0;
            quoted = 0;
            spaces = 0;
            entry_pos = 0;
        };
    }
    if p.entry_buf.is_empty() && pos < len {
        if csv_increase_buffer(p) != 0 {
            save!();
            return pos;
        }
    }
    while pos < len {
        let limit = if p.options & 8 != 0 {
            p.entry_buf.len().wrapping_sub(1)
        } else {
            p.entry_buf.len()
        };
        if entry_pos == limit {
            if csv_increase_buffer(p) != 0 {
                save!();
                return pos;
            }
        }
        c = s[pos];
        pos += 1;
        match pstate {
            0 | 1 => {
                if isspace!(c) && c != delim {
                    continue;
                } else if isterm!(c) {
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
                    submit_char!(c);
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        submit_char!(c);
                        pstate = 3;
                    } else {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            save!();
                            return pos - 1;
                        }
                        submit_char!(c);
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        submit_char!(c);
                    } else {
                        submit_field!();
                    }
                } else if isterm!(c) {
                    if quoted == 0 {
                        submit_field!();
                        submit_row!(c);
                    } else {
                        submit_char!(c);
                    }
                } else if quoted == 0 && isspace!(c) {
                    submit_char!(c);
                    spaces += 1;
                } else {
                    submit_char!(c);
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos = entry_pos.wrapping_sub(spaces + 1);
                    submit_field!();
                } else if isterm!(c) {
                    entry_pos = entry_pos.wrapping_sub(spaces + 1);
                    submit_field!();
                    submit_row!(c);
                } else if isspace!(c) {
                    submit_char!(c);
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            save!();
                            return pos - 1;
                        }
                        spaces = 0;
                        submit_char!(c);
                    } else {
                        pstate = 2;
                    }
                } else {
                    if p.options & 1 != 0 {
                        p.status = 1;
                        save!();
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    submit_char!(c);
                }
            }
            _ => {}
        }
    }
    save!();
    pos
}
