pub fn utf16_literal_to_utf8(
    input_pointer: *const u8,
    input_end: *const u8,
    output_pointer: *mut *mut u8,
) -> u8 {
    unsafe {
        let mut codepoint: u64;
        let first_code: u32;
        let first_sequence = input_pointer;
        let utf8_length: u8;
        let mut utf8_position: u8;
        let sequence_length: u8;
        let mut first_byte_mark: u8 = 0;
        if (input_end as isize - first_sequence as isize) < 6 {
            return 0;
        }
        first_code = parse_hex4(first_sequence.offset(2));
        if first_code >= 0xDC00 && first_code <= 0xDFFF {
            return 0;
        }
        if first_code >= 0xD800 && first_code <= 0xDBFF {
            let second_sequence = first_sequence.offset(6);
            sequence_length = 12;
            if (input_end as isize - second_sequence as isize) < 6 {
                return 0;
            }
            if *second_sequence != b'\\' || *second_sequence.offset(1) != b'u' {
                return 0;
            }
            let second_code = parse_hex4(second_sequence.offset(2));
            if second_code < 0xDC00 || second_code > 0xDFFF {
                return 0;
            }
            codepoint =
                0x10000u64 + ((((first_code & 0x3FF) << 10) | (second_code & 0x3FF)) as u64);
        } else {
            sequence_length = 6;
            codepoint = first_code as u64;
        }
        if codepoint < 0x80 {
            utf8_length = 1;
        } else if codepoint < 0x800 {
            utf8_length = 2;
            first_byte_mark = 0xC0;
        } else if codepoint < 0x10000 {
            utf8_length = 3;
            first_byte_mark = 0xE0;
        } else if codepoint <= 0x10FFFF {
            utf8_length = 4;
            first_byte_mark = 0xF0;
        } else {
            return 0;
        }
        utf8_position = utf8_length - 1;
        while utf8_position > 0 {
            *(*output_pointer).offset(utf8_position as isize) = ((codepoint | 0x80) & 0xBF) as u8;
            codepoint >>= 6;
            utf8_position -= 1;
        }
        if utf8_length > 1 {
            *(*output_pointer) = ((codepoint | first_byte_mark as u64) & 0xFF) as u8;
        } else {
            *(*output_pointer) = (codepoint & 0x7F) as u8;
        }
        *output_pointer = (*output_pointer).offset(utf8_length as isize);
        sequence_length
    }
}
