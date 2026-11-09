#[repr(transparent)]
struct CsvErrorPtr(*const libc::c_char);
unsafe impl Sync for CsvErrorPtr {}
static csv_errors: [CsvErrorPtr; 5] = [
    CsvErrorPtr(b"success\0".as_ptr() as *const libc::c_char),
    CsvErrorPtr(
        b"error parsing data while strict checking enabled\0".as_ptr() as *const libc::c_char,
    ),
    CsvErrorPtr(b"memory exhausted while increasing buffer size\0".as_ptr() as *const libc::c_char),
    CsvErrorPtr(b"data size too large\0".as_ptr() as *const libc::c_char),
    CsvErrorPtr(b"invalid status code\0".as_ptr() as *const libc::c_char),
];
