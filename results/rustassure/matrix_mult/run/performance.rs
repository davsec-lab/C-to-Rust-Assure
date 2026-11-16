use std::os::unix::ffi::OsStrExt;
use std::time::{Instant, SystemTime, UNIX_EPOCH};

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

extern "C" {
    fn srand(seed: u32);
}

fn atoi(s: &str) -> i32 {
    let bytes = s.as_bytes();
    let mut i = 0;
    while i < bytes.len() && (bytes[i] == b' ' || (bytes[i] >= 9 && bytes[i] <= 13)) {
        i += 1;
    }
    let mut neg = false;
    if i < bytes.len() && (bytes[i] == b'+' || bytes[i] == b'-') {
        neg = bytes[i] == b'-';
        i += 1;
    }
    let mut val: i64 = 0;
    while i < bytes.len() && bytes[i].is_ascii_digit() {
        val = val.wrapping_mul(10).wrapping_add((bytes[i] - b'0') as i64);
        i += 1;
    }
    if neg {
        val = val.wrapping_neg();
    }
    val as i32
}

fn to_timespec(d: std::time::Duration) -> timespec {
    timespec {
        tv_sec: d.as_secs() as __time_t,
        tv_nsec: d.subsec_nanos() as __syscall_slong_t,
    }
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        let prog = args.get(0).map(|s| s.as_str()).unwrap_or("");
        println!("Usage: {} <matrix_size>", prog);
        std::process::exit(1);
    }

    let size = atoi(&args[1]);
    if size <= 0 {
        println!("Error: matrix size must be a positive integer.");
        std::process::exit(1);
    }

    unsafe {
        srand(10000);
    }

    // Allocate matrices
    let mut a = allocate_matrix(size);
    let mut b = allocate_matrix(size);
    let mut c = allocate_matrix(size);

    fill_matrix(&mut a, size as usize);
    fill_matrix(&mut b, size as usize);

    let base = Instant::now();
    let start_time = to_timespec(base.elapsed());

    // MAIN COMPUTATION BEGIN
    multiply_matrices(&a, &b, &mut c, size as usize);
    // MAIN COMPUTATION END

    let end_time = to_timespec(base.elapsed());
    let time_elapsed = diff_timespec(&end_time, &start_time);

    println!(
        "Time taken for matrix multiplication of size {} x {}: {:.6} seconds",
        size, size, time_elapsed
    );

    free_matrix(a, size as usize);
    free_matrix(b, size as usize);
    free_matrix(c, size as usize);
}