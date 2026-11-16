pub fn csv_get_opts(p: Option<&csv_parser>) -> i32 {
    match p {
        None => -1,
        Some(parser) => parser.options as i32,
    }
}
