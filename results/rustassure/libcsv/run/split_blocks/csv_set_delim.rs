pub fn csv_set_delim(p: Option<&mut csv_parser>, c: u8) {
    if let Some(p) = p {
        p.delim_char = c;
    }
}