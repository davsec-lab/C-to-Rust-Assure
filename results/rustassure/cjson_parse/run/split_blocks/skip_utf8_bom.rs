fn skip_utf8_bom<'a, 'b>(buffer: Option<&'b mut parse_buffer<'a>>) -> Option<&'b mut parse_buffer<'a>> {
    let buffer = buffer?;
    if buffer.offset != 0 {
        return None;
    }
    if (buffer.offset + 4) < buffer.length {
        let off = buffer.offset as usize;
        if buffer.content.len() >= off + 3
            && &buffer.content[off..off + 3] == &[0xEFu8, 0xBB, 0xBF][..]
        {
            buffer.offset += 3;
        }
    }
    Some(buffer)
}