pub fn csv_free(parser: Option<&mut CsvParser<'_>>) {
    if let Some(parser) = parser {
        parser.entry_buf = None;
        parser.entry_size = 0;
    }
}
