use std::io::{Read, Write};
use std::time::Instant;

pub type _IO_lock_t = ();
type __off64_t = i64;
type __off_t = i64;
type __syscall_slong_t = i64;
type __time_t = i64;
pub type size_t = usize;
pub struct csv_parser {
    pub pstate: i32,
    pub quoted: i32,
    pub spaces: size_t,
    pub entry_buf: Vec<u8>,
    pub entry_pos: size_t,
    pub entry_size: size_t,
    pub status: i32,
    pub options: u8,
    pub quote_char: u8,
    pub delim_char: u8,
    pub is_space: Option<fn(u8) -> i32>,
    pub is_term: Option<fn(u8) -> i32>,
    pub blk_size: size_t,
    pub malloc_func: Option<fn(size_t) -> Option<Vec<u8>>>,
    pub realloc_func: Option<fn(Vec<u8>, size_t) -> Option<Vec<u8>>>,
    pub free_func: Option<fn(Vec<u8>)>,
}

impl Default for csv_parser {
    fn default() -> Self {
        csv_parser {
            pstate: 0,
            quoted: 0,
            spaces: 0,
            entry_buf: Vec::new(),
            entry_pos: 0,
            entry_size: 0,
            status: 0,
            options: 0,
            quote_char: 0,
            delim_char: 0,
            is_space: None,
            is_term: None,
            blk_size: 0,
            malloc_func: None,
            realloc_func: None,
            free_func: None,
        }
    }
}
static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

pub fn csv_set_blk_size(p: Option<&mut csv_parser>, size: size_t) {
    if let Some(p) = p {
        p.blk_size = size;
    }
}
pub fn csv_fini(
    p: Option<&mut csv_parser>,
    cb1: Option<&mut dyn FnMut(Option<&[u8]>, size_t)>,
    cb2: Option<&mut dyn FnMut(i32)>,
) -> i32 {
    let p = match p {
        None => return -1,
        Some(p) => p,
    };
    let mut cb1 = cb1;
    let mut cb2 = cb2;
    let quoted = p.quoted;
    let pstate = p.pstate;
    let spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if pstate == 2 && p.quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }

    if pstate == 3 {
        p.entry_pos = p.entry_pos.wrapping_sub(p.spaces + 1);
        entry_pos = p.entry_pos;
    }
    if pstate == 1 || pstate == 2 || pstate == 3 {
        if quoted == 0 {
            entry_pos = entry_pos.wrapping_sub(spaces);
        }
        if (p.options & 8) != 0 {
            if entry_pos >= p.entry_buf.len() {
                p.entry_buf.resize(entry_pos + 1, 0);
            }
            p.entry_buf[entry_pos] = 0;
        }
        if let Some(cb) = cb1.as_mut() {
            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                cb(None, entry_pos);
            } else {
                let end = entry_pos.min(p.entry_buf.len());
                cb(Some(&p.entry_buf[..end]), entry_pos);
            }
        }
        if let Some(cb) = cb2.as_mut() {
            cb(-1);
        }
    }

    p.spaces = 0;
    p.quoted = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.pstate = 0;
    0
}
fn csv_realloc_impl(mut v: Vec<u8>, size: size_t) -> Option<Vec<u8>> {
    v.resize(size, 0);
    Some(v)
}

fn csv_free_impl(v: Vec<u8>) {
    drop(v);
}

