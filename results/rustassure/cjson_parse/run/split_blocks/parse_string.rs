pub fn parse_string(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    let content: &[u8] = input_buffer.content;
    let length = input_buffer.length as usize;
    let offset = input_buffer.offset as usize;

    let mut input_pointer: usize = offset + 1;
    let mut input_end: usize = offset + 1;

    // Labeled blocks are unstable, so use a labeled loop that always exits
    // via `return` on success or `break 'fail` on failure.
    'fail: loop {
        if content.get(offset) != Some(&b'"') {
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

        let allocation_length = (input_end - offset) - skipped_bytes;
        let mut output: Vec<u8> = vec![0u8; allocation_length + 1];
        let mut out_pos: usize = 0;

        while input_pointer < input_end {
            if content[input_pointer] != b'\\' {
                output[out_pos] = content[input_pointer];
                out_pos += 1;
                input_pointer += 1;
            } else {
                let mut sequence_length: usize = 2;
                if (input_end - input_pointer) < 1 {
                    break 'fail;
                }
                match content[input_pointer + 1] {
                    b'b' => {
                        output[out_pos] = 0x08;
                        out_pos += 1;
                    }
                    b'f' => {
                        output[out_pos] = 0x0C;
                        out_pos += 1;
                    }
                    b'n' => {
                        output[out_pos] = b'\n';
                        out_pos += 1;
                    }
                    b'r' => {
                        output[out_pos] = b'\r';
                        out_pos += 1;
                    }
                    b't' => {
                        output[out_pos] = b'\t';
                        out_pos += 1;
                    }
                    b'"' | b'\\' | b'/' => {
                        output[out_pos] = content[input_pointer + 1];
                        out_pos += 1;
                    }
                    b'u' => {
                        let consumed;
                        {
                            let mut out_slice: &mut [u8] = &mut output[out_pos..];
                            let before = out_slice.len();
                            sequence_length = utf16_literal_to_utf8(
                                &content[input_pointer..input_end],
                                &mut out_slice,
                            ) as usize;
                            let after = out_slice.len();
                            consumed = before - after;
                        }
                        if sequence_length == 0 {
                            break 'fail;
                        }
                        out_pos += consumed;
                    }
                    _ => {
                        break 'fail;
                    }
                }
                input_pointer += sequence_length;
            }
        }

        output[out_pos] = 0;
        output.truncate(out_pos + 1);
        item.r#type = 1 << 4;
        item.valuestring = Some(output);
        input_buffer.offset = (input_end as size_t) + 1;
        return 1;
    }

    // fail:
    input_buffer.offset = input_pointer as size_t;
    0
}