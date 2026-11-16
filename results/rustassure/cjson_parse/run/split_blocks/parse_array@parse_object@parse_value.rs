fn parse_array(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    fn peek(b: &parse_buffer) -> Option<u8> {
        if b.offset < b.length {
            b.content.get(b.offset as usize).copied()
        } else {
            None
        }
    }

    let mut head: CJsonLink = None;
    let mut current_item: CJsonLink = None;

    if input_buffer.depth >= 1000 {
        return 0;
    }
    input_buffer.depth += 1;

    let ok: bool = 'parse: loop {
        if input_buffer.content.get(input_buffer.offset as usize) != Some(&b'[') {
            break 'parse false;
        }
        input_buffer.offset += 1;
        buffer_skip_whitespace(Some(&mut *input_buffer));

        if peek(input_buffer) == Some(b']') {
            break 'parse true;
        }
        if peek(input_buffer).is_none() {
            input_buffer.offset -= 1;
            break 'parse false;
        }
        input_buffer.offset -= 1;

        loop {
            let new_item = match cJSON_New_Item(&input_buffer.hooks) {
                Some(n) => n,
                None => break 'parse false,
            };

            if head.is_none() {
                head = Some(new_item.clone());
                current_item = Some(new_item.clone());
            } else {
                let cur = current_item.take().unwrap();
                cur.borrow_mut().next = Some(new_item.clone());
                new_item.borrow_mut().prev = Some(Rc::downgrade(&cur));
                current_item = Some(new_item.clone());
            }

            input_buffer.offset += 1;
            buffer_skip_whitespace(Some(&mut *input_buffer));
            let r = parse_value(&mut new_item.borrow_mut(), input_buffer);
            if r == 0 {
                break 'parse false;
            }
            buffer_skip_whitespace(Some(&mut *input_buffer));

            if peek(input_buffer) != Some(b',') {
                break;
            }
        }

        if peek(input_buffer) != Some(b']') {
            break 'parse false;
        }
        break 'parse true;
    };

    if !ok {
        current_item = None;
        let _ = current_item;
        if head.is_some() {
            cJSON_Delete(head.take());
        }
        return 0;
    }

    input_buffer.depth -= 1;
    if let Some(h) = head.as_ref() {
        h.borrow_mut().prev = current_item.as_ref().map(Rc::downgrade);
    }
    item.r#type = 1 << 5;
    item.child = head;
    input_buffer.offset += 1;
    1
}

fn parse_object(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    fn peek(b: &parse_buffer) -> Option<u8> {
        if b.offset < b.length {
            b.content.get(b.offset as usize).copied()
        } else {
            None
        }
    }

    let mut head: CJsonLink = None;
    let mut current_item: CJsonLink = None;

    if input_buffer.depth >= 1000 {
        return 0;
    }
    input_buffer.depth += 1;

    let ok: bool = 'parse: loop {
        if peek(input_buffer) != Some(b'{') {
            break 'parse false;
        }
        input_buffer.offset += 1;
        buffer_skip_whitespace(Some(&mut *input_buffer));

        if peek(input_buffer) == Some(b'}') {
            break 'parse true;
        }
        if peek(input_buffer).is_none() {
            input_buffer.offset -= 1;
            break 'parse false;
        }
        input_buffer.offset -= 1;

        loop {
            let new_item = match cJSON_New_Item(&input_buffer.hooks) {
                Some(n) => n,
                None => break 'parse false,
            };

            if head.is_none() {
                head = Some(new_item.clone());
                current_item = Some(new_item.clone());
            } else {
                let cur = current_item.take().unwrap();
                cur.borrow_mut().next = Some(new_item.clone());
                new_item.borrow_mut().prev = Some(Rc::downgrade(&cur));
                current_item = Some(new_item.clone());
            }

            if !(input_buffer.offset + 1 < input_buffer.length) {
                break 'parse false;
            }
            input_buffer.offset += 1;
            buffer_skip_whitespace(Some(&mut *input_buffer));

            let r = parse_string(&mut new_item.borrow_mut(), input_buffer);
            if r == 0 {
                break 'parse false;
            }
            buffer_skip_whitespace(Some(&mut *input_buffer));

            {
                let mut ci = new_item.borrow_mut();
                ci.string = ci.valuestring.take();
            }

            if peek(input_buffer) != Some(b':') {
                break 'parse false;
            }
            input_buffer.offset += 1;
            buffer_skip_whitespace(Some(&mut *input_buffer));

            let r = parse_value(&mut new_item.borrow_mut(), input_buffer);
            if r == 0 {
                break 'parse false;
            }
            buffer_skip_whitespace(Some(&mut *input_buffer));

            if peek(input_buffer) != Some(b',') {
                break;
            }
        }

        if peek(input_buffer) != Some(b'}') {
            break 'parse false;
        }
        break 'parse true;
    };

    if !ok {
        current_item = None;
        let _ = current_item;
        if head.is_some() {
            cJSON_Delete(head.take());
        }
        return 0;
    }

    input_buffer.depth -= 1;
    if let Some(h) = head.as_ref() {
        h.borrow_mut().prev = current_item.as_ref().map(Rc::downgrade);
    }
    item.r#type = 1 << 6;
    item.child = head;
    input_buffer.offset += 1;
    1
}

fn parse_value(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    if input_buffer.content.is_empty() {
        return 0;
    }

    let off = input_buffer.offset as usize;

    if input_buffer.offset + 4 <= input_buffer.length
        && input_buffer.content.get(off..off + 4) == Some(&b"null"[..])
    {
        item.r#type = 1 << 2;
        input_buffer.offset += 4;
        return 1;
    }
    if input_buffer.offset + 5 <= input_buffer.length
        && input_buffer.content.get(off..off + 5) == Some(&b"false"[..])
    {
        item.r#type = 1 << 0;
        input_buffer.offset += 5;
        return 1;
    }
    if input_buffer.offset + 4 <= input_buffer.length
        && input_buffer.content.get(off..off + 4) == Some(&b"true"[..])
    {
        item.r#type = 1 << 1;
        item.valueint = 1;
        input_buffer.offset += 4;
        return 1;
    }

    let c: Option<u8> = if input_buffer.offset < input_buffer.length {
        input_buffer.content.get(off).copied()
    } else {
        None
    };

    match c {
        Some(b'"') => parse_string(item, input_buffer),
        Some(ch) if ch == b'-' || ch.is_ascii_digit() => parse_number(item, input_buffer),
        Some(b'[') => parse_array(item, input_buffer),
        Some(b'{') => parse_object(item, input_buffer),
        _ => 0,
    }
}