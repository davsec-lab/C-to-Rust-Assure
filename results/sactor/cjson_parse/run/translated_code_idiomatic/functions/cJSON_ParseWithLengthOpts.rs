pub fn cJSON_ParseWithLengthOpts(
    value: Option<&[u8]>,
    return_parse_end: Option<&mut usize>,
    require_null_terminated: bool,
) -> Option<Box<cJSON>> {
    let mut buffer: parse_buffer = parse_buffer {
        content: &[],
        offset: 0,
        depth: 0,
        hooks: internal_hooks {
            allocate: None,
            deallocate: None,
            reallocate: None,
        },
    };
    let mut item: Option<Box<cJSON>> = None;
    {
        let mut ge = global_error.lock().unwrap();
        ge.json = Vec::new();
        ge.position = 0;
    }
    'fail: {
        let v = match value {
            Some(v) if !v.is_empty() => v,
            _ => break 'fail,
        };
        buffer.content = v;
        buffer.offset = 0;
        buffer.hooks = *global_hooks.lock().unwrap();
        item = cJSON_New_Item();
        let it = match item.as_mut() {
            Some(it) => it,
            None => break 'fail,
        };
        let bp = buffer_skip_whitespace(skip_utf8_bom(Some(&mut buffer)));
        match bp {
            Some(b) => {
                if parse_value(it, b) == 0 {
                    break 'fail;
                }
            }
            None => break 'fail,
        }
        if require_null_terminated {
            buffer_skip_whitespace(Some(&mut buffer));
            if buffer.offset >= buffer.content.len() || buffer.content[buffer.offset] != 0 {
                break 'fail;
            }
        }
        if let Some(r) = return_parse_end {
            *r = buffer.offset;
        }
        return item;
    }
    cJSON_Delete(item.take());
    if let Some(v) = value {
        let length = buffer.content.len();
        let mut position = 0usize;
        if buffer.offset < length {
            position = buffer.offset;
        } else if length > 0 {
            position = length - 1;
        }
        if let Some(r) = return_parse_end {
            *r = position;
        }
        let local_error = error {
            json: v.to_vec(),
            position,
        };
        *global_error.lock().unwrap() = local_error;
    }
    None
}
