pub fn free_matrix(matrix: Vec<Vec<i32>>, size: usize) {
    let mut matrix = matrix;
    // Free each row explicitly (mirrors the C loop), then the outer container.
    for i in 0..size.min(matrix.len()) {
        matrix[i] = Vec::new();
    }
    drop(matrix);
}