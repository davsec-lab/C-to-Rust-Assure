pub fn cJSON_ParseWithLengthOpts(
    value: Option<&'static [u8]>,
    buffer_length: size_t,
    return_parse_end: Option<&mut &'static [u8]>,
    require_null_terminated: cJSON_bool,
) -> CJsonLink {
    let mut buffer = parse_buffer {
        content: &[],
        length: 0,
        offset: 0,
        depth: 0,
        hooks: internal_hooks {
            allocate: global_hooks_malloc,
            deallocate: global_hooks_free,
            reallocate: global_hooks_realloc_null,
        },
    };
    let mut item: CJsonLink = None;
    let mut return_parse_end = return_parse_end;

    {
        let mut ge = GLOBAL_ERROR.lock().unwrap();
        ge.json = None;
        ge.position = 0;
    }

    // Labeled blocks are unstable; use a labeled loop that always exits via
    // `break 'fail` or `return`.
    'fail: loop {
        let v: &'static [u8] = match value {
            Some(v) if buffer_length != 0 => v,
            _ => break 'fail,
        };

        buffer.content = v;
        buffer.length = buffer_length;
        buffer.offset = 0;
        buffer.hooks = unsafe {
            internal_hooks {
                allocate: global_hooks.allocate,
                deallocate: global_hooks.deallocate,
                reallocate: global_hooks.reallocate,
            }
        };

        item = cJSON_New_Item(&buffer.hooks);
        let item_rc = match item.as_ref() {
            Some(rc) => rc.clone(),
            None => break 'fail,
        };

        let parsed = {
            let buf_opt = buffer_skip_whitespace(skip_utf8_bom(Some(&mut buffer)));
            match buf_opt {
                Some(b) => {
                    let mut item_ref = item_rc.borrow_mut();
                    parse_value(&mut item_ref, b) != 0
                }
                None => false,
            }
        };
        if !parsed {
            break 'fail;
        }

        if require_null_terminated != 0 {
            buffer_skip_whitespace(Some(&mut buffer));
            if buffer.offset >= buffer.length
                || buffer.content.get(buffer.offset as usize).copied() != Some(0)
            {
                break 'fail;
            }
        }

        if let Some(r) = return_parse_end.as_mut() {
            **r = buffer.content.get(buffer.offset as usize..).unwrap_or(&[]);
        }
        return item;
    }

    // fail:
    if item.is_some() {
        cJSON_Delete(item.take());
    }

    if let Some(v) = value {
        let mut local_error: error<'static> = error {
            json: Some(v),
            position: 0,
        };
        if buffer.offset < buffer.length {
            local_error.position = buffer.offset as usize;
        } else if buffer.length > 0 {
            local_error.position = (buffer.length - 1) as usize;
        }

        if let Some(r) = return_parse_end.as_mut() {
            **r = v.get(local_error.position..).unwrap_or(&[]);
        }

        *GLOBAL_ERROR.lock().unwrap() = local_error;
    }

    None
}