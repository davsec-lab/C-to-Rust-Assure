pub unsafe fn cJSON_ParseWithLengthOpts(
    value: *const libc::c_char,
    buffer_length: libc::size_t,
    return_parse_end: *mut *const libc::c_char,
    require_null_terminated: libc::c_int,
) -> *mut cJSON {
    let mut buffer: parse_buffer = parse_buffer {
        content: std::ptr::null(),
        length: 0,
        offset: 0,
        depth: 0,
        hooks: internal_hooks {
            allocate: None,
            deallocate: None,
            reallocate: None,
        },
    };
    let mut item: *mut cJSON = std::ptr::null_mut();
    global_error.json = std::ptr::null();
    global_error.position = 0;
    'fail: {
        if value.is_null() || buffer_length == 0 {
            break 'fail;
        }
        buffer.content = value as *const libc::c_uchar;
        buffer.length = buffer_length;
        buffer.offset = 0;
        buffer.hooks = global_hooks;
        item = cJSON_New_Item(&global_hooks as *const internal_hooks);
        if item.is_null() {
            break 'fail;
        }
        let bp: *mut parse_buffer = &mut buffer;
        if parse_value(item, buffer_skip_whitespace(skip_utf8_bom(bp))) == 0 {
            break 'fail;
        }
        if require_null_terminated != 0 {
            buffer_skip_whitespace(&mut buffer as *mut parse_buffer);
            if buffer.offset >= buffer.length || *buffer.content.add(buffer.offset) != 0 {
                break 'fail;
            }
        }
        if !return_parse_end.is_null() {
            *return_parse_end = buffer.content.add(buffer.offset) as *const libc::c_char;
        }
        return item;
    }
    if !item.is_null() {
        cJSON_Delete(item);
    }
    if !value.is_null() {
        let mut local_error: error = error {
            json: value as *const libc::c_uchar,
            position: 0,
        };
        if buffer.offset < buffer.length {
            local_error.position = buffer.offset;
        } else if buffer.length > 0 {
            local_error.position = buffer.length - 1;
        }
        if !return_parse_end.is_null() {
            *return_parse_end =
                (local_error.json as *const libc::c_char).add(local_error.position as usize);
        }
        global_error = local_error;
    }
    std::ptr::null_mut()
}
