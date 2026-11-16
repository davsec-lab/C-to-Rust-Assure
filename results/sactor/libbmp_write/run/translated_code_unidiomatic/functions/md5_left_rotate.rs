pub fn md5_left_rotate(value: u32, shift: u32) -> u32 {
    value.wrapping_shl(shift) | value.wrapping_shr(32u32.wrapping_sub(shift))
}
