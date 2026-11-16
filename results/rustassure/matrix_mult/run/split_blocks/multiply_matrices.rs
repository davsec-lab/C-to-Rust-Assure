pub fn multiply_matrices(a: &[Vec<i32>], b: &[Vec<i32>], c: &mut [Vec<i32>], size: usize) {
    for i in 0..size {
        for j in 0..size {
            c[i][j] = 0;
            for k in 0..size {
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }
}