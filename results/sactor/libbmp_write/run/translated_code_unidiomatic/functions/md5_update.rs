pub unsafe fn md5_update(ctx: &mut md5_ctx, data: *const libc::c_uchar, len: usize) {
    let mut data = data;
    let mut len = len;
    ctx.bit_len = ctx.bit_len.wrapping_add((len as u64).wrapping_mul(8u64));
    while len > 0 {
        let space: usize = (ctx.buffer.len() as usize) - (ctx.buffer_len as usize);
        let chunk: usize = if len < space { len } else { space };
        std::ptr::copy_nonoverlapping(
            data,
            ctx.buffer.as_mut_ptr().add(ctx.buffer_len as usize),
            chunk,
        );
        ctx.buffer_len = ctx.buffer_len + (chunk as libc::size_t);
        data = data.add(chunk);
        len -= chunk;
        if ctx.buffer_len as usize == ctx.buffer.len() {
            let block: [libc::c_uchar; 64] = ctx.buffer;
            md5_transform(ctx, &block);
            ctx.buffer_len = 0;
        }
    }
}
