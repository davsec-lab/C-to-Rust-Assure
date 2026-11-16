#[allow(non_camel_case_types)]
#[derive(Copy, Clone, Debug)]
pub struct md5_ctx {
    pub state: [u32; 4],
    pub bit_len: u64,
    pub buffer: [u8; 64],
    pub buffer_len: usize,
}
impl Default for md5_ctx {
    fn default() -> Self {
        md5_ctx {
            state: [0u32; 4],
            bit_len: 0,
            buffer: [0u8; 64],
            buffer_len: 0,
        }
    }
}
