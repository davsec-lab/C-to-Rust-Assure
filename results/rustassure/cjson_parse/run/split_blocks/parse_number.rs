fn parse_number(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    let decimal_point: u8 = get_decimal_point();
    let mut number_string_length: usize = 0;
    let mut has_decimal_point = false;

    let offset = input_buffer.offset as usize;
    let length = input_buffer.length as usize;

    let mut i: usize = 0;
    while offset + i < length && offset + i < input_buffer.content.len() {
        match input_buffer.content[offset + i] {
            b'0'..=b'9' | b'+' | b'-' | b'e' | b'E' => {
                number_string_length += 1;
            }
            b'.' => {
                number_string_length += 1;
                has_decimal_point = true;
            }
            _ => break,
        }
        i += 1;
    }

    let mut number_c_string: Vec<u8> =
        input_buffer.content[offset..offset + number_string_length].to_vec();

    if has_decimal_point {
        for c in number_c_string.iter_mut() {
            if *c == b'.' {
                *c = decimal_point;
            }
        }
    }

    // Emulate strtod: find the longest valid numeric prefix.
    let s = &number_c_string;
    let n = s.len();
    let mut p: usize = 0;
    if p < n && (s[p] == b'+' || s[p] == b'-') {
        p += 1;
    }
    let mut digits = 0usize;
    while p < n && s[p].is_ascii_digit() {
        p += 1;
        digits += 1;
    }
    if p < n && s[p] == decimal_point {
        p += 1;
        while p < n && s[p].is_ascii_digit() {
            p += 1;
            digits += 1;
        }
    }
    if digits == 0 {
        // no conversion performed
        return 0;
    }
    if p < n && (s[p] == b'e' || s[p] == b'E') {
        let mut q = p + 1;
        if q < n && (s[q] == b'+' || s[q] == b'-') {
            q += 1;
        }
        if q < n && s[q].is_ascii_digit() {
            while q < n && s[q].is_ascii_digit() {
                q += 1;
            }
            p = q;
        }
    }
    let after_end = p;

    let num_str: String = s[..after_end]
        .iter()
        .map(|&c| if c == decimal_point { '.' } else { c as char })
        .collect();
    let number: f64 = num_str.parse::<f64>().unwrap_or(0.0);

    item.valuedouble = number;

    if number >= 2147483647.0 {
        item.valueint = i32::MAX;
    } else if number <= (i32::MIN as f64) {
        item.valueint = i32::MIN;
    } else {
        item.valueint = number as i32;
    }

    item.r#type = 1 << 3;

    input_buffer.offset += after_end as size_t;

    1
}