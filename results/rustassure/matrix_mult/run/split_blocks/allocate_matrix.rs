pub fn allocate_matrix(size: i32) -> Vec<Vec<i32>> {
    let n = if size > 0 { size as usize } else { 0 };
    let mut matrix: Vec<Vec<i32>> = Vec::with_capacity(n);
    for _ in 0..n {
        matrix.push(vec![0; n]);
    }
    matrix
}