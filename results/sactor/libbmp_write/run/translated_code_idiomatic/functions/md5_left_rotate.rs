pub fn md5_left_rotate(value: u32, shift: u32) -> u32 {
    value.rotate_left(shift)
}
