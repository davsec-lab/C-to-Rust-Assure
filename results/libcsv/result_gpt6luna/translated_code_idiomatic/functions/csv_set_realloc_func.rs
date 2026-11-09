pub fn csv_set_realloc_func(
    p: Option<&mut CsvParser<'_>>,
    f: Option<unsafe extern "C" fn(*mut c_void, usize) -> *mut c_void>,
) {
    if let (Some(parser), Some(func)) = (p, f) {
        parser.realloc_func = Some(func);
    }
}
