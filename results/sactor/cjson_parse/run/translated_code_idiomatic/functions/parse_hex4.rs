pub fn parse_hex4(input: &[u8]) -> u32 {
    let digits = match input.get(..4) {
        Some(d) => d,
        None => return 0,
    };
    let mut h: u32 = 0;
    for &c in digits {
        match (c as char).to_digit(16) {
            Some(d) => h = (h << 4) | d,
            None => return 0,
        }
    }
    h
}
