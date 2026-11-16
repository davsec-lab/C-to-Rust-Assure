fn md5_left_rotate(value: uint32_t, shift: uint32_t) -> uint32_t {
    (value.wrapping_shl(shift)) | (value.wrapping_shr(32u32.wrapping_sub(shift)))
}