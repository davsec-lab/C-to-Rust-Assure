pub fn parse_number(item: &mut cJSON, input_buffer: &mut parse_buffer) -> i32 {
    let start = input_buffer.offset;
    let rest: &[u8] = input_buffer.content.get(start..).unwrap_or(&[]);
    let number_string_length = rest
        .iter()
        .take_while(|&&c| matches!(c, b'0'..=b'9' | b'+' | b'-' | b'e' | b'E' | b'.'))
        .count();
    let s = &rest[..number_string_length];
    let mut idx = 0usize;
    if idx < s.len() && (s[idx] == b'+' || s[idx] == b'-') {
        idx += 1;
    }
    let mut mantissa_digits = 0usize;
    while idx < s.len() && s[idx].is_ascii_digit() {
        idx += 1;
        mantissa_digits += 1;
    }
    if idx < s.len() && s[idx] == b'.' {
        let mut j = idx + 1;
        let mut frac_digits = 0usize;
        while j < s.len() && s[j].is_ascii_digit() {
            j += 1;
            frac_digits += 1;
        }
        if mantissa_digits > 0 || frac_digits > 0 {
            idx = j;
            mantissa_digits += frac_digits;
        }
    }
    if mantissa_digits == 0 {
        return 0;
    }
    if idx < s.len() && (s[idx] == b'e' || s[idx] == b'E') {
        let mut j = idx + 1;
        if j < s.len() && (s[j] == b'+' || s[j] == b'-') {
            j += 1;
        }
        let exp_start = j;
        while j < s.len() && s[j].is_ascii_digit() {
            j += 1;
        }
        if j > exp_start {
            idx = j;
        }
    }
    let number: f64 = match std::str::from_utf8(&s[..idx])
        .ok()
        .and_then(|t| t.parse::<f64>().ok())
    {
        Some(n) => n,
        None => return 0,
    };
    item.valuedouble = number;
    if number >= i32::MAX as f64 {
        item.valueint = i32::MAX;
    } else if number <= i32::MIN as f64 {
        item.valueint = i32::MIN;
    } else {
        item.valueint = number as i32;
    }
    item.type_0 = 1 << 3;
    input_buffer.offset += idx;
    1
}
