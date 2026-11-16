pub fn csv_set_quote(p: Option<&mut csv_parser>, c: u8) {
    if let Some(parser) = p {
        parser.quote_char = c;
    }
}
