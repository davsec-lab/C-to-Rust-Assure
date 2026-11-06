use std::ffi::c_void;

type _IO_lock_t = c_void;
type __off64_t = i64;
type __off_t = i64;
pub type size_t = usize;

pub struct csv_parser {
    pub pstate: i32,
    pub quoted: i32,
    pub spaces: size_t,
    pub entry_buf: *mut u8,
    pub entry_pos: size_t,
    pub entry_size: size_t,
    pub status: i32,
    pub options: u8,
    pub quote_char: u8,
    pub delim_char: u8,
    pub is_space: Option<unsafe extern "C" fn(u8) -> i32>,
    pub is_term: Option<unsafe extern "C" fn(u8) -> i32>,
    pub blk_size: size_t,
    pub malloc_func: Option<unsafe extern "C" fn(size_t) -> *mut c_void>,
    pub realloc_func:
        Option<unsafe extern "C" fn(*mut c_void, size_t) -> *mut c_void>,
    pub free_func: Option<unsafe extern "C" fn(*mut c_void)>,
}
static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

pub unsafe extern "C" fn csv_set_blk_size(p: *mut csv_parser, size: size_t) {
    if !p.is_null() {
        (*p).blk_size = size;
    }
}
pub unsafe extern "C" fn csv_fini(
    p: *mut csv_parser,
    cb1: Option<unsafe extern "C" fn(*mut core::ffi::c_void, usize, *mut core::ffi::c_void)>,
    cb2: Option<unsafe extern "C" fn(i32, *mut core::ffi::c_void)>,
    data: *mut core::ffi::c_void,
) -> i32 {
    if p.is_null() {
        return -1;
    }

    let p = &mut *p;
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if pstate == 2 && p.quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }

    if pstate == 3 {
        p.entry_pos -= p.spaces + 1;
        entry_pos = p.entry_pos;
    }

    if pstate == 1 || pstate == 2 || pstate == 3 {
        if quoted == 0 {
            entry_pos -= spaces;
        }

        if (p.options & 8) != 0 {
            *p.entry_buf.add(entry_pos) = 0;
        }

        if let Some(callback) = cb1 {
            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                callback(core::ptr::null_mut(), entry_pos, data);
            } else {
                callback(p.entry_buf.cast(), entry_pos, data);
            }
        }

        pstate = 1;
        entry_pos = 0;
        quoted = 0;

        if let Some(callback) = cb2 {
            callback(-1, data);
        }

        pstate = 0;
        entry_pos = 0;
        quoted = 0;
    }

    p.spaces = 0;
    p.quoted = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.pstate = 0;

    0
}
pub unsafe extern "C" fn csv_init(p: *mut csv_parser, options: u8) -> i32 {
    if p.is_null() {
        return -1;
    }

    (*p).entry_buf = core::ptr::null_mut();
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
pub unsafe extern "C" fn csv_set_realloc_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(*mut core::ffi::c_void, size_t) -> *mut core::ffi::c_void>,
) {
    if !p.is_null() && f.is_some() {
        (*p).realloc_func = f;
    }
}
unsafe fn csv_increase_buffer(p: *mut csv_parser) -> i32 {
    if p.is_null() {
        return 0;
    }

    let p = unsafe { &mut *p };
    let realloc_func = match p.realloc_func {
        Some(func) => func,
        None => return 0,
    };

    let mut to_add = p.blk_size;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }

    if to_add == 0 {
        p.status = 3;
        return -1;
    }

    let mut vp;
    loop {
        vp = unsafe {
            realloc_func(
                p.entry_buf.cast(),
                p.entry_size + to_add,
            )
        };

        if !vp.is_null() {
            break;
        }

        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }

    p.entry_buf = vp.cast();
    p.entry_size += to_add;
    0
}
fn csv_strerror(status: i32) -> &'static str {
    if status >= 4 || status < 0 {
        CSV_ERRORS[4]
    } else {
        CSV_ERRORS[status as usize]
    }
}
pub unsafe extern "C" fn csv_get_quote(p: *const csv_parser) -> u8 {
    assert!(!p.is_null(), "received null csv_parser");
    (*p).quote_char
}
pub unsafe extern "C" fn csv_get_delim(p: *const csv_parser) -> u8 {
    assert!(!p.is_null(), "received null csv_parser");
    (*p).delim_char
}
pub unsafe fn csv_write2(
    dest: *mut c_void,
    mut dest_size: usize,
    src: *const c_void,
    mut src_size: usize,
    quote: u8,
) -> usize {
    if src.is_null() {
        return 0;
    }

    if dest.is_null() {
        dest_size = 0;
    }

    let mut cdest = dest.cast::<u8>();
    let mut csrc = src.cast::<u8>();
    let mut chars = 0usize;

    if dest_size > 0 {
        *cdest = quote;
        cdest = cdest.wrapping_add(1);
    }
    chars += 1;

    while src_size > 0 {
        let byte = *csrc;

        if byte == quote {
            if dest_size > chars {
                *cdest = quote;
                cdest = cdest.wrapping_add(1);
            }
            chars = chars.saturating_add(1);
        }

        if dest_size > chars {
            *cdest = byte;
            cdest = cdest.wrapping_add(1);
        }
        chars = chars.saturating_add(1);

        src_size -= 1;
        csrc = csrc.wrapping_add(1);
    }

    if dest_size > chars {
        *cdest = quote;
    }
    chars.saturating_add(1)
}
pub unsafe extern "C" fn csv_free(p: *mut csv_parser) {
    if p.is_null() {
        return;
    }

    if !(*p).entry_buf.is_null() {
        if let Some(free_func) = (*p).free_func {
            free_func((*p).entry_buf.cast());
        }
    }

    (*p).entry_buf = core::ptr::null_mut();
    (*p).entry_size = 0;
}
pub unsafe extern "C" fn csv_error(p: *const csv_parser) -> i32 {
    assert!(!p.is_null(), "received null csv_parser");
    (*p).status
}
pub unsafe extern "C" fn csv_set_free_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(*mut core::ffi::c_void)>,
) {
    if !p.is_null() {
        if let Some(f) = f {
            (*p).free_func = Some(f);
        }
    }
}
pub unsafe extern "C" fn csv_get_buffer_size(p: *const csv_parser) -> size_t {
    if !p.is_null() {
        (*p).entry_size
    } else {
        0
    }
}
pub unsafe extern "C" fn csv_fwrite2(
    fp: *mut libc::FILE,
    src: *const c_void,
    mut src_size: usize,
    quote: u8,
) -> core::ffi::c_int {
    if fp.is_null() || src.is_null() {
        return 0;
    }

    if libc::fputc(quote as core::ffi::c_int, fp) == -1 {
        return -1;
    }

    let mut csrc = src.cast::<u8>();
    while src_size != 0 {
        let byte = *csrc;

        if byte == quote && libc::fputc(quote as core::ffi::c_int, fp) == -1 {
            return -1;
        }

        if libc::fputc(byte as core::ffi::c_int, fp) == -1 {
            return -1;
        }

        src_size -= 1;
        csrc = csrc.add(1);
    }

    if libc::fputc(quote as core::ffi::c_int, fp) == -1 {
        return -1;
    }

    0
}
pub unsafe extern "C" fn csv_set_space_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(u8) -> i32>,
) {
    if !p.is_null() {
        (*p).is_space = f;
    }
}
pub unsafe extern "C" fn csv_set_term_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(u8) -> i32>,
) {
    if !p.is_null() {
        (*p).is_term = f;
    }
}
pub unsafe extern "C" fn csv_get_opts(p: *const csv_parser) -> i32 {
    if p.is_null() {
        return -1;
    }
    (*p).options as i32
}
pub unsafe extern "C" fn csv_set_delim(p: *mut csv_parser, c: u8) {
    if !p.is_null() {
        (*p).delim_char = c;
    }
}
pub unsafe extern "C" fn csv_set_quote(p: *mut csv_parser, c: u8) {
    if !p.is_null() {
        (*p).quote_char = c;
    }
}
pub unsafe extern "C" fn csv_set_opts(p: *mut csv_parser, options: u8) -> i32 {
    if p.is_null() {
        return -1;
    }

    (*p).options = options;
    0
}
unsafe fn csv_parse(
    p: *mut csv_parser,
    s: *const core::ffi::c_void,
    len: size_t,
    cb1: Option<unsafe extern "C" fn(*mut core::ffi::c_void, size_t, *mut core::ffi::c_void)>,
    cb2: Option<unsafe extern "C" fn(i32, *mut core::ffi::c_void)>,
    data: *mut core::ffi::c_void,
) -> size_t {
    assert!(!p.is_null());

    if s.is_null() {
        return 0;
    }

    let us = s.cast::<u8>();
    let delim = (*p).delim_char;
    let quote = (*p).quote_char;
    let is_space = (*p).is_space;
    let is_term = (*p).is_term;
    let mut quoted = (*p).quoted;
    let mut pstate = (*p).pstate;
    let mut spaces = (*p).spaces;
    let mut entry_pos = (*p).entry_pos;
    let mut pos = 0;

    if (*p).entry_buf.is_null() && pos < len {
        if csv_increase_buffer(p) != 0 {
            (*p).quoted = quoted;
            (*p).pstate = pstate;
            (*p).spaces = spaces;
            (*p).entry_pos = entry_pos;
            return pos;
        }
    }

    macro_rules! emit_field {
        () => {{
            if quoted == 0 {
                entry_pos -= spaces;
            }
            if (*p).options & 8 != 0 {
                *(*p).entry_buf.add(entry_pos) = 0;
            }
            if let Some(callback) = cb1 {
                if (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                    callback(core::ptr::null_mut(), entry_pos, data);
                } else {
                    callback((*p).entry_buf.cast(), entry_pos, data);
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
        }};
    }

    macro_rules! emit_term {
        ($c:expr) => {{
            if let Some(callback) = cb2 {
                callback($c as i32, data);
            }
            pstate = 0;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
        }};
    }

    while pos < len {
        let limit = if (*p).options & 8 != 0 {
            (*p).entry_size - 1
        } else {
            (*p).entry_size
        };

        if entry_pos == limit && csv_increase_buffer(p) != 0 {
            (*p).quoted = quoted;
            (*p).pstate = pstate;
            (*p).spaces = spaces;
            (*p).entry_pos = entry_pos;
            return pos;
        }

        let c = *us.add(pos);
        pos += 1;

        let space = is_space.map_or(c == 0x20 || c == 0x09, |f| f(c) != 0);
        let term = is_term.map_or(c == 0x0d || c == 0x0a, |f| f(c) != 0);

        match pstate {
            0 | 1 => {
                if space && c != delim {
                    continue;
                } else if term {
                    if pstate == 1 {
                        emit_field!();
                        emit_term!(c);
                    } else if (*p).options & 2 != 0 {
                        emit_term!(c);
                    }
                    continue;
                } else if c == delim {
                    emit_field!();
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
                    } else if (*p).options & 1 != 0 {
                        (*p).status = 1;
                        (*p).quoted = quoted;
                        (*p).pstate = pstate;
                        (*p).spaces = spaces;
                        (*p).entry_pos = entry_pos;
                        return pos - 1;
                    } else {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                    } else {
                        emit_field!();
                    }
                } else if term {
                    if quoted == 0 {
                        emit_field!();
                        emit_term!(c);
                    } else {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                    }
                } else if quoted == 0 && space {
                    *(*p).entry_buf.add(entry_pos) = c;
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    *(*p).entry_buf.add(entry_pos) = c;
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos -= spaces + 1;
                    emit_field!();
                } else if term {
                    entry_pos -= spaces + 1;
                    emit_field!();
                    emit_term!(c);
                } else if space {
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
                            return pos - 1;
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
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    *(*p).entry_buf.add(entry_pos) = c;
                    entry_pos += 1;
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
    dest: *mut core::ffi::c_void,
    dest_size: usize,
    src: *const core::ffi::c_void,
    src_size: usize,
) -> usize {
    csv_write2(dest, dest_size, src, src_size, 0x22)
}
unsafe fn csv_fwrite(
    fp: *mut libc::FILE,
    src: *const std::ffi::c_void,
    src_size: usize,
) -> core::ffi::c_int {
    unsafe { csv_fwrite2(fp, src, src_size, 0x22) }
}