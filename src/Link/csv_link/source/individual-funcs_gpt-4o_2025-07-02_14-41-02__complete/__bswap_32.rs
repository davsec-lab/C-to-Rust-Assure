#![allow(unaligned_references)]
#[no_mangle]
fn __bswap_32(__bsx: u32) -> u32 {
    (((__bsx & 0xff000000u32) >> 24)
        | ((__bsx & 0x00ff0000u32) >> 8)
        | ((__bsx & 0x0000ff00u32) << 8)
        | ((__bsx & 0x000000ffu32) << 24))
}
