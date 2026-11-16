#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash)]
pub enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED = -3,
    BMP_INVALID_FILE = -2,
    BMP_ERROR = -1,
    BMP_OK = 0,
}
