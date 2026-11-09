pub fn csv_set_space_func(
    p: Option<&mut CsvParser<'_>>,
    f: Option<unsafe extern "C" fn(u8) -> i32>,
) {
    if let Some(p) = p {
        p.is_space = f;
    }
}
