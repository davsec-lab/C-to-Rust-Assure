#![allow(unaligned_references)]
#[no_mangle]
fn __bswap_16(__bsx: u16) -> u16 {
    (((__bsx >> 8) & 0xff) | ((__bsx & 0xff) << 8)) as u16
}
