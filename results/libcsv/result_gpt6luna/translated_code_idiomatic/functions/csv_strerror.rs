pub fn csv_strerror(status: i32) -> &'static CStr {
    let index = if status < 0 || status >= 4 {
        4
    } else {
        status as usize
    };
    CSV_ERRORS[index]
}
