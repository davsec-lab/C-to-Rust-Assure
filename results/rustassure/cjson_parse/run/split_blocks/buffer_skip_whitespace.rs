fn buffer_skip_whitespace<'a, 'b>(buffer: Option<&'b mut parse_buffer<'a>>) -> Option<&'b mut parse_buffer<'a>> {
    let buffer = match buffer {
        None => return None,
        Some(b) => b,
    };
    if buffer.content.is_empty() {
        return None;
    }
    if !(buffer.offset < buffer.length) {
        return Some(buffer);
    }
    while buffer.offset < buffer.length
        && buffer
            .content
            .get(buffer.offset as usize)
            .map_or(false, |&c| c <= 32)
    {
        buffer.offset += 1;
    }
    if buffer.offset == buffer.length {
        buffer.offset = buffer.offset.wrapping_sub(1);
    }
    Some(buffer)
}