pub fn md5_update(ctx: &mut md5_ctx, data: &[u8]) {
    let mut data = data;
    ctx.bit_len = ctx
        .bit_len
        .wrapping_add((data.len() as u64).wrapping_mul(8u64));
    while !data.is_empty() {
        let space: usize = ctx.buffer.len() - ctx.buffer_len;
        let chunk: usize = data.len().min(space);
        let start = ctx.buffer_len;
        ctx.buffer[start..start + chunk].copy_from_slice(&data[..chunk]);
        ctx.buffer_len += chunk;
        data = &data[chunk..];
        if ctx.buffer_len == ctx.buffer.len() {
            let block: [u8; 64] = ctx.buffer;
            md5_transform(ctx, &block);
            ctx.buffer_len = 0;
        }
    }
}
