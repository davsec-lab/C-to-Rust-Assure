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
