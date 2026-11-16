use std::io::Write;
#[derive(Clone, Debug)]
pub struct csv_parser {
    pub pstate: i32,
    pub quoted: i32,
    pub spaces: usize,
    pub entry_buf: Vec<u8>,
    pub entry_pos: usize,
    pub status: i32,
    pub options: u8,
    pub quote_char: u8,
    pub delim_char: u8,
    pub is_space: Option<fn(u8) -> i32>,
    pub is_term: Option<fn(u8) -> i32>,
    pub blk_size: usize,
}
pub static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];
pub fn csv_error(p: &csv_parser) -> i32 {
    p.status
}
pub fn csv_strerror(status: i32) -> &'static str {
    const CSV_EINVALID: i32 = 4;
    if !(0..CSV_EINVALID).contains(&status) {
        CSV_ERRORS[CSV_EINVALID as usize]
    } else {
        CSV_ERRORS[status as usize]
    }
}
pub fn csv_get_opts(p: Option<&csv_parser>) -> i32 {
    match p {
        None => -1,
        Some(parser) => parser.options as i32,
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
pub fn csv_init(p: &mut csv_parser, options: u8) -> i32 {
    p.entry_buf = Vec::new();
    p.pstate = 0;
    p.quoted = 0;
    p.spaces = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.options = options;
    p.quote_char = 0x22;
    p.delim_char = 0x2c;
    p.is_space = None;
    p.is_term = None;
    p.blk_size = 128;
    0
}
pub fn csv_free(p: &mut csv_parser) {
    p.entry_buf = Vec::new();
    p.entry_pos = 0;
}
pub fn csv_fini(
    p: &mut csv_parser,
    cb1: Option<&mut dyn FnMut(Option<&[u8]>)>,
    cb2: Option<&mut dyn FnMut(i32)>,
) -> i32 {
    let quoted = p.quoted;
    let pstate = p.pstate;
    let spaces = p.spaces;
    let mut entry_pos = p.entry_pos;
    if pstate == 2 && p.quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }
    let mut do_submit = false;
    match pstate {
        3 => {
            p.entry_pos = p.entry_pos.wrapping_sub(p.spaces.wrapping_add(1));
            entry_pos = p.entry_pos;
            do_submit = true;
        }
        1 | 2 => {
            do_submit = true;
        }
        _ => {}
    }
    if do_submit {
        if quoted == 0 {
            entry_pos = entry_pos.wrapping_sub(spaces);
        }
        if (p.options & 8) != 0 {
            if entry_pos >= p.entry_buf.len() {
                p.entry_buf.resize(entry_pos.saturating_add(1), 0);
            }
            p.entry_buf[entry_pos] = 0;
        }
        if let Some(f) = cb1 {
            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                f(None);
            } else {
                let n = entry_pos.min(p.entry_buf.len());
                f(Some(&p.entry_buf[..n]));
            }
        }
        if let Some(f) = cb2 {
            f(-1);
        }
    }
    p.spaces = 0;
    p.quoted = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.pstate = 0;
    0
}
pub fn csv_set_delim(p: Option<&mut csv_parser>, c: u8) {
    if let Some(p) = p {
        p.delim_char = c;
    }
}
pub fn csv_set_quote(p: Option<&mut csv_parser>, c: u8) {
    if let Some(parser) = p {
        parser.quote_char = c;
    }
}
pub fn csv_get_delim(p: &csv_parser) -> u8 {
    p.delim_char
}
pub fn csv_get_quote(p: &csv_parser) -> u8 {
    p.quote_char
}
pub fn csv_set_space_func(p: Option<&mut csv_parser>, f: Option<fn(u8) -> i32>) {
    if let Some(parser) = p {
        parser.is_space = f;
    }
}
pub fn csv_set_term_func(p: Option<&mut csv_parser>, f: Option<fn(u8) -> i32>) {
    if let Some(parser) = p {
        parser.is_term = f;
    }
}
pub fn csv_set_realloc_func(p: Option<&mut csv_parser>, f: Option<fn(usize) -> usize>) {
    if let (Some(_parser), Some(_func)) = (p, f) {}
}
pub fn csv_set_free_func(_p: &mut csv_parser, _f: Option<fn(Vec<u8>)>) {}
pub fn csv_set_blk_size(p: Option<&mut csv_parser>, size: usize) {
    if let Some(p) = p {
        p.blk_size = size;
    }
}
pub fn csv_get_buffer_size(p: Option<&csv_parser>) -> usize {
    match p {
        Some(parser) => parser.entry_buf.len(),
        None => 0,
    }
}
pub fn csv_increase_buffer(p: &mut csv_parser) -> i32 {
    let entry_size = p.entry_buf.len();
    let mut to_add: usize = p.blk_size;
    if entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    loop {
        if p.entry_buf.try_reserve_exact(to_add).is_ok() {
            break;
        }
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }
    p.entry_buf.resize(entry_size + to_add, 0);
    0
}
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
    if p.entry_buf.is_empty() && pos < len && csv_increase_buffer(p) != 0 {
        save!();
        return pos;
    }
    while pos < len {
        let limit = if p.options & 8 != 0 {
            p.entry_buf.len().wrapping_sub(1)
        } else {
            p.entry_buf.len()
        };
        if entry_pos == limit && csv_increase_buffer(p) != 0 {
            save!();
            return pos;
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
                    } else if p.options & 2 != 0 {
                        submit_row!(c);
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
pub fn csv_write(dest: Option<&mut [u8]>, src: Option<&[u8]>) -> usize {
    csv_write2(dest, src, 0x22u8)
}
pub fn csv_fwrite<W: std::io::Write>(fp: &mut W, src: &[u8]) -> i32 {
    csv_fwrite2(fp, src, 0x22u8)
}
pub fn csv_write2(dest: Option<&mut [u8]>, src: Option<&[u8]>, quote: u8) -> usize {
    fn put(dest: &mut [u8], chars: &mut usize, b: u8) {
        if let Some(slot) = dest.get_mut(*chars) {
            *slot = b;
        }
        *chars = chars.saturating_add(1);
    }
    let src = match src {
        Some(s) => s,
        None => return 0,
    };
    let mut empty: [u8; 0] = [];
    let dest: &mut [u8] = match dest {
        Some(d) => d,
        None => &mut empty,
    };
    let mut chars: usize = 0;
    put(dest, &mut chars, quote);
    for &c in src {
        if c == quote {
            put(dest, &mut chars, quote);
        }
        put(dest, &mut chars, c);
    }
    put(dest, &mut chars, quote);
    chars
}
pub fn csv_fwrite2<W: Write>(fp: &mut W, src: &[u8], quote: u8) -> i32 {
    let mut buf: Vec<u8> = Vec::with_capacity(src.len() + 2);
    buf.push(quote);
    for &b in src {
        if b == quote {
            buf.push(quote);
        }
        buf.push(b);
    }
    match fp.write_all(&buf) {
        Ok(()) => 0,
        Err(_) => -1,
    }
}
pub fn diff_timespec(time1_sec: i64, time1_nsec: i64, time0_sec: i64, time0_nsec: i64) -> f64 {
    let sec = time1_sec.wrapping_sub(time0_sec);
    let nsec = time1_nsec.wrapping_sub(time0_nsec);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
pub fn main() {
    use std::io::Read;
    let args: Vec<String> = std::env::args().collect();
    let argc = args.len();
    if argc < 2 {
        eprintln!("Usage: csvvalid files");
        std::process::exit(1);
    }
    let mut p = csv_parser {
        pstate: 0,
        quoted: 0,
        spaces: 0,
        entry_buf: Vec::new(),
        entry_pos: 0,
        status: 0,
        options: 0,
        quote_char: 0,
        delim_char: 0,
        is_space: None,
        is_term: None,
        blk_size: 0,
    };
    if csv_init(&mut p, 1) != 0 {
        eprintln!("Failed to initialize csv parser");
        std::process::exit(1);
    }
    let mut buf = [0u8; 1024];
    for name in args.iter().skip(1) {
        let mut pos: usize = 0;
        let mut fp = match std::fs::File::open(name) {
            Ok(f) => f,
            Err(e) => {
                eprintln!("Failed to open {}: {}, skipping", name, e);
                continue;
            }
        };
        let start_time = std::time::Instant::now();
        'main: {
            loop {
                let bytes_read = match fp.read(&mut buf) {
                    Ok(0) => break,
                    Ok(n) => n,
                    Err(_) => break,
                };
                let retval = csv_parse(&mut p, &buf[..bytes_read], None, None);
                if retval != bytes_read {
                    if csv_error(&p) == 1 {
                        println!("{}: malformed at byte {}", name, pos + retval + 1);
                        break 'main;
                    } else {
                        println!(
                            "Error while processing {}: {}",
                            name,
                            csv_strerror(csv_error(&p))
                        );
                        break 'main;
                    }
                }
                pos += bytes_read;
            }
            let time_elapsed = start_time.elapsed().as_secs_f64();
            println!(
                "Time taken to parse csv {}: {:.6} seconds",
                name, time_elapsed
            );
            println!("{} well-formed", name);
        }
        drop(fp);
        let _ = csv_fini(&mut p, None, None);
    }
    csv_free(&mut p);
}
