fn parse_value(item: &mut cJSON, input_buffer: &mut parse_buffer) -> i32 {
    let content = input_buffer.content;
    let rest = content.get(input_buffer.offset..).unwrap_or(&[]);
    if rest.starts_with(b"null") {
        item.type_0 = 1 << 2;
        input_buffer.offset += 4;
        return 1;
    }
    if rest.starts_with(b"false") {
        item.type_0 = 1 << 0;
        input_buffer.offset += 5;
        return 1;
    }
    if rest.starts_with(b"true") {
        item.type_0 = 1 << 1;
        item.valueint = 1;
        input_buffer.offset += 4;
        return 1;
    }
    match rest.first().copied() {
        Some(b'"') => parse_string(item, input_buffer),
        Some(b'-') | Some(b'0'..=b'9') => parse_number(item, input_buffer),
        Some(b'[') => parse_array(item, input_buffer),
        Some(b'{') => parse_object(item, input_buffer),
        _ => 0,
    }
}
