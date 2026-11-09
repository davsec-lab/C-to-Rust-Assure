pub fn csv_get_buffer_size(p: Option<&CsvParser<'_>>) -> usize {
    p.map_or(0, |parser| parser.entry_size)
}
