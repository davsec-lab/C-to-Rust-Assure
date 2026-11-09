pub unsafe fn csv_strerror(status: libc::c_int) -> CsvErrorPtr {
    let index = if status >= 4 || status < 0 {
        4
    } else {
        status as usize
    };
    CsvErrorPtr(csv_errors[index].0)
}