pub fn csv_init(p: Option<&mut csv_parser>, options: u8) -> i32 {
    let p = match p {
        Some(p) => p,
        None => return -1,
    };
    p.entry_buf = Vec::new();
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
    p.realloc_func = Some(csv_realloc_impl);
    p.free_func = Some(csv_free_impl);
    0
}
pub fn csv_set_realloc_func(
    p: Option<&mut csv_parser>,
    f: Option<fn(Vec<u8>, size_t) -> Option<Vec<u8>>>,
) {
    if let (Some(p), Some(f)) = (p, f) {
        p.realloc_func = Some(f);
    }
}
fn csv_increase_buffer(p: &mut csv_parser) -> i32 {
    let realloc_func = match p.realloc_func {
        Some(f) => f,
        None => return 0,
    };
    let mut to_add: size_t = p.blk_size;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    let vp: Vec<u8> = loop {
        // Clone so the original buffer is preserved if the reallocation fails,
        // matching C realloc semantics.
        match realloc_func(p.entry_buf.clone(), p.entry_size + to_add) {
            Some(v) => break v,
            None => {
                to_add /= 2;
                if to_add == 0 {
                    p.status = 2;
                    return -1;
                }
            }
        }
    };
    p.entry_buf = vp;
    p.entry_size += to_add;
    0
}
pub fn csv_strerror(status: i32) -> &'static str {
    if status >= 4 || status < 0 {
        CSV_ERRORS[4]
    } else {
        CSV_ERRORS[status as usize]
    }
}
pub fn csv_get_quote(p: &csv_parser) -> u8 {
    p.quote_char
}
pub fn csv_get_delim(p: &csv_parser) -> u8 {
    p.delim_char
}
pub fn csv_write2(
    dest: Option<&mut [u8]>,
    dest_size: size_t,
    src: Option<&[u8]>,
    src_size: size_t,
    quote: u8,
) -> size_t {
    let src = match src {
        None => return 0,
        Some(s) => s,
    };
    let mut empty: [u8; 0] = [];
    let (dest, mut dest_size): (&mut [u8], size_t) = match dest {
        None => (&mut empty[..], 0),
        Some(d) => {
            let ds = if dest_size > d.len() { d.len() } else { dest_size };
            (d, ds)
        }
    };
    let src_size = if src_size > src.len() { src.len() } else { src_size };

    let mut chars: size_t = 0;
    if dest_size > 0 {
        dest[0] = quote;
    }
    chars += 1;
    let _ = &mut dest_size;
    for i in 0..src_size {
        let c = src[i];
        if c == quote {
            if dest_size > chars {
                dest[chars] = quote;
            }
            if chars < usize::MAX {
                chars += 1;
            }
        }
        if dest_size > chars {
            dest[chars] = c;
        }
        if chars < usize::MAX {
            chars += 1;
        }
    }
    if dest_size > chars {
        dest[chars] = quote;
    }
    if chars < usize::MAX {
        chars += 1;
    }
    chars
}
pub fn csv_free(p: Option<&mut csv_parser>) {
    let p = match p {
        Some(p) => p,
        None => return,
    };
    if !p.entry_buf.is_empty() {
        if let Some(f) = p.free_func {
            let buf = std::mem::take(&mut p.entry_buf);
            f(buf);
        }
    }
    p.entry_buf = Vec::new();
    p.entry_size = 0;
}
pub fn csv_error(p: &csv_parser) -> i32 {
    p.status
}
pub fn csv_set_free_func(p: Option<&mut csv_parser>, f: Option<fn(Vec<u8>)>) {
    if let (Some(p), Some(f)) = (p, f) {
        p.free_func = Some(f);
    }
}
pub fn csv_get_buffer_size(p: Option<&csv_parser>) -> size_t {
    match p {
        Some(parser) => parser.entry_size,
        None => 0,
    }
}

pub fn csv_fwrite2(
    fp: Option<&mut dyn Write>,
    src: Option<&[u8]>,
    src_size: usize,
    quote: u8,
) -> i32 {
    let (fp, src) = match (fp, src) {
        (Some(f), Some(s)) => (f, s),
        _ => return 0,
    };
    if fp.write_all(&[quote]).is_err() {
        return -1;
    }
    let n = src_size.min(src.len());
    for &c in &src[..n] {
        if c == quote {
            if fp.write_all(&[quote]).is_err() {
                return -1;
            }
        }
        if fp.write_all(&[c]).is_err() {
            return -1;
        }
    }
    0
}
pub fn csv_set_space_func(p: Option<&mut csv_parser>, f: Option<fn(u8) -> i32>) {
    if let Some(p) = p {
        p.is_space = f;
    }
}
pub fn csv_set_term_func(p: Option<&mut csv_parser>, f: Option<fn(u8) -> i32>) {
    if let Some(p) = p {
        p.is_term = f;
    }
}
#[derive(Debug, Clone, Copy, Default)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

