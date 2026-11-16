pub unsafe fn parse_hex4(input: *const u8) -> u32 {
    let mut h: u32 = 0;
    let mut i: usize = 0;
    while i < 4 {
        let c = *input.add(i);
        if c >= b'0' && c <= b'9' {
            h = h.wrapping_add((c as u32).wrapping_sub('0' as u32));
        } else if c >= b'A' && c <= b'F' {
            h = h.wrapping_add((10u32).wrapping_add(c as u32).wrapping_sub('A' as u32));
        } else if c >= b'a' && c <= b'f' {
            h = h.wrapping_add((10u32).wrapping_add(c as u32).wrapping_sub('a' as u32));
        } else {
            return 0;
        }
        if i < 3 {
            h = h << 4;
        }
        i += 1;
    }
    h
}
