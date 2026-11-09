pub fn csv_set_quote(p: Option<&mut CsvParser<'_>>, c: u8) {
    if let Some(p) = p {
        p.quote_char = c;
    }
}
