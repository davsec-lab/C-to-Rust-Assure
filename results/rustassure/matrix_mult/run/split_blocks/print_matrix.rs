pub fn print_matrix(matrix: &[Vec<i32>], size: i32, name: &str) {
    println!("Matrix {}:", name);
    for i in 0..size as usize {
        for j in 0..size as usize {
            print!("{:5} ", matrix[i][j]);
        }
        println!();
    }
    println!();
}