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
    let mut dest_size: usize = dest_size as usize;
    let mut src_size: usize = src_size as usize;
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
    if dest_size > chars {
        *cdest = quote;
    }
    if chars < usize::MAX {
        chars += 1;
    }
    chars as libc::size_t
}
