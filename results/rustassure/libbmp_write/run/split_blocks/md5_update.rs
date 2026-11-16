fn md5_update(ctx: &mut md5_ctx, data: &[u8], len: usize) {
    ctx.bit_len = ctx.bit_len.wrapping_add((len as u64).wrapping_mul(8));
    let mut data = data;
    let mut len = len;
    while len > 0 {
        let space = ctx.buffer.len() - ctx.buffer_len;
        let chunk = if len < space { len } else { space };
        let start = ctx.buffer_len;
        ctx.buffer[start..start + chunk].copy_from_slice(&data[..chunk]);
        ctx.buffer_len += chunk;
        data = &data[chunk..];
        len -= chunk;
        if ctx.buffer_len == ctx.buffer.len() {
            let block = ctx.buffer;
            md5_transform(ctx, &block);
            ctx.buffer_len = 0;
        }
    }
}