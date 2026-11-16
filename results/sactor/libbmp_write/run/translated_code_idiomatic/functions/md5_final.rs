pub fn md5_final(ctx: &mut md5_ctx, digest: &mut [u8; 16]) {
    let length_bytes: [u8; 8] = ctx.bit_len.to_le_bytes();
    md5_update(ctx, &[PAD]);
    while ctx.buffer_len != 56 {
        md5_update(ctx, &[ZERO]);
    }
    md5_update(ctx, &length_bytes);
    for i in 0..4usize {
        digest[i * 4..i * 4 + 4].copy_from_slice(&ctx.state[i].to_le_bytes());
    }
}
