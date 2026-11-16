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