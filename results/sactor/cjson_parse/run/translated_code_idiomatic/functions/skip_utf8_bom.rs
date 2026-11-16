pub fn skip_utf8_bom<'a, 'b>(
    buffer: Option<&'b mut parse_buffer<'a>>,
) -> Option<&'b mut parse_buffer<'a>> {
    let buffer = buffer?;
    if buffer.offset != 0 {
        return None;
    }
    if buffer.offset + 4 < buffer.content.len()
        && buffer.content[buffer.offset..].starts_with(&[0xEF, 0xBB, 0xBF])
    {
        buffer.offset += 3;
    }
    Some(buffer)
}
