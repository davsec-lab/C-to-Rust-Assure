
fn __fswahb32(val: u32) -> u32 {
    ((val & 0x00ff00ff) << 8) | ((val & 0xff00ff00) >> 8)
}

use std::time::Instant;

fn bfs() {
    let start = Instant::now();
    // BFS algorithm implementation here
    let duration = start.elapsed();
    println!("Time elapsed in BFS is: {:?}", duration);
}

fn __le32_to_cpup() {
    // Function implementation here
}

fn create_adj_matrix(n: usize) -> Vec<Vec<i32>> {
    let mut matrix = vec![vec![0; n]; n];
    matrix
}

fn __bswap_32(__bsx: u32) -> u32 {
    ((__bsx & 0xff000000u32) >> 24)
        | ((__bsx & 0x00ff0000u32) >> 8)
        | ((__bsx & 0x0000ff00u32) << 8)
        | ((__bsx & 0x000000ffu32) << 24)
}

fn bfs_with_adj_matrix(adj_matrix: &[Vec<i32>], n: usize, start: usize) -> i32 {
    let mut total = 0;
    let mut visited = vec![false; n];
    let mut queue = std::collections::VecDeque::new();
    visited[start] = true;
    queue.push_back(start);
    while let Some(current) = queue.pop_front() {
        for i in 0..n {
            if adj_matrix[current][i] == 1 && !visited[i] {
                visited[i] = true;
                total += 1;
                queue.push_back(i);
            }
        }
    }
    total
}

fn __arch_swab64(val: u64) -> u64 {
    val.swap_bytes()
}

use rand::Rng;

fn generate_random_graph(adj_matrix: &mut Vec<Vec<i32>>, n: usize) {
    let mut rng = rand::thread_rng();
    for i in 0..n {
        for j in (i + 1)..n {
            if rng.gen_range(0..1_000_000) < 500_000 {
                adj_matrix[i][j] = 1;
                adj_matrix[j][i] = 1;
            }
        }
    }
}
