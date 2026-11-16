use std::time::{SystemTime, UNIX_EPOCH};

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