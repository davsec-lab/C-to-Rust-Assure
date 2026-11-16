pub fn md5_transform(ctx: &mut md5_ctx, block: &[libc::c_uchar; 64]) {
    let mut m: [u32; 16] = [0; 16];
    let mut a: u32 = ctx.state[0];
    let mut b: u32 = ctx.state[1];
    let mut c: u32 = ctx.state[2];
    let mut d: u32 = ctx.state[3];
    for i in 0..16usize {
        let j = i * 4;
        m[i] = (block[j] as u32)
            | ((block[j + 1] as u32) << 8)
            | ((block[j + 2] as u32) << 16)
            | ((block[j + 3] as u32) << 24);
    }
    for i in 0..64usize {
        let f: u32;
        let g: u32;
        if i < 16 {
            f = (b & c) | (!b & d);
            g = i as u32;
        } else if i < 32 {
            f = (d & b) | (!d & c);
            g = ((5 * i + 1) % 16) as u32;
        } else if i < 48 {
            f = b ^ c ^ d;
            g = ((3 * i + 5) % 16) as u32;
        } else {
            f = c ^ (b | !d);
            g = ((7 * i) % 16) as u32;
        }
        let tmp = d;
        d = c;
        c = b;
        let sum = a
            .wrapping_add(f)
            .wrapping_add(k[i])
            .wrapping_add(m[g as usize]);
        b = b.wrapping_add(unsafe { md5_left_rotate(sum, s[i]) });
        a = tmp;
    }
    ctx.state[0] = ctx.state[0].wrapping_add(a);
    ctx.state[1] = ctx.state[1].wrapping_add(b);
    ctx.state[2] = ctx.state[2].wrapping_add(c);
    ctx.state[3] = ctx.state[3].wrapping_add(d);
}
