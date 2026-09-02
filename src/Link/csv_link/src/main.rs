#![allow(unaligned_references)]

// Rust struct definitions
use libc::{c_char, c_int, option, size_t};
use std::{ptr, slice, cmp};
use std::ffi::{c_void, CStr};


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

const CSV_COMMA: u8 = 0x2c;
const CSV_QUOTE: u8 = 0x22;
const CSV_END: i32 = 0;
const CSV_COL: i32 = 1;
const CSV_ROW: i32 = 2;
const CSV_ERR: i32 = 3;



const CSV_STRICT: u8 = 1;
const CSV_REPALL_NL: u8 = 2;
const CSV_STRICT_FINI: u8 = 4;
const CSV_APPEND_NULL: u8 = 8;
const CSV_EMPTY_IS_NULL: u8 = 16;



#[repr(C)]
#[derive(Debug, Copy, Clone)]
struct Event {
    event_type: i32,
    retval:    i32,
    size:      usize,
    data:      *const c_char,
}

static mut EVENT_PTR: *mut Event = ptr::null_mut();
static mut EVENT_IDX: i32 = 0;
static mut ROW: i32 = 0;
static mut COL: i32 = 0;

fn noop(_b: u8) -> i32 { 0 }

pub unsafe fn cb1(data: &[u8], len: usize, t: &mut ()) {

    // let test_name = t as *mut c_void as *const c_char;
    let mut result : bool = true;
    if (*EVENT_PTR).event_type != CSV_COL {
        // fail_parser(test_name, c_str!("didn't expect a column"));
        println!("error column event_type, index : {}", EVENT_IDX);
        result = false;
    }

    if (*EVENT_PTR).size != len {
        // fail_parser(test_name, c_str!("actual data length doesn't match expected data length"));
        println!("error column size, index : {}", EVENT_IDX);
        result = false;
    }


    let expected_ptr = (*EVENT_PTR).data as *const u8;

    let expected_slice = slice::from_raw_parts(expected_ptr, len);
    if expected_slice != data {
        // fail_parser(test_name, c_str!("actual data doesn't match expected data"));
        println!("data column does not match : {}", EVENT_IDX);
        result = false;
    }

    if result {
        println!("pass column test : {}", EVENT_IDX);
    }
    EVENT_IDX  += 1;
    EVENT_PTR  = EVENT_PTR.add(1);
    COL        += 1;
}

#[no_mangle]
pub unsafe fn cb2(c: i32, t: &mut ()) {
    // let test_name = t as *mut c_void as *const c_char;
    let mut result : bool = true;

    if (*EVENT_PTR).event_type != CSV_ROW {
        // fail_parser(test_name, b"didn't expect end of row\0".as_ptr() as _);
        println!("error row event_type, index : {}", EVENT_IDX);
        result = false;
    }

    if (*EVENT_PTR).retval != c {
        // fail_parser(
        //     test_name,
        //     b"row ended with unexpected character\0".as_ptr() as _,
        // );
        println!("error row event_type, index : {}", EVENT_IDX);
        result = false;
    }

    if result {
        println!("pass row test, index : {}", EVENT_IDX);
    }

    EVENT_IDX += 1;
    EVENT_PTR = EVENT_PTR.add(1);
    COL = 1;
    ROW += 1;
}


trait AsBool {
    fn as_bool(self) -> bool;
}

impl AsBool for i32 {
    #[inline]
    fn as_bool(self) -> bool {
        self != 0
    }
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


// change function signature to align with csv_parse
// marco can be reused across different functions
// change to unsafe
#[no_mangle]
unsafe fn csv_fini<'a>(
    p: &mut CsvParser<'a>,
    cb1: Option<unsafe fn(&[u8], usize, &mut ())>,
    cb2: Option<unsafe fn(i32, &mut ())>,
    data: &mut (),
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


