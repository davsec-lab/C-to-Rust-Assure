fn parse_object(item: &mut cJSON, input_buffer: &mut parse_buffer) -> i32 {
    if input_buffer.depth >= 1000 {
        return 0;
    }
    input_buffer.depth = input_buffer.depth.wrapping_add(1);
    let content = input_buffer.content;
    let mut items: Vec<Box<cJSON>> = Vec::new();
    let ok: bool = 'blk: {
        if content.get(input_buffer.offset).copied() != Some(b'{') {
            break 'blk false;
        }
        input_buffer.offset = input_buffer.offset.wrapping_add(1);
        let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
        if content.get(input_buffer.offset).copied() == Some(b'}') {
            break 'blk true;
        }
        if content.get(input_buffer.offset).is_none() {
            input_buffer.offset = input_buffer.offset.wrapping_sub(1);
            break 'blk false;
        }
        input_buffer.offset = input_buffer.offset.wrapping_sub(1);
        loop {
            let mut new_item = match cJSON_New_Item() {
                Some(n) => n,
                None => break 'blk false,
            };
            if input_buffer.offset.wrapping_add(1) >= content.len() {
                break 'blk false;
            }
            input_buffer.offset = input_buffer.offset.wrapping_add(1);
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            if parse_string(&mut new_item, input_buffer) == 0 {
                break 'blk false;
            }
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            new_item.string = new_item.valuestring.take();
            if content.get(input_buffer.offset).copied() != Some(b':') {
                break 'blk false;
            }
            input_buffer.offset = input_buffer.offset.wrapping_add(1);
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            if parse_value(&mut new_item, input_buffer) == 0 {
                break 'blk false;
            }
            items.push(new_item);
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            if content.get(input_buffer.offset).copied() != Some(b',') {
                break;
            }
        }
        if content.get(input_buffer.offset).copied() != Some(b'}') {
            break 'blk false;
        }
        true
    };
    if ok {
        input_buffer.depth = input_buffer.depth.wrapping_sub(1);
        let mut head: Option<Box<cJSON>> = None;
        for mut it in items.into_iter().rev() {
            it.next = head;
            head = Some(it);
        }
        item.type_0 = 1 << 6;
        item.child = head;
        input_buffer.offset = input_buffer.offset.wrapping_add(1);
        1
    } else {
        drop(items);
        0
    }
}
