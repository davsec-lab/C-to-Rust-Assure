pub fn csv_set_delim(p: Option<&mut CsvParser<'_>>, c: u8) {
    if let Some(parser) = p {
        parser.delim_char = c;
    }
}
