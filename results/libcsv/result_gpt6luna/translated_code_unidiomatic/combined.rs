use libc::size_t;
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct csv_parser {
    pub pstate: libc::c_int,
    pub quoted: libc::c_int,
    pub spaces: size_t,
    pub entry_buf: *mut libc::c_uchar,
    pub entry_pos: size_t,
    pub entry_size: size_t,
    pub status: libc::c_int,
    pub options: libc::c_uchar,
    pub quote_char: libc::c_uchar,
    pub delim_char: libc::c_uchar,
    pub is_space: Option<unsafe extern "C" fn(libc::c_uchar) -> libc::c_int>,
    pub is_term: Option<unsafe extern "C" fn(libc::c_uchar) -> libc::c_int>,
    pub blk_size: size_t,
    pub malloc_func: Option<unsafe extern "C" fn(size_t) -> *mut libc::c_void>,
    pub realloc_func: Option<unsafe extern "C" fn(*mut libc::c_void, size_t) -> *mut libc::c_void>,
    pub free_func: Option<unsafe extern "C" fn(*mut libc::c_void) -> ()>,
}
#[repr(transparent)]
struct CsvErrorPtr(*const libc::c_char);
unsafe impl Sync for CsvErrorPtr {}
static csv_errors: [CsvErrorPtr; 5] = [
    CsvErrorPtr(b"success\0".as_ptr() as *const libc::c_char),
    CsvErrorPtr(
        b"error parsing data while strict checking enabled\0".as_ptr() as *const libc::c_char,
    ),
    CsvErrorPtr(b"memory exhausted while increasing buffer size\0".as_ptr() as *const libc::c_char),
    CsvErrorPtr(b"data size too large\0".as_ptr() as *const libc::c_char),
    CsvErrorPtr(b"invalid status code\0".as_ptr() as *const libc::c_char),
];
pub unsafe fn csv_error(p: *const csv_parser) -> libc::c_int {
    if p.is_null() {
        libc::abort();
    }
    (*p).status
}
pub unsafe fn csv_strerror(status: libc::c_int) -> CsvErrorPtr {
    let index = if !(0..4).contains(&status) {
        4
    } else {
        status as usize
    };
    CsvErrorPtr(csv_errors[index].0)
}
pub unsafe fn csv_get_opts(p: *const csv_parser) -> libc::c_int {
    if p.is_null() {
        return -1;
    }
    (*p).options as libc::c_int
}
pub unsafe fn csv_set_opts(p: *mut csv_parser, options: libc::c_uchar) -> libc::c_int {
    if p.is_null() {
        return -1;
    }
    (*p).options = options;
    0
}
pub unsafe fn csv_init(p: *mut csv_parser, options: libc::c_uchar) -> libc::c_int {
    if p.is_null() {
        return -1;
    }
    (*p).entry_buf = std::ptr::null_mut();
    (*p).pstate = 0;
    (*p).quoted = 0;
    (*p).spaces = 0;
    (*p).entry_pos = 0;
    (*p).entry_size = 0;
    (*p).status = 0;
    (*p).options = options;
    (*p).quote_char = 0x22;
    (*p).delim_char = 0x2c;
    (*p).is_space = None;
    (*p).is_term = None;
    (*p).blk_size = 128;
    (*p).malloc_func = None;
    (*p).realloc_func = Some(libc::realloc);
    (*p).free_func = Some(libc::free);
    0
}
pub unsafe fn csv_free(p: *mut csv_parser) {
    if p.is_null() {
        return;
    }
    let parser = &mut *p;
    if !parser.entry_buf.is_null() {
        if let Some(free_func) = parser.free_func {
            free_func(parser.entry_buf as *mut libc::c_void);
        }
    }
    parser.entry_buf = core::ptr::null_mut();
    parser.entry_size = 0;
}
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
        1..=3 => {
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
pub unsafe fn csv_set_delim(p: *mut csv_parser, c: libc::c_uchar) {
    if !p.is_null() {
        (*p).delim_char = c;
    }
}
pub unsafe fn csv_set_quote(p: *mut csv_parser, c: libc::c_uchar) {
    if !p.is_null() {
        (*p).quote_char = c;
    }
}
pub unsafe fn csv_get_delim(p: *const csv_parser) -> libc::c_uchar {
    assert!(!p.is_null(), "received null csv_parser");
    (*p).delim_char
}
pub unsafe fn csv_get_quote(p: *const csv_parser) -> libc::c_uchar {
    assert!(!p.is_null(), "received null csv_parser");
    (*p).quote_char
}
pub unsafe fn csv_set_space_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(libc::c_uchar) -> libc::c_int>,
) {
    if !p.is_null() {
        (*p).is_space = f;
    }
}
pub unsafe fn csv_set_term_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(libc::c_uchar) -> libc::c_int>,
) {
    if !p.is_null() {
        (*p).is_term = f;
    }
}
pub unsafe fn csv_set_realloc_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(*mut libc::c_void, libc::size_t) -> *mut libc::c_void>,
) {
    if !p.is_null() {
        if let Some(func) = f {
            (*p).realloc_func = Some(func);
        }
    }
}
pub unsafe fn csv_set_free_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(*mut libc::c_void)>,
) {
    if !p.is_null() && f.is_some() {
        (*p).free_func = f;
    }
}
pub unsafe fn csv_set_blk_size(p: *mut csv_parser, size: size_t) {
    if !p.is_null() {
        (*p).blk_size = size;
    }
}
pub unsafe fn csv_get_buffer_size(p: *const csv_parser) -> libc::size_t {
    if p.is_null() {
        0
    } else {
        unsafe { (*p).entry_size }
    }
}
pub unsafe fn csv_increase_buffer(p: *mut csv_parser) -> libc::c_int {
    if p.is_null() {
        return 0;
    }
    if (*p).realloc_func.is_none() {
        return 0;
    }
    let mut to_add: libc::size_t = (*p).blk_size;
    let size_max = libc::size_t::MAX;
    if (*p).entry_size >= size_max - to_add {
        to_add = size_max - (*p).entry_size;
    }
    if to_add == 0 {
        (*p).status = 3;
        return -1;
    }
    let realloc_func = (*p).realloc_func.unwrap();
    let vp = loop {
        let vp = realloc_func(
            (*p).entry_buf as *mut libc::c_void,
            (*p).entry_size + to_add,
        );
        if !vp.is_null() {
            break vp;
        }
        to_add /= 2;
        if to_add == 0 {
            (*p).status = 2;
            return -1;
        }
    };
    (*p).entry_buf = vp as *mut libc::c_uchar;
    (*p).entry_size += to_add;
    0
}
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
    if (*p).entry_buf.is_null() && pos < len && csv_increase_buffer(p) != 0 {
        (*p).quoted = quoted;
        (*p).pstate = pstate;
        (*p).spaces = spaces;
        (*p).entry_pos = entry_pos;
        return pos;
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
pub unsafe fn csv_write(
    dest: *mut libc::c_void,
    dest_size: usize,
    src: *const libc::c_void,
    src_size: usize,
) -> usize {
    csv_write2(dest, dest_size, src, src_size, 0x22)
}
pub unsafe fn csv_fwrite(
    fp: *mut libc::FILE,
    src: *const libc::c_void,
    src_size: usize,
) -> libc::c_int {
    csv_fwrite2(fp, src, src_size, 0x22 as libc::c_uchar)
}
pub unsafe fn csv_write2(
    dest: *mut libc::c_void,
    mut dest_size: usize,
    src: *const libc::c_void,
    mut src_size: usize,
    quote: u8,
) -> usize {
    if src.is_null() {
        return 0;
    }
    let mut cdest = dest.cast::<u8>();
    let mut csrc = src.cast::<u8>();
    let mut chars: usize = 0;
    if dest.is_null() {
        dest_size = 0;
    }
    unsafe {
        if dest_size > 0 {
            *cdest = quote;
            cdest = cdest.add(1);
        }
        chars = chars.wrapping_add(1);
        while src_size != 0 {
            if *csrc == quote {
                if dest_size > chars {
                    *cdest = quote;
                    cdest = cdest.add(1);
                }
                chars = chars.saturating_add(1);
            }
            if dest_size > chars {
                *cdest = *csrc;
                cdest = cdest.add(1);
            }
            chars = chars.saturating_add(1);
            src_size -= 1;
            csrc = csrc.add(1);
        }
        if dest_size > chars {
            *cdest = quote;
        }
        chars = chars.saturating_add(1);
    }
    chars
}
pub unsafe fn csv_fwrite2(
    fp: *mut libc::FILE,
    src: *const libc::c_void,
    mut src_size: usize,
    quote: libc::c_uchar,
) -> libc::c_int {
    if fp.is_null() || src.is_null() {
        return 0;
    }
    if libc::fputc(quote as libc::c_int, fp) == -1 {
        return -1;
    }
    let mut csrc = src as *const libc::c_uchar;
    while src_size != 0 {
        let byte = *csrc;
        if byte == quote && libc::fputc(quote as libc::c_int, fp) == -1 {
            return -1;
        }
        if libc::fputc(byte as libc::c_int, fp) == -1 {
            return -1;
        }
        src_size -= 1;
        csrc = csrc.add(1);
    }
    if libc::fputc(quote as libc::c_int, fp) == -1 {
        return -1;
    }
    0
}
