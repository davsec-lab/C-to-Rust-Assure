#![allow(unaligned_references)]

use std::io::{self, Write};

trait AsBool {
    fn as_bool(self) -> bool;
}

impl AsBool for i32 {
    #[inline]
    fn as_bool(self) -> bool {
        self != 0
    }
}

#[repr(C, packed)]struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<&'a mut [u8]>,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: fn(u8) -> i32,
    is_term: fn(u8) -> i32,
    blk_size: usize,
    malloc_func: fn(usize) -> *mut u8,
    realloc_func: fn(*mut u8, usize) -> *mut u8,
    free_func: fn(*mut u8),
}

#[no_mangle]
fn csv_error(p: &CsvParser) -> i32 {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    p.status
}

#[no_mangle]
fn csv_fini<'a>(
    p: &mut CsvParser<'a>,
    cb1: Option<fn(*mut u8, usize, *mut u8)>,
    cb2: Option<fn(i32, *mut u8)>,
    data: *mut u8,
) -> i32 {
    if p as *const _ == std::ptr::null() {
        return -1;
    }
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;
    if (pstate == 2) && (p.quoted != 0) && (p.options & 1 != 0) && (p.options & 4 != 0) {
        p.status = 1;
        return -1;
    }
    match pstate {
        3 => {
            p.entry_pos -= p.spaces + 1;
            entry_pos = p.entry_pos;
        }
        1 | 2 => {
            if quoted == 0 {
                entry_pos -= spaces;
            }
            if p.options & 8 != 0 {
                if let Some(entry_buf) = &mut p.entry_buf {
                    entry_buf[entry_pos] = 0;
                }
            }
            if let Some(cb1) = cb1 {
                if (p.options & 16 != 0) && quoted == 0 && entry_pos == 0 {
                    cb1(std::ptr::null_mut(), entry_pos, data);
                } else {
                    if let Some(entry_buf) = &mut p.entry_buf {
                        cb1(entry_buf.as_mut_ptr(), entry_pos, data);
                    }
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
            if let Some(cb2) = cb2 {
                cb2(-1, data);
            }
            pstate = 0;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
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

#[no_mangle]
fn csv_free(p: &mut CsvParser) {
    if p.entry_buf.is_some() && p.free_func as usize != 0 {
        (p.free_func)(p.entry_buf.as_mut().unwrap().as_mut_ptr());
    }
    p.entry_buf = None;
    p.entry_size = 0;
}


#[no_mangle]
// fn csv_fwrite(fp: &mut File, src: &[u8]) -> io::Result<usize> {
//     csv_fwrite2(fp, src, b'"')
// }


// only keep fwrite2 for function signature issue
fn csv_fwrite2<W: Write>(fp: Option<&mut W>, src: Option<&[u8]>, quote: u8) -> io::Result<()> {
    let fp = match fp {
        Some(fp) => fp,
        None => return Ok(()),
    };

    let src = match src {
        Some(src) => src,
        None => return Ok(()),
    };

    fp.write_all(&[quote])?;

    for &byte in src {
        if byte == quote {
            fp.write_all(&[quote])?;
        }
        fp.write_all(&[byte])?;
    }

    fp.write_all(&[quote])?;
    Ok(())
}

fn csv_get_buffer_size(p: &CsvParser) -> usize {
    if p.entry_size != 0 {
        return p.entry_size;
    }
    0
}

fn csv_get_delim(p: &CsvParser) -> u8 {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    p.delim_char
}

fn csv_get_opts(p: Option<&CsvParser>) -> i32 {
    match p {
        None => -1,
        Some(parser) => parser.options as i32,
    }
}

fn csv_get_quote(p: &CsvParser) -> u8 {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    p.quote_char
}

//modified version
unsafe fn csv_parse<'a>(
    p: &mut crate::CsvParser<'a>,
    s: &[u8],
    cb1: Option<unsafe fn(&[u8], usize, &mut ())>,
    cb2: Option<unsafe fn(i32, &mut ())>,
    data: &mut (),
) -> usize {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");

    if s.is_empty() {
        return 0;
    }

    let mut pos = 0;
    let delim = p.delim_char;
    let quote = p.quote_char;
    let is_space = p.is_space;
    let is_term = p.is_term;
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if p.entry_buf.is_none() && pos < s.len() {
        //bug : initialize
        if crate::csv_increase_buffer(p) != 0 {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
            return pos;
        }
    }

    while pos < s.len() {
        //bug : check entry_pos
        if entry_pos == if (p.options & 8) != 0 { p.entry_size - 1 } else { p.entry_size } {
            if crate::csv_increase_buffer(p) != 0 {
                p.quoted = quoted;
                p.pstate = pstate;
                p.spaces = spaces;
                p.entry_pos = entry_pos;
                return pos;
            }
        }

        let c = s[pos];
        pos += 1;

        match pstate {
            0 | 1 => {
                if (is_space(c) != 0 || c == 0x20 || c == 0x09) && c != delim {
                    continue;
                } else if is_term(c) != 0 || c == 0x0d || c == 0x0a {
                    if pstate == 1 {
                        if !quoted.as_bool() {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            if let Some(buf) = p.entry_buf.as_mut() {
                                buf[entry_pos] = 0;
                            }
                        }
                        if let Some(cb1) = cb1 {
                            if (p.options & 16) != 0 && !quoted.as_bool() && entry_pos == 0 {
                                cb1(&[], entry_pos, data);
                            } else {
                                if let Some(buf) = p.entry_buf.as_ref() {
                                    cb1(&buf[..entry_pos], entry_pos, data);
                                }
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;

                        //fix...
                        if let Some(cb2) = cb2 {
                            cb2(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else if ((p.options & 2) != 0) {
                        //fix...
                        if let Some(cb2) = cb2 {
                            cb2(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                    continue;
                } else if c == delim {
                    if !quoted.as_bool() {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        if let Some(buf) = p.entry_buf.as_mut() {
                            buf[entry_pos] = 0;
                        }
                    }
                    if let Some(cb1) = cb1 {
                        if (p.options & 16) != 0 && !quoted.as_bool() && entry_pos == 0 {
                            cb1(&[], entry_pos, data);
                        } else {
                            if let Some(buf) = p.entry_buf.as_ref() {
                                cb1(&buf[..entry_pos], entry_pos, data);
                            }
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;

                    // fix by gabe : break will terminate the outter loop.. It isn't like in C.
                    // for here, it should use continue.
                    continue;
                    // break;
                } else if c == quote {
                    pstate = 2;
                    quoted = 1;
                } else {
                    pstate = 2;
                    quoted = 0;
                    // the len is 0 but the index is 0
                    //entry_buf: Option<&'a mut [u8]>,
                    if let Some(buf) = p.entry_buf.as_mut() {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted.as_bool() {
                        if let Some(buf) = p.entry_buf.as_mut() {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if (p.options & 1) != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        if let Some(buf) = p.entry_buf.as_mut() {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted.as_bool() {
                        if let Some(buf) = p.entry_buf.as_mut() {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                    } else {
                        if !quoted.as_bool() {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            if let Some(buf) = p.entry_buf.as_mut() {
                                buf[entry_pos] = 0;
                            }
                        }
                        if let Some(cb1) = cb1 {
                            if (p.options & 16) != 0 && !quoted.as_bool() && entry_pos == 0 {
                                cb1(&[], entry_pos, data);
                            } else {
                                if let Some(buf) = p.entry_buf.as_ref() {
                                    cb1(&buf[..entry_pos], entry_pos, data);
                                }
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if is_term(c) != 0 || c == 0x0d || c == 0x0a {
                    if !quoted.as_bool() {
                        if !quoted.as_bool() {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            if let Some(buf) = p.entry_buf.as_mut() {
                                buf[entry_pos] = 0;
                            }
                        }
                        if let Some(cb1) = cb1 {
                            if (p.options & 16) != 0 && !quoted.as_bool() && entry_pos == 0 {
                                cb1(&[], entry_pos, data);
                            } else {
                                if let Some(buf) = p.entry_buf.as_ref() {
                                    cb1(&buf[..entry_pos], entry_pos, data);
                                }
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                        // fix add terminate
                        if let Some(cb2) = cb2 {
                            cb2(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else {
                        if let Some(buf) = p.entry_buf.as_mut() {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                    }
                } else if !quoted.as_bool() && (is_space(c) != 0 || c == 0x20 || c == 0x09) {
                    if let Some(buf) = p.entry_buf.as_mut() {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    if let Some(buf) = p.entry_buf.as_mut() {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos -= spaces + 1;
                    if !quoted.as_bool() {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        if let Some(buf) = p.entry_buf.as_mut() {
                            buf[entry_pos] = 0;
                        }
                    }
                    if let Some(cb1) = cb1 {
                        if (p.options & 16) != 0 && !quoted.as_bool() && entry_pos == 0 {
                            cb1(&[], entry_pos, data);
                        } else {
                            if let Some(buf) = p.entry_buf.as_ref() {
                                cb1(&buf[..entry_pos], entry_pos, data);
                            }
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if is_term(c) != 0 || c == 0x0d || c == 0x0a {
                    entry_pos -= spaces + 1;
                    if !quoted.as_bool() {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        if let Some(buf) = p.entry_buf.as_mut() {
                            buf[entry_pos] = 0;
                        }
                    }
                    if let Some(cb1) = cb1 {
                        if (p.options & 16) != 0 && !quoted.as_bool() && entry_pos == 0 {
                            cb1(&[], entry_pos, data);
                        } else {
                            if let Some(buf) = p.entry_buf.as_ref() {
                                cb1(&buf[..entry_pos], entry_pos, data);
                            }
                        }
                    }
                    if let Some(cb2) = cb2 {
                        cb2(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if is_space(c) != 0 || c == 0x20 || c == 0x09 {
                    if let Some(buf) = p.entry_buf.as_mut() {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if (p.options & 1) != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        spaces = 0;
                        if let Some(buf) = p.entry_buf.as_mut() {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                    } else {
                        pstate = 2;
                    }
                } else {
                    if (p.options & 1) != 0 {
                        p.status = 1;
                        p.quoted = quoted;
                        p.pstate = pstate;
                        p.spaces = spaces;
                        p.entry_pos = entry_pos;
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    if let Some(buf) = p.entry_buf.as_mut() {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                }
            }
            _ => {}
        }
    }

    p.quoted = quoted;
    p.pstate = pstate;
    p.spaces = spaces;
    p.entry_pos = entry_pos;
    pos
}

fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    if p.realloc_func as *const () == std::ptr::null() {
        return 0;
    }

    let mut to_add = p.blk_size;
    let mut vp: *mut u8 = std::ptr::null_mut();

    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }

    if to_add == 0 {
        p.status = 3;
        return -1;
    }

    while {
        if let Some(buf) = &mut p.entry_buf {
            vp = (p.realloc_func)(buf.as_mut_ptr(), p.entry_size + to_add);
        }
        vp.is_null()
    } {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }

    if let Some(buf) = &mut p.entry_buf {
        *buf = unsafe { std::slice::from_raw_parts_mut(vp, p.entry_size + to_add) };
    }
    p.entry_size += to_add;
    0
}

impl<'a> CsvParser<'a> {
    #[no_mangle]
    fn new(options: u8) -> Self {
        CsvParser {
            pstate: 0,
            quoted: 0,
            spaces: 0,
            entry_buf: None,
            entry_pos: 0,
            entry_size: 0,
            status: 0,
            options,
            quote_char: 0x22,
            delim_char: 0x2c,
            is_space: |c| if c.is_ascii_whitespace() { 1 } else { 0 },
            is_term: |c| if c == b'\n' || c == b'\r' { 1 } else { 0 },
            blk_size: 128,
            malloc_func: |size| {
                let mut vec = Vec::with_capacity(size);
                let ptr = vec.as_mut_ptr();
                std::mem::forget(vec);
                ptr
            },
            realloc_func: |ptr, size| {
                if ptr.is_null() {
                    let mut vec = Vec::with_capacity(size);
                    let ptr = vec.as_mut_ptr();
                    std::mem::forget(vec);
                    ptr
                } else {
                    unsafe {
                        let vec = Vec::from_raw_parts(ptr, 0, size);
                        let mut new_vec = vec;
                        new_vec.reserve(size);
                        let new_ptr = new_vec.as_mut_ptr();
                        std::mem::forget(new_vec);
                        new_ptr
                    }
                }
            },
            free_func: |ptr| {
                if !ptr.is_null() {
                    unsafe {
                        let _ = Vec::from_raw_parts(ptr, 0, 0);
                    }
                }
            },
        }
    }
}

#[no_mangle]
fn csv_init(p: &mut CsvParser, options: u8) -> i32 {
    if p as *const _ == std::ptr::null() {
        return -1;
    }
    *p = CsvParser::new(options);
    0
}

#[no_mangle]
fn csv_set_blk_size(p: &mut CsvParser, size: usize) {
    p.blk_size = size;
}

#[no_mangle]
fn csv_set_delim(p: &mut CsvParser, c: u8) {
    p.delim_char = c;
}

fn csv_set_free_func(p: &mut CsvParser, f: fn(*mut u8)) {
    if p.free_func as usize != 0 && f as usize != 0 {
        p.free_func = f;
    }
}

fn csv_set_opts(p: &mut CsvParser, options: u8) -> i32 {
    if p as *mut _ == std::ptr::null_mut() {
        return -1;
    }
    p.options = options;
    0
}

fn csv_set_quote(p: &mut CsvParser, c: u8) {
    p.quote_char = c;
}

fn csv_set_realloc_func(p: &mut CsvParser, f: Option<fn(*mut u8, usize) -> *mut u8>) {
    if let Some(func) = f {
        p.realloc_func = func;
    }
}

fn csv_set_space_func(p: &mut CsvParser, f: fn(u8) -> i32) {
    p.is_space = f;
}

fn csv_set_term_func(p: &mut CsvParser, f: fn(u8) -> i32) {
    p.is_term = f;
}

const CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

#[no_mangle]
fn csv_strerror(status: i32) -> &'static str {
    if status >= 4 || status < 0 {
        CSV_ERRORS[4]
    } else {
        CSV_ERRORS[status as usize]
    }
}


// only keep csv_write2 for function signaure issue
fn csv_write2(dest: *mut u8, mut dest_size: usize, src: *const u8, mut src_size: usize, quote: u8) -> usize {
    let mut cdest = dest;
    let mut csrc = src;
    let mut chars = 0;
    if src.is_null() {
        return 0;
    }
    if dest.is_null() {
        dest_size = 0;
    }
    if dest_size > 0 {
        unsafe {
            *cdest = quote;
            cdest = cdest.add(1);
        }
    }
    chars += 1;
    while src_size > 0 {
        unsafe {
            if *csrc == quote {
                if dest_size > chars {
                    *cdest = quote;
                    cdest = cdest.add(1);
                }
                if chars < usize::MAX {
                    chars += 1;
                }
            }
            if dest_size > chars {
                *cdest = *csrc;
                cdest = cdest.add(1);
            }
            if chars < usize::MAX {
                chars += 1;
            }
            src_size -= 1;
            csrc = csrc.add(1);
        }
    }
    if dest_size > chars {
        unsafe {
            *cdest = quote;
        }
    }
    if chars < usize::MAX {
        chars += 1;
    }
    chars
}

fn main() {
    
}

















