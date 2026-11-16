fn md5_final(ctx: &mut md5_ctx, digest: &mut [u8; 16]) {
    static PAD: u8 = 0x80;
    static ZERO: u8 = 0;
    let mut length_bytes = [0u8; 8];
    for i in 0..length_bytes.len() {
        length_bytes[i] = ((ctx.bit_len >> (8 * i)) & 0xff) as u8;
    }
    md5_update(ctx, &[PAD], 1);
    while ctx.buffer_len != 56 {
        md5_update(ctx, &[ZERO], 1);
    }
    md5_update(ctx, &length_bytes, length_bytes.len());
    for i in 0..4 {
        digest[i * 4] = (ctx.state[i] & 0xff) as u8;
        digest[i * 4 + 1] = ((ctx.state[i] >> 8) & 0xff) as u8;
        digest[i * 4 + 2] = ((ctx.state[i] >> 16) & 0xff) as u8;
        digest[i * 4 + 3] = ((ctx.state[i] >> 24) & 0xff) as u8;
    }
}