#[allow(non_upper_case_globals)]
#[repr(transparent)]
pub struct CsvErrors(pub [*const libc::c_char; 5]);
unsafe impl Sync for CsvErrors {}
#[allow(non_upper_case_globals)]
static csv_errors: CsvErrors = CsvErrors([
    b"success\0".as_ptr() as *const libc::c_char,
    b"error parsing data while strict checking enabled\0".as_ptr() as *const libc::c_char,
    b"memory exhausted while increasing buffer size\0".as_ptr() as *const libc::c_char,
    b"data size too large\0".as_ptr() as *const libc::c_char,
    b"invalid status code\0".as_ptr() as *const libc::c_char,
]);
