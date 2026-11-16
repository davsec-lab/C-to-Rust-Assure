pub fn buffer_skip_whitespace<'a, 'b>(
    buffer: Option<&'b mut parse_buffer<'a>>,
) -> Option<&'b mut parse_buffer<'a>> {
    let buf = buffer?;
    let length = buf.content.len();
    if buf.offset >= length {
        return Some(buf);
    }
    while buf.offset < length && buf.content[buf.offset] <= 32 {
        buf.offset += 1;
    }
    if buf.offset == length {
        buf.offset -= 1;
    }
    Some(buf)
}