            //fix : match will not execute other state like what does switch do in C
            // we need to add the following process just like in 1 or 2 state
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
                    cb1(&[], entry_pos, data);
                } else {
                    if let Some(entry_buf) = &mut p.entry_buf {
                        cb1(&entry_buf[..entry_pos], entry_pos, data);
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
                    cb1(&[], entry_pos, data);
                } else {
                    if let Some(entry_buf) = &mut p.entry_buf {
                        cb1(&entry_buf[..entry_pos], entry_pos, data);
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

// #[no_mangle]
// fn csv_free(p: &mut CsvParser) {
//     if p.entry_buf.is_some() && p.free_func as usize != 0 {
//         (p.free_func)(p.entry_buf.as_mut().unwrap().as_mut_ptr());
//     }
//     p.entry_buf = None;
//     p.entry_size = 0;
// }


// change this to a bug version found by rust assure
#[no_mangle] fn csv_free(p: &mut CsvParser) {
    if p as *mut _ == std::ptr::null_mut() {
        return;
    }
    if let Some(ref entry_buf) = p.entry_buf {
        (p.free_func)(p.entry_buf.as_mut().unwrap().as_mut_ptr());
    }
    p.entry_buf = None;
    p.entry_size = 0;
}

// #[no_mangle]
// fn csv_set_delim(p: &mut CsvParser, c: u8) {
//     p.delim_char = c;
// }


// we change it to a bug version..
#[no_mangle] fn csv_set_delim(p: &mut CsvParser, c: u8) {
    if p.delim_char != 0 {
        p.delim_char = c;
    }
}

#[no_mangle]
fn csv_set_quote(p: &mut CsvParser, c: u8) {
    p.quote_char = c;
}

#[no_mangle]
fn csv_set_space_func(p: &mut CsvParser, f: fn(u8) -> i32) {
    p.is_space = f;
}

#[no_mangle]
fn csv_set_term_func(p: &mut CsvParser, f: fn(u8) -> i32) {
    p.is_term = f;
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
    // bug
    while {
        if let Some(buf) = &mut p.entry_buf {
            vp = (p.realloc_func)(buf.as_mut_ptr(), p.entry_size + to_add);
        } else {
            // Fix by gabe, we need to handle if entry_buf is None
            vp = (p.realloc_func)(std::ptr::null_mut(), p.entry_size + to_add);
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
    } else {
        // Fix by gabe, we need to handle if entry_buf is None
        p.entry_buf = Some(unsafe { std::slice::from_raw_parts_mut(vp, p.entry_size + to_add) });
    }
    p.entry_size += to_add;
    0
}


#[no_mangle]
unsafe fn csv_parse<'a>(
    p: &mut CsvParser<'a>,
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
        if csv_increase_buffer(p) != 0 {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
            return pos;
        }
    }

    while pos < s.len() {
        if entry_pos == if (p.options & 8) != 0 { p.entry_size - 1 } else { p.entry_size } {
            if csv_increase_buffer(p) != 0 {
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

fn test_parser(
    test_name: &mut (),
    options: u8,
    input: &[u8],
    expected: &mut [Event],
    delimited: u8,
    quote: u8,
    space_func: fn(u8) -> i32,
    term_func: fn(u8) -> i32,
) {
        unsafe{
            ROW = 1;
            COL = 1;
            EVENT_PTR = expected.as_mut_ptr();
            EVENT_IDX = 1;
            let mut processed : usize = 0;
            let mut parser = CsvParser::new(options);
            let p: &mut CsvParser = &mut parser;
            csv_set_delim(p, delimited);
            csv_set_quote(p, quote);
            csv_set_space_func(p, space_func);
            csv_set_term_func(p, term_func);
            let remaining: &[u8] = &input[processed..];
            let retrval = csv_parse(
                p,
                remaining,
                Some(cb1),
                Some(cb2),
                test_name,
            );
            //check : processed size
            println!("processd size is : {}", retrval);
            //check : retrval size
            if (retrval != remaining.len()) {
                if ((*EVENT_PTR).event_type != CSV_ERR) {
                    println!("unexpected error type");
                } else {
                    csv_free(p);
                    return;
                }
            }
            let result = csv_fini(p, Some(cb1), Some(cb2), test_name);
            if (result != 0) {
                if ((*EVENT_PTR).event_type != CSV_ERR) {
                    println!("unexpected error happen");
                } else {
                    // println!("detect expected error");
                    csv_free(p);
                    return;
                }
            } else {
                //success
                // println!("fini success");
            }
            csv_free(p);

            if ((*EVENT_PTR).event_type != CSV_END) {
                println!("unexpected end of the input");
            }
        }
}

fn test_00() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"1,2,3,4,5\x0d\x0a";
    let D1: &[u8] = b"1";
    let D2: &[u8] = b"2";
    let D3: &[u8] = b"3";
    let D4: &[u8] = b"4";
    let D5: &[u8] = b"5";
    let mut result: [Event; 7] = [
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D1.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D2.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D3.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D4.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D5.as_ptr() as *const _ },
        Event { event_type: CSV_ROW, retval: 0x0d, size: 1, data: ptr::null()         },
        Event { event_type: CSV_END, retval: 0,    size: 0, data: ptr::null()         },
    ];
    test_parser(test_name, 0, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

fn test_01() {
    let test_name: &mut () = &mut ();
    // static TEST01_DATA: &[u8] = b"1,2,3,4,5\x0d\x0a";
    let data: &[u8] = b" 1,2 ,  3         ,4,5\x0d\x0a";
    let D1: &[u8] = b"1";
    let D2: &[u8] = b"2";
    let D3: &[u8] = b"3";
    let D4: &[u8] = b"4";
    let D5: &[u8] = b"5";
    let mut result: [Event; 7] = [
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D1.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D2.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D3.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D4.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D5.as_ptr() as *const _ },
        Event { event_type: CSV_ROW, retval: 0x0d, size: 1, data: ptr::null()         },
        Event { event_type: CSV_END, retval: 0,    size: 0, data: ptr::null()         },
    ];
    test_parser(test_name, 0, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

fn test_01_strict() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b" 1,2 ,  3         ,4,5\x0d\x0a";
    let D1: &[u8] = b"1";
    let D2: &[u8] = b"2";
    let D3: &[u8] = b"3";
    let D4: &[u8] = b"4";
    let D5: &[u8] = b"5";
    let mut result: [Event; 7] = [
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D1.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D2.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D3.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D4.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D5.as_ptr() as *const _ },
        Event { event_type: CSV_ROW, retval: 0x0d, size: 1, data: ptr::null()         },
        Event { event_type: CSV_END, retval: 0,    size: 0, data: ptr::null()         },
    ];
    test_parser(test_name, CSV_STRICT, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

fn test_01_strict_or_empty() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b" 1,2 ,  3         ,4,5\x0d\x0a";
    let D1: &[u8] = b"1";
    let D2: &[u8] = b"2";
    let D3: &[u8] = b"3";
    let D4: &[u8] = b"4";
    let D5: &[u8] = b"5";
    let mut result: [Event; 7] = [
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D1.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D2.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D3.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D4.as_ptr() as *const _ },
        Event { event_type: CSV_COL, retval: 0,    size: 1, data: D5.as_ptr() as *const _ },
        Event { event_type: CSV_ROW, retval: 0x0d, size: 1, data: ptr::null()         },
        Event { event_type: CSV_END, retval: 0,    size: 0, data: ptr::null()         },
    ];
    test_parser(test_name, CSV_STRICT | CSV_EMPTY_IS_NULL, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

//target value is a slice whose length is 0
//use nullptr to initialize the target slice
fn test_02() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b",,,,,\x0a";
    let D1 = std::ptr::null();
    let mut result: [Event; 8] = [
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];

    test_parser(test_name, 0, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

fn test_02_strict() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b",,,,,\x0a";
    let D1 = std::ptr::null();
    let mut result: [Event; 8] = [
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D1 as *const c_char},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];

    test_parser(test_name, CSV_STRICT, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

fn test_03() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"\",\",\",\",\"\"";;
    let D1 = b",";
    let D2 = std::ptr::null();
    let mut result: [Event; 5] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D2 as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

fn test_03_strict() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"\",\",\",\",\"\"";;
    let D1 = b",";
    let D2 = std::ptr::null();
    let mut result: [Event; 5] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: D2 as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

fn test_04() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"\"I call our world Flatland,\x0a\
not because we call it so,\x0a\
but to make its nature clearer\x0a\
to you, my happy readers,\x0a\
who are privileged to live in Space.\"";
    let D1 = b"I call our world Flatland,\x0a\
    not because we call it so,\x0a\
    but to make its nature clearer\x0a\
    to you, my happy readers,\x0a\
    who are privileged to live in Space.";
    let mut result: [Event; 3] = [
        Event {event_type: CSV_COL, retval:0, size:147, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

fn test_04_strict() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"\"I call our world Flatland,\x0a\
not because we call it so,\x0a\
but to make its nature clearer\x0a\
to you, my happy readers,\x0a\
who are privileged to live in Space.\"";
    let D1 = b"I call our world Flatland,\x0a\
    not because we call it so,\x0a\
    but to make its nature clearer\x0a\
    to you, my happy readers,\x0a\
    who are privileged to live in Space.";
    let mut result: [Event; 3] = [
        Event {event_type: CSV_COL, retval:0, size:147, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop)
}

fn test_05() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"\"\"\"a,b\"\"\",,\" \"\"\"\" \",\"\"\"\"\" \",\" \"\"\"\"\",\"\"\"\"\"\"";
    let D1 = b"\"a,b\"";
    let D2 = b" \"\" ";
    let D3 = b"\"\" ";
    let D4 = b" \"\"";
    let D5 = b"\"\"";
    let D6 = b"\"a,b\"";
    let mut result: [Event; 8] = [
        Event {event_type: CSV_COL, retval:0, size:5, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:4, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:3, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:3, data: D4.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:2, data: D5.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_05_strict() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"\"\"\"a,b\"\"\",,\" \"\"\"\" \",\"\"\"\"\" \",\" \"\"\"\"\",\"\"\"\"\"\"";
    let D1 = b"\"a,b\"";
    let D2 = b" \"\" ";
    let D3 = b"\"\" ";
    let D4 = b" \"\"";
    let D5 = b"\"\"";
    let D6 = b"\"a,b\"";
    let mut result: [Event; 8] = [
        Event {event_type: CSV_COL, retval:0, size:5, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:4, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:3, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:3, data: D4.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:2, data: D5.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_05_strict_fini() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"\"\"\"a,b\"\"\",,\" \"\"\"\" \",\"\"\"\"\" \",\" \"\"\"\"\",\"\"\"\"\"\"";
    let D1 = b"\"a,b\"";
    let D2 = b" \"\" ";
    let D3 = b"\"\" ";
    let D4 = b" \"\"";
    let D5 = b"\"\"";
    let D6 = b"\"a,b\"";
    let mut result: [Event; 8] = [
        Event {event_type: CSV_COL, retval:0, size:5, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:4, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:3, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:3, data: D4.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:2, data: D5.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT | CSV_STRICT_FINI, data, & mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_06() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"\" a, b ,c \", a b  c,";
    let D1 = b" a, b ,c ";
    let D2 = b"a b  c";
    let mut result: [Event; 5] = [
        Event {event_type: CSV_COL, retval:0, size:9, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:6, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_06_strict() {
    let test_name: &mut () = &mut ();
    let data: &[u8] = b"\" a, b ,c \", a b  c,";
    let D1 = b" a, b ,c ";
    let D2 = b"a b  c";
    let mut result: [Event; 5] = [
        Event {event_type: CSV_COL, retval:0, size:9, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:6, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_07() {
    let test_name: &mut () = &mut ();
    let data = b"\" \"\" \" \" \"\" \"";;
    let D1 = b" \" \" \" \" ";
    let mut result: [Event; 3] = [
        Event {event_type: CSV_COL, retval:0, size:9, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_07_b() {
    let test_name: &mut () = &mut ();
    let data = b"\" \"\" \" \" \"\" \"";
    let mut result: [Event; 1] = [
        Event {event_type: CSV_ERR, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

// This test case in C and Rust has different number of spaces
fn test_08() {
    let test_name: &mut () = &mut ();
    let data = b"\" abc\"                                             \
                                                     \
                                                     \
                                                     \
                                                     \
                                                     \
                                                     \
                                                   \
                                          \", \"123\"";
    let D1 = b" abc\"                                             \
                                                     \
                                                     \
                                                     \
                                                     \
                                                     \
                                                     \
                                          \", \"123\"";
    let D2 = b"123";
    let mut result: [Event; 4] = [
        Event {event_type: CSV_COL, retval:0, size:50, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:3, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()}
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_09() {
    let test_name: &mut () = &mut ();
    let data= b"";
    let mut result: [Event; 1] = [
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_09_empty_isnull() {
    let test_name: &mut () = &mut ();
    let data= b"";
    let mut result: [Event; 1] = [
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_EMPTY_IS_NULL, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_10() {
    let test_name: &mut () = &mut ();
    let data = b"a\x0a";
    let D1 = b"a";
    let mut result: [Event; 3] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()}
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_11() {
    let test_name: &mut () = &mut ();
    let data = b"1,2 ,3,4\x0a";;
    let D1 = b"1";
    let D2 = b"2";
    let D3 = b"3";
    let D4 = b"4";

    let mut result: [Event; 6] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D4.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_11_empty_isnull() {
    let test_name: &mut () = &mut ();
    let data = b"1,2 ,3,4\x0a";;
    let D1 = b"1";
    let D2 = b"2";
    let D3 = b"3";
    let D4 = b"4";

    let mut result: [Event; 6] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D4.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_EMPTY_IS_NULL, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_12() {
    let test_name: &mut () = &mut ();
    let data = b"\x0a\x0a\x0a\x0a";;
    let mut result: [Event; 1] = [
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_12_b() {
    let test_name: &mut () = &mut ();
    let data = b"\x0a\x0a\x0a\x0a";;
    let mut result: [Event; 5] = [
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_REPALL_NL, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_12_b_isnull() {
    let test_name: &mut () = &mut ();
    let data = b"\x0a\x0a\x0a\x0a";;
    let mut result: [Event; 5] = [
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_REPALL_NL | CSV_EMPTY_IS_NULL, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_12_empty_isnull() {
    let test_name: &mut () = &mut ();
    let data = b"\x0a\x0a\x0a\x0a";;
    let mut result: [Event; 1] = [
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_EMPTY_IS_NULL, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_13() {
    let test_name: &mut () = &mut ();
    let data = b"\"abc\"";
    let D1 = b"abc";
    let mut result: [Event; 3] = [
        Event {event_type: CSV_COL, retval:0, size:3, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_14() {
    let test_name: &mut () = &mut ();
    let data = b"1, 2, 3,\x0a\x0d\x0a  \"4\", \x0d,";
    let D1 = b"1";
    let D2 = b"2";
    let D3 = b"3";
    let D4 = b"4";
    let mut result: [Event; 12] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:1, data: D4.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0d, size:1, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:-1, size:0, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_14_strict() {
    let test_name: &mut () = &mut ();
    let data = b"1, 2, 3,\x0a\x0d\x0a  \"4\", \x0d,";
    let D1 = b"1";
    let D2 = b"2";
    let D3 = b"3";
    let D4 = b"4";
    let mut result: [Event; 12] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:1, data: D4.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0d, size:1, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:-1, size:0, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_15() {
    let test_name: &mut () = &mut ();
    let data = b"1, 2, 3,\x0a\x0d\x0a  \"4\", \x0d\"\"";
    let D1 = b"1";
    let D2 = b"2";
    let D3 = b"3";
    let D4 = b"4";
    let mut result: [Event; 11] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:1, data: D4.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0d, size:1, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:-1, size:0, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_15_strict() {
    let test_name: &mut () = &mut ();
    let data = b"1, 2, 3,\x0a\x0d\x0a  \"4\", \x0d\"\"";
    let D1 = b"1";
    let D2 = b"2";
    let D3 = b"3";
    let D4 = b"4";
    let mut result: [Event; 11] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0a, size:1, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:1, data: D4.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:0x0d, size:1, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:-1, size:0, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_16() {
    let test_name: &mut () = &mut ();
    let data = b"\"1\",\"2\",\" 3 ";
    let D1 = b"1";
    let D2 = b"2";
    let D3 = b" 3 ";
    let mut result: [Event; 5] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:3, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_16_strict() {
    let test_name: &mut () = &mut ();
    let data = b"\"1\",\"2\",\" 3 ";
    let D1 = b"1";
    let D2 = b"2";
    let D3 = b" 3 ";
    let mut result: [Event; 5] = [
        Event {event_type: CSV_COL, retval:0, size:1, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:1, data: D2.as_ptr() as *const c_char},
        Event {event_type: CSV_COL, retval:0, size:3, data: D3.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_17() {
    let test_name: &mut () = &mut ();
    let data = b" a\0b\0c ";
    let D1 = b"a\0b\0c";
    let mut result: [Event; 3] = [
        Event {event_type: CSV_COL, retval:0, size:5, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, 0, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_17_strict() {
    let test_name: &mut () = &mut ();
    let data = b" a\0b\0c ";
    let D1 = b"a\0b\0c";
    let mut result: [Event; 3] = [
        Event {event_type: CSV_COL, retval:0, size:5, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_17_strict_is_null() {
    let test_name: &mut () = &mut ();
    let data = b" a\0b\0c ";
    let D1 = b"a\0b\0c";
    let mut result: [Event; 3] = [
        Event {event_type: CSV_COL, retval:0, size:5, data: D1.as_ptr() as *const c_char},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_STRICT | CSV_EMPTY_IS_NULL, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_19() {
    let test_name: &mut () = &mut ();
    let data = b"  , \"\" ,";
    let mut result: [Event; 5] = [
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_COL, retval:0, size:0, data: ptr::null()},
        Event {event_type: CSV_ROW, retval:-1, size:1, data: ptr::null()},
        Event {event_type: CSV_END, retval:0, size:0, data: ptr::null()},
    ];
    test_parser(test_name, CSV_EMPTY_IS_NULL, data,  &mut result, CSV_COMMA, CSV_QUOTE, noop, noop);
}

fn test_all_parse() {
    // test_00();
    println!("test 01 \n");
    test_01();
    println!("test 01a \n");
    test_01_strict();
    println!("test 01b \n");
    test_01_strict_or_empty();
    println!("test 02 \n");
    test_02();
    println!("test 02a \n");
    test_02_strict();
    println!("test 03 \n");
    test_03();
    println!("test 03a \n");
    test_03_strict();
    println!("test 04 \n");
    test_04();
    println!("test 04a \n");
    test_04_strict();
    println!("test 05 \n");
    test_05();
    println!("test 05a \n");
    test_05_strict();
    println!("test 05b \n");
    test_05_strict_fini();
    println!("test 06 \n");
    test_06();
    println!("test 06a \n");
    test_06_strict();
    println!("test 07 \n");
    test_07();
    println!("test 07a \n");
    test_07_b();
    println!("test 08 \n");
    test_08();
    println!("test 09 \n");
    test_09();
    println!("test 09a \n");
    test_09_empty_isnull();
    println!("test 10 \n");
    test_10();
    println!("test 11 \n");
    test_11();
    println!("test 11a \n");
    test_11_empty_isnull();
    println!("test 12 \n");
    test_12();
    println!("test 12a \n");
    test_12_empty_isnull();
    println!("test 12b \n");
    test_12_b();
    println!("test 12c \n");
    test_12_b_isnull();
    println!("test 13 \n");
    test_13();
    println!("test 14 \n");
    test_14();
    println!("test 14a \n");
    test_14_strict();
    println!("test 15 \n");
    test_15();
    println!("test 15a \n");
    test_15_strict();
    println!("test 16 \n");
    test_16();
    println!("test 16a \n");
    test_16_strict();
    println!("test 17 \n");
    test_17();
    println!("test 17a \n");
    test_17_strict();
    println!("test 17b \n");
    test_17_strict_is_null();
    println!("test 19 \n");
    test_19();
}


// This is a bug case when dest is empty. cannot be found by original test case in libcsv
pub fn csv_write2(dest: &mut [u8], src: &[u8], quote: u8) -> usize {
    let mut cdest = 0;
    let mut csrc = 0;
    let mut chars = 0;

    if src.is_empty() {
        return 0;
    }

    if dest.is_empty() {
        //bug found by Rust-assure
        return 0;
    }

    if !dest.is_empty() {
        dest[cdest] = quote;
        cdest += 1;
    }
    chars += 1;

    while csrc < src.len() {
        if src[csrc] == quote {
            if cdest < dest.len() {
                dest[cdest] = quote;
                cdest += 1;
            }
            if chars < usize::MAX {
                chars += 1;
            }
        }
        if cdest < dest.len() {
            dest[cdest] = src[csrc];
            cdest += 1;
        }
        if chars < usize::MAX {
            chars += 1;
        }
        csrc += 1;
    }

    if cdest < dest.len() {
        dest[cdest] = quote;
    }
    if chars < usize::MAX {
        chars += 1;
    }

    chars
}

pub fn test_write(input: &[u8], expected: &[u8], expected_len: usize, quote: u8) {
    let mut buf = vec![0u8; input.len() * 2 + 2];
    let actual_len = csv_write2(&mut buf, input, quote);
    if actual_len != expected_len {
        println!("size does not match")
    } else {
        if expected != &buf[..actual_len] {
            println!("data does not match");
        }
    }
}
pub fn test_write_all_case() {
    //case#1
    test_write(b"abc", b"'abc'", 5, b'\'');
    //case2
    test_write(b"''''''''", b"''''''''''''''''''", 18, b'\'');
}

fn main() {
    test_all_parse();
    // test_write_all_case();
}
