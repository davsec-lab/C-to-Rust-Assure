pub unsafe fn csv_parse(
    p: *mut csv_parser,
    s: *const libc::c_void,
    len: libc::size_t,
    cb1: Option<unsafe extern "C" fn(*mut libc::c_void, libc::size_t, *mut libc::c_void)>,
    cb2: Option<unsafe extern "C" fn(libc::c_int, *mut libc::c_void)>,
    data: *mut libc::c_void,
) -> libc::size_t {
    assert!(!p.is_null(), "received null csv_parser");
    if s.is_null() {
        return 0;
    }
    let us = s as *const libc::c_uchar;
    let mut pos: libc::size_t = 0;
    let delim = (*p).delim_char;
    let quote = (*p).quote_char;
    let is_space = (*p).is_space;
    let is_term = (*p).is_term;
    let mut quoted = (*p).quoted;
    let mut pstate = (*p).pstate;
    let mut spaces = (*p).spaces;
    let mut entry_pos = (*p).entry_pos;
    if (*p).entry_buf.is_null() && pos < len {
        if csv_increase_buffer(p) != 0 {
            (*p).quoted = quoted;
            (*p).pstate = pstate;
            (*p).spaces = spaces;
            (*p).entry_pos = entry_pos;
            return pos;
        }
    }
    while pos < len {
        let entry_limit = if (*p).options & 8 != 0 {
            (*p).entry_size.wrapping_sub(1)
        } else {
            (*p).entry_size
        };
        if entry_pos == entry_limit && csv_increase_buffer(p) != 0 {
            (*p).quoted = quoted;
            (*p).pstate = pstate;
            (*p).spaces = spaces;
            (*p).entry_pos = entry_pos;
            return pos;
        }
        let c = *us.add(pos);
        pos += 1;
        match pstate {
            0 | 1 => {
                let is_space_char = match is_space {
                    Some(f) => f(c) != 0,
                    None => c == 0x20 || c == 0x09,
                };
                let is_term_char = match is_term {
                    Some(f) => f(c) != 0,
                    None => c == 0x0d || c == 0x0a,
                };
                if is_space_char && c != delim {
                    continue;
                } else if is_term_char {
                    if pstate == 1 {
                        if quoted == 0 {
                            entry_pos = entry_pos.wrapping_sub(spaces);
                        }
                        if (*p).options & 8 != 0 {
                            *(*p).entry_buf.add(entry_pos) = 0;
                        }
                        if let Some(f) = cb1 {
                            if (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                                f(std::ptr::null_mut(), entry_pos, data);
                            } else {
                                f((*p).entry_buf as *mut libc::c_void, entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                        if let Some(f) = cb2 {
                            f(c as libc::c_int, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else if (*p).options & 2 != 0 {
                        if let Some(f) = cb2 {
                            f(c as libc::c_int, data);
                        }
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
                    if (*p).options & 8 != 0 {
                        *(*p).entry_buf.add(entry_pos) = 0;
                    }
                    if let Some(f) = cb1 {
                        if (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                            f(std::ptr::null_mut(), entry_pos, data);
                        } else {
                            f((*p).entry_buf as *mut libc::c_void, entry_pos, data);
                        }
                    }
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
                    *(*p).entry_buf.add(entry_pos) = c;
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if (*p).options & 1 != 0 {
                            (*p).status = 1;
                            (*p).quoted = quoted;
                            (*p).pstate = pstate;
                            (*p).spaces = spaces;
                            (*p).entry_pos = entry_pos;
                            return pos.wrapping_sub(1);
                        }
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                    } else {
                        if quoted == 0 {
                            entry_pos = entry_pos.wrapping_sub(spaces);
                        }
                        if (*p).options & 8 != 0 {
                            *(*p).entry_buf.add(entry_pos) = 0;
                        }
                        if let Some(f) = cb1 {
                            if (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                                f(std::ptr::null_mut(), entry_pos, data);
                            } else {
                                f((*p).entry_buf as *mut libc::c_void, entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else {
                    let is_term_char = match is_term {
                        Some(f) => f(c) != 0,
                        None => c == 0x0d || c == 0x0a,
                    };
                    let is_space_char = match is_space {
                        Some(f) => f(c) != 0,
                        None => c == 0x20 || c == 0x09,
                    };
                    if is_term_char {
                        if quoted == 0 {
                            if quoted == 0 {
                                entry_pos = entry_pos.wrapping_sub(spaces);
                            }
                            if (*p).options & 8 != 0 {
                                *(*p).entry_buf.add(entry_pos) = 0;
                            }
                            if let Some(f) = cb1 {
                                if (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                                    f(std::ptr::null_mut(), entry_pos, data);
                                } else {
                                    f((*p).entry_buf as *mut libc::c_void, entry_pos, data);
                                }
                            }
                            pstate = 1;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                            if let Some(f) = cb2 {
                                f(c as libc::c_int, data);
                            }
                            pstate = 0;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                        } else {
                            *(*p).entry_buf.add(entry_pos) = c;
                            entry_pos += 1;
                        }
                    } else if quoted == 0 && is_space_char {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                        spaces += 1;
                    } else {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                        spaces = 0;
                    }
                }
            }
            3 => {
                let is_term_char = match is_term {
                    Some(f) => f(c) != 0,
                    None => c == 0x0d || c == 0x0a,
                };
                if c == delim {
                    entry_pos = entry_pos.wrapping_sub(spaces).wrapping_sub(1);
                    if (*p).options & 8 != 0 {
                        *(*p).entry_buf.add(entry_pos) = 0;
                    }
                    if let Some(f) = cb1 {
                        if (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                            f(std::ptr::null_mut(), entry_pos, data);
                        } else {
                            f((*p).entry_buf as *mut libc::c_void, entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if is_term_char {
                    entry_pos = entry_pos.wrapping_sub(spaces).wrapping_sub(1);
                    if (*p).options & 8 != 0 {
                        *(*p).entry_buf.add(entry_pos) = 0;
                    }
                    if let Some(f) = cb1 {
                        if (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                            f(std::ptr::null_mut(), entry_pos, data);
                        } else {
                            f((*p).entry_buf as *mut libc::c_void, entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    if let Some(f) = cb2 {
                        f(c as libc::c_int, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else {
                    let is_space_char = match is_space {
                        Some(f) => f(c) != 0,
                        None => c == 0x20 || c == 0x09,
                    };
                    if is_space_char {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                        spaces += 1;
                    } else if c == quote {
                        if spaces != 0 {
                            if (*p).options & 1 != 0 {
                                (*p).status = 1;
                                (*p).quoted = quoted;
                                (*p).pstate = pstate;
                                (*p).spaces = spaces;
                                (*p).entry_pos = entry_pos;
                                return pos.wrapping_sub(1);
                            }
                            spaces = 0;
                            *(*p).entry_buf.add(entry_pos) = c;
                            entry_pos += 1;
                        } else {
                            pstate = 2;
                        }
                    } else {
                        if (*p).options & 1 != 0 {
                            (*p).status = 1;
                            (*p).quoted = quoted;
                            (*p).pstate = pstate;
                            (*p).spaces = spaces;
                            (*p).entry_pos = entry_pos;
                            return pos.wrapping_sub(1);
                        }
                        pstate = 2;
                        spaces = 0;
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                    }
                }
            }
            _ => {}
        }
    }
    (*p).quoted = quoted;
    (*p).pstate = pstate;
    (*p).spaces = spaces;
    (*p).entry_pos = entry_pos;
    pos
}
