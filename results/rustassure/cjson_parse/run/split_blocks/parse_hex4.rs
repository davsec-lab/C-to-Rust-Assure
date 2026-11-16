fn parse_hex4(input: &[u8]) -> u32 {
    let mut h: u32 = 0;
    for i in 0..4usize {
        let c = input[i];
        if c >= b'0' && c <= b'9' {
            h = h.wrapping_add((c - b'0') as u32);
        } else if c >= b'A' && c <= b'F' {
            h = h.wrapping_add(10 + (c - b'A') as u32);
        } else if c >= b'a' && c <= b'f' {
            h = h.wrapping_add(10 + (c - b'a') as u32);
        } else {
            return 0;
        }
        if i < 3 {
            h = h << 4;
        }
    }
    h
}