pub unsafe fn md5_final(ctx: &mut md5_ctx, digest: *mut libc::c_uchar) {
    let mut length_bytes: [libc::c_uchar; 8] = [0; 8];
    for i in 0..length_bytes.len() {
        length_bytes[i] = ((ctx.bit_len >> (8 * i)) & 0xff) as libc::c_uchar;
    }
    md5_update(ctx, &pad as *const u8, 1);
    while ctx.buffer_len != 56 {
        md5_update(ctx, &zero as *const u8, 1);
    }
    md5_update(ctx, length_bytes.as_ptr(), length_bytes.len());
    for i in 0..4usize {
        let st = ctx.state[i];
        *digest.add(i * 4) = (st & 0xff) as libc::c_uchar;
        *digest.add(i * 4 + 1) = ((st >> 8) & 0xff) as libc::c_uchar;
        *digest.add(i * 4 + 2) = ((st >> 16) & 0xff) as libc::c_uchar;
        *digest.add(i * 4 + 3) = ((st >> 24) & 0xff) as libc::c_uchar;
    }
}
