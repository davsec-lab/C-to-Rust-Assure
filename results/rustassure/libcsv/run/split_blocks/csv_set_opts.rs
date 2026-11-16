pub fn csv_set_opts(p: Option<&mut csv_parser>, options: u8) -> i32 {
    match p {
        None => -1,
        Some(parser) => {
            parser.options = options;
            0
        }
    }
}