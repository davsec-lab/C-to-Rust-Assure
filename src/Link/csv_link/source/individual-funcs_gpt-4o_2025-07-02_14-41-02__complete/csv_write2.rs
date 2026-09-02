#![allow(unaligned_references)]
#[no_mangle]
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
