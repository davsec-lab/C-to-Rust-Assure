pub fn parse_string(item: &mut cJSON, input_buffer: &mut parse_buffer) -> i32 {
    fn put(out: &mut &mut [u8], b: u8) {
        let tmp = std::mem::take(out);
        tmp[0] = b;
        *out = &mut tmp[1..];
    }
    let content: &[u8] = input_buffer.content;
    let length = content.len();
    let start = input_buffer.offset;
    let mut input_pointer: usize = start + 1;
    let mut input_end: usize = start + 1;
    'fail: {
        if content.get(start).copied() != Some(b'"') {
            break 'fail;
        }
        let mut skipped_bytes: usize = 0;
        while input_end < length && content[input_end] != b'"' {
            if content[input_end] == b'\\' {
                if input_end + 1 >= length {
                    break 'fail;
                }
                skipped_bytes += 1;
                input_end += 1;
            }
            input_end += 1;
        }
        if input_end >= length || content[input_end] != b'"' {
            break 'fail;
        }
        let allocation_length: usize = (input_end - start).saturating_sub(skipped_bytes);
        let total = allocation_length + 1;
        let mut output: Vec<u8> = vec![0u8; total];
        let written;
        {
            let mut out: &mut [u8] = &mut output[..];
            while input_pointer < input_end {
                if content[input_pointer] != b'\\' {
                    put(&mut out, content[input_pointer]);
                    input_pointer += 1;
                } else {
                    let mut sequence_length: u8 = 2;
                    if input_end - input_pointer < 1 {
                        break 'fail;
                    }
                    match content[input_pointer + 1] {
                        b'b' => put(&mut out, 0x08),
                        b'f' => put(&mut out, 0x0C),
                        b'n' => put(&mut out, b'\n'),
                        b'r' => put(&mut out, b'\r'),
                        b't' => put(&mut out, b'\t'),
                        b'"' | b'\\' | b'/' => put(&mut out, content[input_pointer + 1]),
                        b'u' => {
                            sequence_length =
                                utf16_literal_to_utf8(&content[input_pointer..input_end], &mut out);
                            if sequence_length == 0 {
                                break 'fail;
                            }
                        }
                        _ => {
                            break 'fail;
                        }
                    }
                    input_pointer += sequence_length as usize;
                }
            }
            written = total - out.len();
        }
        output.truncate(written);
        item.type_0 = 1 << 4;
        item.valuestring = Some(match String::from_utf8(output) {
            Ok(s) => s,
            Err(e) => String::from_utf8_lossy(e.as_bytes()).into_owned(),
        });
        input_buffer.offset = input_end + 1;
        return 1;
    }
    input_buffer.offset = input_pointer;
    0
}
