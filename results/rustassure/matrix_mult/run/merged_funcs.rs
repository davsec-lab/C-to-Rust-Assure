use std::time::{SystemTime, UNIX_EPOCH};

type __syscall_slong_t = i64;
type __time_t = i64;
pub type size_t = usize;

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
pub fn free_matrix(matrix: Vec<Vec<i32>>, size: usize) {
    let mut matrix = matrix;
    // Free each row explicitly (mirrors the C loop), then the outer container.
    for i in 0..size.min(matrix.len()) {
        matrix[i] = Vec::new();
    }
    drop(matrix);
}

pub fn fill_matrix(matrix: &mut Vec<Vec<i32>>, size: usize) {

    // Seed from the current time (similar to srand(time(NULL)))
    let seed = SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .map(|d| d.as_nanos() as u64)
        .unwrap_or(0x9E3779B97F4A7C15);
    let mut state: u64 = seed ^ 0x9E3779B97F4A7C15;
    if state == 0 {
        state = 0x9E3779B97F4A7C15;
    }

    for i in 0..size {
        for j in 0..size {
            // xorshift64* pseudo-random generator
            state ^= state >> 12;
            state ^= state << 25;
            state ^= state >> 27;
            let r = state.wrapping_mul(0x2545F4914F6CDD1D);
            // rand() returns a non-negative int in [0, RAND_MAX]
            matrix[i][j] = ((r >> 33) as u32 & 0x7FFF_FFFF) as i32;
        }
    }
}
#[derive(Debug, Clone, Copy, Default)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

fn diff_timespec(time1: &timespec, time0: &timespec) -> f64 {
    (time1.tv_sec - time0.tv_sec) as f64
        + (time1.tv_nsec - time0.tv_nsec) as f64 / 1000000000.0
}
pub fn allocate_matrix(size: i32) -> Vec<Vec<i32>> {
    let n = if size > 0 { size as usize } else { 0 };
    let mut matrix: Vec<Vec<i32>> = Vec::with_capacity(n);
    for _ in 0..n {
        matrix.push(vec![0; n]);
    }
    matrix
}
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