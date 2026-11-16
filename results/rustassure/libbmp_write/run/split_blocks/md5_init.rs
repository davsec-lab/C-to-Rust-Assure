fn md5_init(ctx: &mut md5_ctx) {
    ctx.state[0] = 0x67452301u32;
    ctx.state[1] = 0xefcdab89u32;
    ctx.state[2] = 0x98badcfeu32;
    ctx.state[3] = 0x10325476u32;
    ctx.bit_len = 0;
    ctx.buffer_len = 0;
}