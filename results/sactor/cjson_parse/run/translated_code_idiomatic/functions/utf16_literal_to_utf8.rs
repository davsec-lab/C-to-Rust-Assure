pub fn utf16_literal_to_utf8(input: &[u8], output: &mut &mut [u8]) -> u8 {
    let mut first_byte_mark: u8 = 0;
    if input.len() < 6 {
        return 0;
    }
    let first_code = parse_hex4(&input[2..6]);
    if (0xDC00..=0xDFFF).contains(&first_code) {
        return 0;
    }
    let sequence_length: u8;
    let mut codepoint: u64;
    if (0xD800..=0xDBFF).contains(&first_code) {
        let second = &input[6..];
        sequence_length = 12;
        if second.len() < 6 {
            return 0;
        }
        if second[0] != b'\\' || second[1] != b'u' {
            return 0;
        }
        let second_code = parse_hex4(&second[2..6]);
        if !(0xDC00..=0xDFFF).contains(&second_code) {
            return 0;
        }
        codepoint = 0x10000u64 + ((((first_code & 0x3FF) << 10) | (second_code & 0x3FF)) as u64);
    } else {
        sequence_length = 6;
        codepoint = first_code as u64;
    }
    let utf8_length: u8;
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
    if output.len() < utf8_length as usize {
        return 0;
    }
    let buf = std::mem::take(output);
    let (head, tail) = buf.split_at_mut(utf8_length as usize);
    let mut utf8_position = utf8_length as usize - 1;
    while utf8_position > 0 {
        head[utf8_position] = ((codepoint | 0x80) & 0xBF) as u8;
        codepoint >>= 6;
        utf8_position -= 1;
    }
    if utf8_length > 1 {
        head[0] = ((codepoint | first_byte_mark as u64) & 0xFF) as u8;
    } else {
        head[0] = (codepoint & 0x7F) as u8;
    }
    *output = tail;
    sequence_length
}
