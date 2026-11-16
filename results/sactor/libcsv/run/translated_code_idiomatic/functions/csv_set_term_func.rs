pub fn csv_set_term_func(p: Option<&mut csv_parser>, f: Option<fn(u8) -> i32>) {
    if let Some(parser) = p {
        parser.is_term = f;
    }
}
