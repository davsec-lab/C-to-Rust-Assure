pub fn csv_get_opts(p: Option<&csv_parser>) -> i32 {
    match p {
        None => -1,
        Some(p) => p.options as i32,
    }
}