fn diff_timespec(time1: &timespec, time0: &timespec) -> f64 {
    (time1.tv_sec.wrapping_sub(time0.tv_sec)) as f64
        + (time1.tv_nsec.wrapping_sub(time0.tv_nsec)) as f64 / 1000000000.0
}
pub fn csv_get_opts(p: Option<&csv_parser>) -> i32 {
    match p {
        None => -1,
        Some(p) => p.options as i32,
    }
}
pub fn csv_set_delim(p: Option<&mut csv_parser>, c: u8) {
    if let Some(p) = p {
        p.delim_char = c;
    }
}
pub fn csv_set_quote(p: Option<&mut csv_parser>, c: u8) {
    if let Some(p) = p {
        p.quote_char = c;
    }
}
pub fn csv_set_opts(p: Option<&mut csv_parser>, options: u8) -> i32 {
    match p {
        None => -1,
        Some(parser) => {
            parser.options = options;
            0
        }
    }
}
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
pub fn csv_write(
    dest: Option<&mut [u8]>,
    dest_size: size_t,
    src: Option<&[u8]>,
    src_size: size_t,
) -> size_t {
    csv_write2(dest, dest_size, src, src_size, 0x22)
}

pub fn csv_fwrite(fp: Option<&mut dyn Write>, src: Option<&[u8]>, src_size: usize) -> i32 {
    csv_fwrite2(fp, src, src_size, 0x22)
}


fn read_full(fp: &mut std::fs::File, buf: &mut [u8]) -> usize {
    let mut total = 0;
    while total < buf.len() {
        match fp.read(&mut buf[total..]) {
            Ok(0) => break,
            Ok(n) => total += n,
            Err(ref e) if e.kind() == std::io::ErrorKind::Interrupted => continue,
            Err(_) => break,
        }
    }
    total
}

fn strerror_like(e: &std::io::Error) -> String {
    let s = e.to_string();
    match s.find(" (os error") {
        Some(idx) => s[..idx].to_string(),
        None => s,
    }
}

fn main() {
    let args: Vec<std::ffi::OsString> = std::env::args_os().collect();
    let argc = args.len();
    let mut buf = [0u8; 1024];

    if argc < 2 {
        eprintln!("Usage: csvvalid files");
        std::process::exit(1);
    }

    let mut p = csv_parser::default();
    if csv_init(Some(&mut p), 1) != 0 {
        eprintln!("Failed to initialize csv parser");
        std::process::exit(1);
    }

    for i in 1..argc {
        let name = args[i].to_string_lossy().to_string();
        let mut pos: usize = 0;
        let mut fp = match std::fs::File::open(&args[i]) {
            Ok(f) => f,
            Err(e) => {
                eprintln!("Failed to open {}: {}, skipping", name, strerror_like(&e));
                continue;
            }
        };
        let start_instant = Instant::now();
        let start_time = timespec { tv_sec: 0, tv_nsec: 0 };
        // MAIN COMPUTATION BEGIN
        'end: loop {
            loop {
                let bytes_read = read_full(&mut fp, &mut buf);
                if bytes_read == 0 {
                    break;
                }
                let retval = csv_parse::<()>(
                    &mut p,
                    Some(&buf[..bytes_read]),
                    bytes_read,
                    None,
                    None,
                    &mut (),
                );
                if retval != bytes_read {
                    if csv_error(&p) == 1 {
                        println!("{}: malformed at byte {}", name, (pos + retval + 1) as u64);
                        break 'end;
                    } else {
                        println!(
                            "Error while processing {}: {}",
                            name,
                            csv_strerror(csv_error(&p))
                        );
                        break 'end;
                    }
                }
                pos += bytes_read;
            }
            // MAIN COMPUTATION END
            let el = start_instant.elapsed();
            let end_time = timespec {
                tv_sec: el.as_secs() as i64,
                tv_nsec: el.subsec_nanos() as i64,
            };
            let time_elapsed = diff_timespec(&end_time, &start_time);
            println!("Time taken to parse csv {}: {:.6} seconds", name, time_elapsed);
            println!("{} well-formed", name);
            break 'end;
        }
        drop(fp);
        csv_fini(Some(&mut p), None, None);
    }

    csv_free(Some(&mut p));
}