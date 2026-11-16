pub fn csv_strerror(status: i32) -> &'static str {
    const CSV_EINVALID: i32 = 4;
    if status >= CSV_EINVALID || status < 0 {
        CSV_ERRORS[CSV_EINVALID as usize]
    } else {
        CSV_ERRORS[status as usize]
    }
}
