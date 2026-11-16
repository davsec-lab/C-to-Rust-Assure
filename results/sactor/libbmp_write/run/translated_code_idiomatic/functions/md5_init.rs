pub fn md5_init(ctx: &mut md5_ctx) {
    ctx.state = [0x67452301u32, 0xefcdab89u32, 0x98badcfeu32, 0x10325476u32];
    ctx.bit_len = 0;
    ctx.buffer_len = 0;
}
