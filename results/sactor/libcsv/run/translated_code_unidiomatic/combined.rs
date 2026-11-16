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
#[allow(non_upper_case_globals)]
#[repr(transparent)]
pub struct CsvErrors(pub [*const libc::c_char; 5]);
unsafe impl Sync for CsvErrors {}
#[allow(non_upper_case_globals)]
static csv_errors: CsvErrors = CsvErrors([
    b"success\0".as_ptr() as *const libc::c_char,
    b"error parsing data while strict checking enabled\0".as_ptr() as *const libc::c_char,
    b"memory exhausted while increasing buffer size\0".as_ptr() as *const libc::c_char,
    b"data size too large\0".as_ptr() as *const libc::c_char,
    b"invalid status code\0".as_ptr() as *const libc::c_char,
]);
extern "C" {
    static mut stderr: *mut libc::FILE;
}
pub unsafe fn csv_error(p: *const csv_parser) -> libc::c_int {
    if p.is_null() {
        panic!("assertion failed: p && \"received null csv_parser\"");
    }
    (*p).status
}
pub fn csv_strerror(status: i32) -> *const libc::c_char {
    const CSV_EINVALID: i32 = 4;
    unsafe {
        let base = &csv_errors as *const _ as *const *const libc::c_char;
        if !(0..CSV_EINVALID).contains(&status) {
            *base.add(CSV_EINVALID as usize)
        } else {
            *base.add(status as usize)
        }
    }
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
    if !(*p).entry_buf.is_null() {
        if let Some(f) = (*p).free_func {
            f((*p).entry_buf as *mut libc::c_void);
        }
    }
    (*p).entry_buf = std::ptr::null_mut();
    (*p).entry_size = 0;
}
pub unsafe fn csv_fini(
    p: *mut csv_parser,
    cb1: Option<unsafe extern "C" fn(*mut libc::c_void, size_t, *mut libc::c_void)>,
    cb2: Option<unsafe extern "C" fn(libc::c_int, *mut libc::c_void)>,
    data: *mut libc::c_void,
) -> libc::c_int {
    if p.is_null() {
        return -1;
    }
    let mut quoted: libc::c_int = (*p).quoted;
    let mut pstate: libc::c_int = (*p).pstate;
    let mut spaces: size_t = (*p).spaces;
    let mut entry_pos: size_t = (*p).entry_pos;
    if pstate == 2 && (*p).quoted != 0 && ((*p).options & 1) != 0 && ((*p).options & 4) != 0 {
        (*p).status = 1;
        return -1;
    }
    let mut do_submit = false;
    match pstate {
        3 => {
            (*p).entry_pos = (*p).entry_pos.wrapping_sub((*p).spaces.wrapping_add(1));
            entry_pos = (*p).entry_pos;
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
        if ((*p).options & 8) != 0 {
            *(*p).entry_buf.add(entry_pos) = 0;
        }
        if cb1.is_some() && ((*p).options & 16) != 0 && quoted == 0 && entry_pos == 0 {
            (cb1.unwrap())(std::ptr::null_mut(), entry_pos, data);
        } else if let Some(f) = cb1 {
            f((*p).entry_buf as *mut libc::c_void, entry_pos, data);
        }
        pstate = 1;
        entry_pos = 0;
        quoted = 0;
        spaces = 0;
        let _ = (pstate, entry_pos, quoted, spaces);
        if let Some(f) = cb2 {
            f(-1, data);
        }
        pstate = 0;
        entry_pos = 0;
        quoted = 0;
        spaces = 0;
        let _ = (pstate, entry_pos, quoted, spaces);
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
    if p.is_null() {
        panic!("received null csv_parser");
    }
    (*p).delim_char
}
pub unsafe fn csv_get_quote(p: *const csv_parser) -> libc::c_uchar {
    if p.is_null() {
        libc::abort();
    }
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
    if !p.is_null() && f.is_some() {
        (*p).realloc_func = f;
    }
}
pub unsafe fn csv_set_free_func(
    p: *mut csv_parser,
    f: Option<unsafe extern "C" fn(*mut libc::c_void) -> ()>,
) {
    if !p.is_null() && f.is_some() {
        (*p).free_func = f;
    }
}
#[no_mangle]
pub unsafe fn csv_set_blk_size(p: *mut csv_parser, size: size_t) {
    if !p.is_null() {
        (*p).blk_size = size;
    }
}
pub unsafe fn csv_get_buffer_size(p: *const csv_parser) -> size_t {
    if !p.is_null() {
        return (*p).entry_size;
    }
    0
}
pub unsafe fn csv_increase_buffer(p: *mut csv_parser) -> libc::c_int {
    if p.is_null() {
        return 0;
    }
    let realloc_func = match (*p).realloc_func {
        Some(f) => f,
        None => return 0,
    };
    let mut to_add: usize = (*p).blk_size;
    let mut vp: *mut libc::c_void;
    if (*p).entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - (*p).entry_size;
    }
    if to_add == 0 {
        (*p).status = 3;
        return -1;
    }
    loop {
        vp = realloc_func(
            (*p).entry_buf as *mut libc::c_void,
            (*p).entry_size.wrapping_add(to_add) as _,
        );
        if !vp.is_null() {
            break;
        }
        to_add /= 2;
        if to_add == 0 {
            (*p).status = 2;
            return -1;
        }
    }
    (*p).entry_buf = vp as *mut libc::c_uchar;
    (*p).entry_size = ((*p).entry_size + to_add) as _;
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
    let us = s as *const u8;
    let mut c: u8;
    let mut pos: libc::size_t = 0;
    let delim: u8 = (*p).delim_char;
    let quote: u8 = (*p).quote_char;
    let is_space = (*p).is_space;
    let is_term = (*p).is_term;
    let mut quoted: libc::c_int = (*p).quoted;
    let mut pstate: libc::c_int = (*p).pstate;
    let mut spaces: libc::size_t = (*p).spaces;
    let mut entry_pos: libc::size_t = (*p).entry_pos;
    macro_rules! save {
        () => {
            (*p).quoted = quoted;
            (*p).pstate = pstate;
            (*p).spaces = spaces;
            (*p).entry_pos = entry_pos;
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
            *(*p).entry_buf.add(entry_pos) = $c;
            entry_pos += 1;
        };
    }
    macro_rules! submit_field {
        () => {
            if quoted == 0 {
                entry_pos = entry_pos.wrapping_sub(spaces);
            }
            if (*p).options & 8 != 0 {
                *(*p).entry_buf.add(entry_pos) = 0;
            }
            if let Some(f) = cb1 {
                if ((*p).options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                    f(std::ptr::null_mut(), entry_pos, data);
                } else {
                    f((*p).entry_buf as *mut libc::c_void, entry_pos, data);
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
            if let Some(f) = cb2 {
                f($c as libc::c_int, data);
            }
            pstate = 0;
            quoted = 0;
            spaces = 0;
            entry_pos = 0;
        };
    }
    if (*p).entry_buf.is_null() && pos < len && csv_increase_buffer(p) != 0 {
        save!();
        return pos;
    }
    while pos < len {
        let limit = if (*p).options & 8 != 0 {
            (*p).entry_size.wrapping_sub(1)
        } else {
            (*p).entry_size
        };
        if entry_pos == limit && csv_increase_buffer(p) != 0 {
            save!();
            return pos;
        }
        c = *us.add(pos);
        pos += 1;
        match pstate {
            0 | 1 => {
                if isspace!(c) && c != delim {
                    continue;
                } else if isterm!(c) {
                    if pstate == 1 {
                        submit_field!();
                        submit_row!(c);
                    } else if (*p).options & 2 != 0 {
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
                        if (*p).options & 1 != 0 {
                            (*p).status = 1;
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
                        if (*p).options & 1 != 0 {
                            (*p).status = 1;
                            save!();
                            return pos - 1;
                        }
                        spaces = 0;
                        submit_char!(c);
                    } else {
                        pstate = 2;
                    }
                } else {
                    if (*p).options & 1 != 0 {
                        (*p).status = 1;
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
pub unsafe fn csv_write(
    dest: *mut libc::c_void,
    dest_size: libc::size_t,
    src: *const libc::c_void,
    src_size: libc::size_t,
) -> libc::size_t {
    csv_write2(dest, dest_size, src, src_size, 0x22 as libc::c_uchar)
}
pub unsafe fn csv_fwrite(
    fp: *mut libc::FILE,
    src: *const libc::c_void,
    src_size: libc::size_t,
) -> libc::c_int {
    csv_fwrite2(fp, src, src_size, 0x22u8)
}
pub unsafe fn csv_write2(
    dest: *mut libc::c_void,
    dest_size: libc::size_t,
    src: *const libc::c_void,
    src_size: libc::size_t,
    quote: libc::c_uchar,
) -> libc::size_t {
    let mut cdest: *mut u8 = dest as *mut u8;
    let mut csrc: *const u8 = src as *const u8;
    let mut chars: usize = 0;
    let mut dest_size: usize = dest_size;
    let mut src_size: usize = src_size;
    if src.is_null() {
        return 0;
    }
    if dest.is_null() {
        dest_size = 0;
    }
    if dest_size > 0 {
        *cdest = quote;
        cdest = cdest.add(1);
    }
    chars += 1;
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
    chars as libc::size_t
}
pub unsafe fn csv_fwrite2(
    fp: *mut libc::FILE,
    src: *const libc::c_void,
    src_size: libc::size_t,
    quote: u8,
) -> libc::c_int {
    let mut csrc = src as *const u8;
    let mut src_size = src_size;
    if fp.is_null() || src.is_null() {
        return 0;
    }
    if libc::fputc(quote as libc::c_int, fp) == -1 {
        return -1;
    }
    while src_size != 0 {
        if *csrc == quote && libc::fputc(quote as libc::c_int, fp) == -1 {
            return -1;
        }
        if libc::fputc(*csrc as libc::c_int, fp) == -1 {
            return -1;
        }
        src_size -= 1;
        csrc = csrc.add(1);
    }
    0
}
pub unsafe fn diff_timespec(time1: *mut libc::timespec, time0: *mut libc::timespec) -> f64 {
    let sec = (*time1).tv_sec.wrapping_sub((*time0).tv_sec);
    let nsec = (*time1).tv_nsec.wrapping_sub((*time0).tv_nsec);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
pub fn main() {
    unsafe {
        let args: Vec<String> = std::env::args().collect();
        let argc = args.len();
        if argc < 2 {
            libc::fprintf(
                stderr,
                b"Usage: csvvalid files\n\0".as_ptr() as *const libc::c_char,
            );
            std::process::exit(1);
        }
        let mut p: csv_parser = std::mem::zeroed();
        if csv_init(&mut p, 1) != 0 {
            libc::fprintf(
                stderr,
                b"Failed to initialize csv parser\n\0".as_ptr() as *const libc::c_char,
            );
            std::process::exit(1);
        }
        let mut buf = [0u8; 1024];
        for i in 1..argc {
            let mut pos: libc::size_t = 0;
            let cname = match std::ffi::CString::new(args[i].as_bytes()) {
                Ok(c) => c,
                Err(_) => {
                    continue;
                }
            };
            let fp = libc::fopen(cname.as_ptr(), b"rb\0".as_ptr() as *const libc::c_char);
            if fp.is_null() {
                libc::fprintf(
                    stderr,
                    b"Failed to open %s: %s, skipping\n\0".as_ptr() as *const libc::c_char,
                    cname.as_ptr(),
                    libc::strerror(*libc::__errno_location()),
                );
                continue;
            }
            let mut start_time: libc::timespec = std::mem::zeroed();
            let mut end_time: libc::timespec = std::mem::zeroed();
            let time_elapsed: f64;
            libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
            'main: {
                loop {
                    let bytes_read =
                        libc::fread(buf.as_mut_ptr() as *mut libc::c_void, 1, 1024, fp);
                    if bytes_read == 0 {
                        break;
                    }
                    let retval = csv_parse(
                        &mut p,
                        buf.as_ptr() as *const libc::c_void,
                        bytes_read,
                        None,
                        None,
                        std::ptr::null_mut(),
                    );
                    if retval != bytes_read {
                        if csv_error(&p) == 1 {
                            libc::printf(
                                b"%s: malformed at byte %lu\n\0".as_ptr() as *const libc::c_char,
                                cname.as_ptr(),
                                (pos as libc::c_ulong)
                                    .wrapping_add(retval as libc::c_ulong)
                                    .wrapping_add(1),
                            );
                            break 'main;
                        } else {
                            libc::printf(
                                b"Error while processing %s: %s\n\0".as_ptr()
                                    as *const libc::c_char,
                                cname.as_ptr(),
                                csv_strerror(csv_error(&p)),
                            );
                            break 'main;
                        }
                    }
                    pos += bytes_read;
                }
                libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
                time_elapsed = diff_timespec(&mut end_time, &mut start_time);
                libc::printf(
                    b"Time taken to parse csv %s: %f seconds\n\0".as_ptr() as *const libc::c_char,
                    cname.as_ptr(),
                    time_elapsed,
                );
                libc::printf(
                    b"%s well-formed\n\0".as_ptr() as *const libc::c_char,
                    cname.as_ptr(),
                );
            }
            let _ = pos;
            libc::fclose(fp);
            csv_fini(&mut p, None, None, std::ptr::null_mut());
        }
        csv_free(&mut p);
    }
}
