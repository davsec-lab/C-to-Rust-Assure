use std::ffi::CStr;

static CSV_ERRORS: [&'static CStr; 5] = [
    unsafe { CStr::from_bytes_with_nul_unchecked(b"success\0") },
    unsafe {
        CStr::from_bytes_with_nul_unchecked(b"error parsing data while strict checking enabled\0")
    },
    unsafe {
        CStr::from_bytes_with_nul_unchecked(b"memory exhausted while increasing buffer size\0")
    },
    unsafe { CStr::from_bytes_with_nul_unchecked(b"data size too large\0") },
    unsafe { CStr::from_bytes_with_nul_unchecked(b"invalid status code\0") },
];
