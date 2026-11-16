pub fn get_decimal_point() -> u8 {
    #[cfg(feature = "enable_locales")]
    {
        unsafe {
            let lconv = libc::localeconv();
            return (*(*lconv).decimal_point) as u8;
        }
    }
    #[cfg(not(feature = "enable_locales"))]
    {
        return b'.';
    }
}
