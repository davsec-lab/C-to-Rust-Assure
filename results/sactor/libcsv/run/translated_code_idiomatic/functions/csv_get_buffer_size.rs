pub fn csv_get_buffer_size(p: Option<&csv_parser>) -> usize {
    match p {
        Some(parser) => parser.entry_buf.len(),
        None => 0,
    }
}
