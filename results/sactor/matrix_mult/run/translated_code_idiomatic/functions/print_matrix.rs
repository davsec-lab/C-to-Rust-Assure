pub fn print_matrix(matrix: &[Vec<i32>], name: &str) {
    let size = matrix.len();
    println!("Matrix {}:", name);
    for row in matrix.iter().take(size) {
        for value in row.iter().take(size) {
            print!("{:5} ", value);
        }
        println!();
    }
    println!();
}
