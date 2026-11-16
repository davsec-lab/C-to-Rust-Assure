pub unsafe fn parse_number(item: *mut cJSON, input_buffer: *mut parse_buffer) -> libc::c_int {
    let number: f64;
    let mut after_end: *mut libc::c_char = std::ptr::null_mut();
    let decimal_point: u8 = get_decimal_point();
    let mut i: usize;
    let mut number_string_length: usize = 0;
    let mut has_decimal_point: libc::c_int = 0;
    if input_buffer.is_null() || (*input_buffer).content.is_null() {
        return 0;
    }
    i = 0;
    while !input_buffer.is_null() && ((*input_buffer).offset + i) < (*input_buffer).length {
        let c = *(*input_buffer).content.add((*input_buffer).offset).add(i);
        match c {
            b'0'..=b'9' | b'+' | b'-' | b'e' | b'E' => {
                number_string_length += 1;
            }
            b'.' => {
                number_string_length += 1;
                has_decimal_point = 1;
            }
            _ => break,
        }
        i += 1;
    }
    let number_c_string =
        ((*input_buffer).hooks.allocate.unwrap())(number_string_length + 1) as *mut u8;
    if number_c_string.is_null() {
        return 0;
    }
    std::ptr::copy_nonoverlapping(
        (*input_buffer).content.add((*input_buffer).offset),
        number_c_string,
        number_string_length,
    );
    *number_c_string.add(number_string_length) = 0;
    if has_decimal_point != 0 {
        i = 0;
        while i < number_string_length {
            if *number_c_string.add(i) == b'.' {
                *number_c_string.add(i) = decimal_point;
            }
            i += 1;
        }
    }
    number = libc::strtod(number_c_string as *const libc::c_char, &mut after_end);
    if number_c_string as *mut libc::c_char == after_end {
        ((*input_buffer).hooks.deallocate.unwrap())(number_c_string as *mut libc::c_void);
        return 0;
    }
    (*item).valuedouble = number;
    if number >= libc::INT_MAX as f64 {
        (*item).valueint = libc::INT_MAX;
    } else if number <= libc::INT_MIN as f64 {
        (*item).valueint = libc::INT_MIN;
    } else {
        (*item).valueint = number as libc::c_int;
    }
    (*item).type_0 = 1 << 3;
    (*input_buffer).offset += (after_end as usize) - (number_c_string as usize);
    ((*input_buffer).hooks.deallocate.unwrap())(number_c_string as *mut libc::c_void);
    1
}
