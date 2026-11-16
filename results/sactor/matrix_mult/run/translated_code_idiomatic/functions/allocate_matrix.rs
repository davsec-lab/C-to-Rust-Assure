pub fn allocate_matrix(size: i32) -> Vec<Vec<i32>> {
    let n = if size > 0 { size as usize } else { 0 };
    (0..n).map(|_| vec![0i32; n]).collect()
}
