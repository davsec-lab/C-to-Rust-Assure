pub unsafe fn parse_string(item: *mut cJSON, input_buffer: *mut parse_buffer) -> libc::c_int {
    let mut input_pointer: *const u8 = (*input_buffer).content.add((*input_buffer).offset).add(1);
    let mut input_end: *const u8 = (*input_buffer).content.add((*input_buffer).offset).add(1);
    let mut output_pointer: *mut u8 = std::ptr::null_mut();
    let mut output: *mut u8 = std::ptr::null_mut();
    'fail: {
        if *(*input_buffer).content.add((*input_buffer).offset) != b'"' {
            break 'fail;
        }
        {
            let mut skipped_bytes: usize = 0;
            while ((input_end.offset_from((*input_buffer).content)) as usize)
                < (*input_buffer).length
                && *input_end != b'"'
            {
                if *input_end == b'\\' {
                    if (input_end.add(1).offset_from((*input_buffer).content)) as usize
                        >= (*input_buffer).length
                    {
                        break 'fail;
                    }
                    skipped_bytes += 1;
                    input_end = input_end.add(1);
                }
                input_end = input_end.add(1);
            }
            if (input_end.offset_from((*input_buffer).content)) as usize >= (*input_buffer).length
                || *input_end != b'"'
            {
                break 'fail;
            }
            let start = (*input_buffer).content.add((*input_buffer).offset);
            let allocation_length: usize = (input_end.offset_from(start)) as usize - skipped_bytes;
            output = match (*input_buffer).hooks.allocate {
                Some(f) => f(allocation_length + 1) as *mut u8,
                None => std::ptr::null_mut(),
            };
            if output.is_null() {
                break 'fail;
            }
        }
        output_pointer = output;
        while input_pointer < input_end {
            if *input_pointer != b'\\' {
                *output_pointer = *input_pointer;
                output_pointer = output_pointer.add(1);
                input_pointer = input_pointer.add(1);
            } else {
                let mut sequence_length: u8 = 2;
                if (input_end.offset_from(input_pointer)) < 1 {
                    break 'fail;
                }
                match *input_pointer.add(1) {
                    b'b' => {
                        *output_pointer = 0x08;
                        output_pointer = output_pointer.add(1);
                    }
                    b'f' => {
                        *output_pointer = 0x0C;
                        output_pointer = output_pointer.add(1);
                    }
                    b'n' => {
                        *output_pointer = b'\n';
                        output_pointer = output_pointer.add(1);
                    }
                    b'r' => {
                        *output_pointer = b'\r';
                        output_pointer = output_pointer.add(1);
                    }
                    b't' => {
                        *output_pointer = b'\t';
                        output_pointer = output_pointer.add(1);
                    }
                    b'"' | b'\\' | b'/' => {
                        *output_pointer = *input_pointer.add(1);
                        output_pointer = output_pointer.add(1);
                    }
                    b'u' => {
                        sequence_length = utf16_literal_to_utf8(
                            input_pointer,
                            input_end,
                            &mut output_pointer as *mut *mut u8,
                        );
                        if sequence_length == 0 {
                            break 'fail;
                        }
                    }
                    _ => {
                        break 'fail;
                    }
                }
                input_pointer = input_pointer.add(sequence_length as usize);
            }
        }
        *output_pointer = 0;
        (*item).type_0 = 1 << 4;
        (*item).valuestring = output as *mut libc::c_char;
        (*input_buffer).offset = (input_end.offset_from((*input_buffer).content)) as usize;
        (*input_buffer).offset += 1;
        return 1;
    }
    if !output.is_null() {
        if let Some(d) = (*input_buffer).hooks.deallocate {
            d(output as *mut libc::c_void);
        }
    }
    if !input_pointer.is_null() {
        (*input_buffer).offset = (input_pointer.offset_from((*input_buffer).content)) as usize;
    }
    0
}
