pub fn multiply_matrices(a: &[&[i32]], b: &[&[i32]], c: &mut [&mut [i32]], size: usize) {
    for i in 0..size {
        for j in 0..size {
            let mut acc: i32 = 0;
            for k in 0..size {
                let prod = a[i][k].wrapping_mul(b[k][j]);
                acc = acc.wrapping_add(prod);
            }
            c[i][j] = acc;
        }
    }
}
