pub fn csv_set_space_func(p: Option<&mut csv_parser>, f: Option<fn(u8) -> i32>) {
    if let Some(parser) = p {
        parser.is_space = f;
    }
}
