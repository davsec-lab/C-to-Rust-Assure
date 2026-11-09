use core::ffi::c_void;
use std::ffi::CStr;
pub struct CsvParser<'a> {
    pub pstate: i32,
    pub quoted: i32,
    pub spaces: usize,
    pub entry_buf: Option<&'a mut [u8]>,
    pub entry_pos: usize,
    pub entry_size: usize,
    pub status: i32,
    pub options: u8,
    pub quote_char: u8,
    pub delim_char: u8,
    pub is_space: Option<unsafe extern "C" fn(u8) -> i32>,
    pub is_term: Option<unsafe extern "C" fn(u8) -> i32>,
    pub blk_size: usize,
    pub malloc_func: Option<unsafe extern "C" fn(usize) -> *mut c_void>,
    pub realloc_func: Option<unsafe extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    pub free_func: Option<unsafe extern "C" fn(*mut c_void)>,
}
static CSV_ERRORS: [&CStr; 5] = [
    unsafe { c"success" },
    unsafe {
        c"error parsing data while strict checking enabled"
    },
    unsafe {
        c"memory exhausted while increasing buffer size"
    },
    unsafe { c"data size too large" },
    unsafe { c"invalid status code" },
];
pub fn csv_error(p: &CsvParser<'_>) -> i32 {
    p.status
}
pub fn csv_strerror(status: i32) -> &'static CStr {
    let index = if !(0..4).contains(&status) {
        4
    } else {
        status as usize
    };
    CSV_ERRORS[index]
}
pub fn csv_get_opts(p: Option<&CsvParser<'_>>) -> i32 {
    p.map_or(-1, |parser| parser.options as i32)
}
pub fn csv_set_opts(p: Option<&mut CsvParser<'_>>, options: u8) -> Result<(), ()> {
    let Some(p) = p else {
        return Err(());
    };
    p.options = options;
    Ok(())
}
pub fn csv_init(p: Option<&mut CsvParser<'_>>, options: u8) -> i32 {
    let Some(p) = p else {
        return -1;
    };
    p.entry_buf = None;
    p.pstate = 0;
    p.quoted = 0;
    p.spaces = 0;
    p.entry_pos = 0;
    p.entry_size = 0;
    p.status = 0;
    p.options = options;
    p.quote_char = 0x22;
    p.delim_char = 0x2c;
    p.is_space = None;
    p.is_term = None;
    p.blk_size = 128;
    p.malloc_func = None;
    p.realloc_func = None;
    p.free_func = None;
    0
}
pub fn csv_free(parser: Option<&mut CsvParser<'_>>) {
    if let Some(parser) = parser {
        parser.entry_buf = None;
        parser.entry_size = 0;
    }
}
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
        1..=3 => {
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
pub fn csv_set_delim(p: Option<&mut CsvParser<'_>>, c: u8) {
    if let Some(parser) = p {
        parser.delim_char = c;
    }
}
pub fn csv_set_quote(p: Option<&mut CsvParser<'_>>, c: u8) {
    if let Some(p) = p {
        p.quote_char = c;
    }
}
pub fn csv_get_delim(p: &CsvParser<'_>) -> u8 {
    p.delim_char
}
pub fn csv_get_quote(p: &CsvParser<'_>) -> u8 {
    p.quote_char
}
pub fn csv_set_space_func(
    p: Option<&mut CsvParser<'_>>,
    f: Option<unsafe extern "C" fn(u8) -> i32>,
) {
    if let Some(p) = p {
        p.is_space = f;
    }
}
pub fn csv_set_term_func(
    p: Option<&mut CsvParser<'_>>,
    f: Option<unsafe extern "C" fn(u8) -> i32>,
) {
    if let Some(p) = p {
        p.is_term = f;
    }
}
pub fn csv_set_realloc_func(
    p: Option<&mut CsvParser<'_>>,
    f: Option<unsafe extern "C" fn(*mut c_void, usize) -> *mut c_void>,
) {
    if let (Some(parser), Some(func)) = (p, f) {
        parser.realloc_func = Some(func);
    }
}
pub fn csv_set_free_func(
    p: Option<&mut CsvParser<'_>>,
    f: Option<unsafe extern "C" fn(*mut c_void)>,
) {
    if let (Some(p), Some(f)) = (p, f) {
        p.free_func = Some(f);
    }
}
pub fn csv_set_blk_size(p: Option<&mut CsvParser<'_>>, size: usize) {
    if let Some(parser) = p {
        parser.blk_size = size;
    }
}
pub fn csv_get_buffer_size(p: Option<&CsvParser<'_>>) -> usize {
    p.map_or(0, |parser| parser.entry_size)
}
pub fn csv_increase_buffer(p: Option<&mut CsvParser<'_>>) -> i32 {
    let Some(p) = p else {
        return 0;
    };
    if p.realloc_func.is_none() {
        return 0;
    }
    let mut to_add = p.blk_size;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    p.status = 2;
    -1
}
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
pub fn csv_write(dest: Option<&mut [u8]>, src: Option<&[u8]>) -> usize {
    csv_write2(dest, src, 0x22)
}
pub fn csv_fwrite(writer: Option<&mut impl std::io::Write>, src: Option<&[u8]>) -> i32 {
    csv_fwrite2(writer, src, 0x22)
}
pub fn csv_write2(mut dest: Option<&mut [u8]>, src: Option<&[u8]>, quote: u8) -> usize {
    let Some(src) = src else {
        return 0;
    };
    let mut chars = 1usize;
    if let Some(buffer) = dest.as_deref_mut() {
        if let Some(slot) = buffer.first_mut() {
            *slot = quote;
        }
    }
    for &byte in src {
        if byte == quote {
            if let Some(buffer) = dest.as_deref_mut() {
                if let Some(slot) = buffer.get_mut(chars) {
                    *slot = quote;
                }
            }
            chars = chars.saturating_add(1);
        }
        if let Some(buffer) = dest.as_deref_mut() {
            if let Some(slot) = buffer.get_mut(chars) {
                *slot = byte;
            }
        }
        chars = chars.saturating_add(1);
    }
    if let Some(buffer) = dest {
        if let Some(slot) = buffer.get_mut(chars) {
            *slot = quote;
        }
    }
    chars.saturating_add(1)
}
pub fn csv_fwrite2(writer: Option<&mut impl std::io::Write>, src: Option<&[u8]>, quote: u8) -> i32 {
    let (Some(writer), Some(src)) = (writer, src) else {
        return 0;
    };
    if writer.write_all(&[quote]).is_err() {
        return -1;
    }
    for &byte in src {
        if byte == quote && writer.write_all(&[quote]).is_err() {
            return -1;
        }
        if writer.write_all(&[byte]).is_err() {
            return -1;
        }
    }
    if writer.write_all(&[quote]).is_err() {
        return -1;
    }
    0
}
