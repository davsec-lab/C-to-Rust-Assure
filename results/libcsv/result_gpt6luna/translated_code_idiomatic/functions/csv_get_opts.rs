pub fn csv_get_opts(p: Option<&CsvParser<'_>>) -> i32 {
    p.map_or(-1, |parser| parser.options as i32)
}
