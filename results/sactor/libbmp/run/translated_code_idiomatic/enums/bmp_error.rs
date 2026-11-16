use std::fmt;

#[repr(i32)]
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum BmpError {
    FileNotOpened = -4,
    HeaderNotInitialized = -3,
    InvalidFile = -2,
    Error = -1,
}

impl BmpError {
    /// Returns the numeric code used by the original C API.
    pub fn code(self) -> i32 {
        self as i32
    }
}

impl fmt::Display for BmpError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let msg = match self {
            BmpError::FileNotOpened => "file not opened",
            BmpError::HeaderNotInitialized => "header not initialized",
            BmpError::InvalidFile => "invalid file",
            BmpError::Error => "unspecified BMP error",
        };
        f.write_str(msg)
    }
}

impl std::error::Error for BmpError {}

/// Convenience alias: `BMP_OK` becomes `Ok(())`.
pub type BmpResult<T = ()> = Result<T, BmpError>;
