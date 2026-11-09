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
    }
    chars
}
