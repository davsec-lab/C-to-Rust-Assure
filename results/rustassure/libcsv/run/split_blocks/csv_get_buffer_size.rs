pub fn csv_get_buffer_size(p: Option<&csv_parser>) -> size_t {
    match p {
        Some(parser) => parser.entry_size,
        None => 0,
    }
}