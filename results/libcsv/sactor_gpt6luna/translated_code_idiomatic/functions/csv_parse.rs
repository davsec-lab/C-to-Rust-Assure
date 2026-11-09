pub fn csv_parse(
    p: &mut CsvParser<'_>,
    s: &[u8],
    cb1: Option<unsafe extern "C" fn(*mut c_void, usize, *mut c_void)>,
    cb2: Option<unsafe extern "C" fn(i32, *mut c_void)>,
    mut data: Option<&mut c_void>,
) -> usize {
    macro_rules! save_state {
        ($parser:expr, $quoted:expr, $pstate:expr, $spaces:expr, $entry_pos:expr) => {{
            ($parser).quoted = $quoted;
            ($parser).pstate = $pstate;
            ($parser).spaces = $spaces;
            ($parser).entry_pos = $entry_pos;
        }};
    }
    macro_rules! emit_entry {
        ($parser:expr, $quoted:expr, $entry_pos:expr, $callback:expr, $data:expr) => {{
            if let Some(f) = $callback {
                let field_ptr = if ($parser).options & 16 != 0 && $quoted == 0 && $entry_pos == 0 {
                    std::ptr::null_mut()
                } else {
                    ($parser)
                        .entry_buf
                        .as_deref_mut()
                        .map_or(std::ptr::null_mut(), |buf| {
                            buf.as_mut_ptr().cast::<c_void>()
                        })
                };
                let data_ptr = ($data)
                    .as_deref_mut()
                    .map_or(std::ptr::null_mut(), |value| value as *mut c_void);
                unsafe {
                    f(field_ptr, $entry_pos, data_ptr);
                }
            }
        }};
    }
    macro_rules! emit_row {
        ($c:expr, $callback:expr, $data:expr) => {{
            if let Some(f) = $callback {
                let data_ptr = ($data)
                    .as_deref_mut()
                    .map_or(std::ptr::null_mut(), |value| value as *mut c_void);
                unsafe {
                    f($c as i32, data_ptr);
                }
            }
        }};
    }
    let mut pos = 0usize;
    let delim = p.delim_char;
    let quote = p.quote_char;
    let is_space = p.is_space;
    let is_term = p.is_term;
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;
    if p.entry_buf.is_none() && pos < s.len() && csv_increase_buffer(Some(&mut *p)) != 0 {
        save_state!(p, quoted, pstate, spaces, entry_pos);
        return pos;
    }
    while pos < s.len() {
        let entry_limit = if p.options & 8 != 0 {
            p.entry_size.wrapping_sub(1)
        } else {
            p.entry_size
        };
        if entry_pos == entry_limit && csv_increase_buffer(Some(&mut *p)) != 0 {
            save_state!(p, quoted, pstate, spaces, entry_pos);
            return pos;
        }
        let c = s[pos];
        pos += 1;
        match pstate {
            0 | 1 => {
                let is_space_char = match is_space {
                    Some(f) => unsafe { f(c) != 0 },
                    None => c == 0x20 || c == 0x09,
                };
                let is_term_char = match is_term {
                    Some(f) => unsafe { f(c) != 0 },
                    None => c == 0x0d || c == 0x0a,
                };
                if is_space_char && c != delim {
                    continue;
                } else if is_term_char {
                    if pstate == 1 {
                        if quoted == 0 {
                            entry_pos = entry_pos.wrapping_sub(spaces);
                        }
                        if p.options & 8 != 0 {
                            p.entry_buf.as_deref_mut().unwrap()[entry_pos] = 0;
                        }
                        emit_entry!(p, quoted, entry_pos, cb1, data);
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                        emit_row!(c, cb2, data);
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else if p.options & 2 != 0 {
                        emit_row!(c, cb2, data);
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                    continue;
                } else if c == delim {
                    if quoted == 0 {
                        entry_pos = entry_pos.wrapping_sub(spaces);
                    }
                    if p.options & 8 != 0 {
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = 0;
                    }
                    emit_entry!(p, quoted, entry_pos, cb1, data);
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if c == quote {
                    pstate = 2;
                    quoted = 1;
                } else {
                    pstate = 2;
                    quoted = 0;
                    p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                    entry_pos = entry_pos.wrapping_add(1);
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                        entry_pos = entry_pos.wrapping_add(1);
                        pstate = 3;
                    } else {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            save_state!(p, quoted, pstate, spaces, entry_pos);
                            return pos.wrapping_sub(1);
                        }
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                        entry_pos = entry_pos.wrapping_add(1);
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                        entry_pos = entry_pos.wrapping_add(1);
                    } else {
                        entry_pos = entry_pos.wrapping_sub(spaces);
                        if p.options & 8 != 0 {
                            p.entry_buf.as_deref_mut().unwrap()[entry_pos] = 0;
                        }
                        emit_entry!(p, quoted, entry_pos, cb1, data);
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else {
                    let is_term_char = match is_term {
                        Some(f) => unsafe { f(c) != 0 },
                        None => c == 0x0d || c == 0x0a,
                    };
                    let is_space_char = match is_space {
                        Some(f) => unsafe { f(c) != 0 },
                        None => c == 0x20 || c == 0x09,
                    };
                    if is_term_char {
                        if quoted == 0 {
                            entry_pos = entry_pos.wrapping_sub(spaces);
                            if p.options & 8 != 0 {
                                p.entry_buf.as_deref_mut().unwrap()[entry_pos] = 0;
                            }
                            emit_entry!(p, quoted, entry_pos, cb1, data);
                            pstate = 1;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                            emit_row!(c, cb2, data);
                            pstate = 0;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                        } else {
                            p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                            entry_pos = entry_pos.wrapping_add(1);
                        }
                    } else if quoted == 0 && is_space_char {
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                        entry_pos = entry_pos.wrapping_add(1);
                        spaces = spaces.wrapping_add(1);
                    } else {
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                        entry_pos = entry_pos.wrapping_add(1);
                        spaces = 0;
                    }
                }
            }
            3 => {
                let is_term_char = match is_term {
                    Some(f) => unsafe { f(c) != 0 },
                    None => c == 0x0d || c == 0x0a,
                };
                if c == delim {
                    entry_pos = entry_pos.wrapping_sub(spaces).wrapping_sub(1);
                    if p.options & 8 != 0 {
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = 0;
                    }
                    emit_entry!(p, quoted, entry_pos, cb1, data);
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if is_term_char {
                    entry_pos = entry_pos.wrapping_sub(spaces).wrapping_sub(1);
                    if p.options & 8 != 0 {
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = 0;
                    }
                    emit_entry!(p, quoted, entry_pos, cb1, data);
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    emit_row!(c, cb2, data);
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else {
                    let is_space_char = match is_space {
                        Some(f) => unsafe { f(c) != 0 },
                        None => c == 0x20 || c == 0x09,
                    };
                    if is_space_char {
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                        entry_pos = entry_pos.wrapping_add(1);
                        spaces = spaces.wrapping_add(1);
                    } else if c == quote {
                        if spaces != 0 {
                            if p.options & 1 != 0 {
                                p.status = 1;
                                save_state!(p, quoted, pstate, spaces, entry_pos);
                                return pos.wrapping_sub(1);
                            }
                            spaces = 0;
                            p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                            entry_pos = entry_pos.wrapping_add(1);
                        } else {
                            pstate = 2;
                        }
                    } else {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            save_state!(p, quoted, pstate, spaces, entry_pos);
                            return pos.wrapping_sub(1);
                        }
                        pstate = 2;
                        spaces = 0;
                        p.entry_buf.as_deref_mut().unwrap()[entry_pos] = c;
                        entry_pos = entry_pos.wrapping_add(1);
                    }
                }
            }
            _ => {}
        }
    }
    save_state!(p, quoted, pstate, spaces, entry_pos);
    pos
}
