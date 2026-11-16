pub fn allocate_matrix(size: i32) -> Vec<Vec<i32>> {
    let n = if size > 0 { size as usize } else { 0 };
    (0..n).map(|_| vec![0i32; n]).collect()
}
pub fn free_matrix(matrix: Vec<Vec<i32>>) {
    drop(matrix);
}
pub fn fill_matrix(matrix: &mut [Vec<i32>]) {
    use std::collections::hash_map::RandomState;
    use std::hash::{BuildHasher, Hasher};
    let state = RandomState::new();
    let mut counter: u64 = 0;
    let mut next_rand = || -> i32 {
        let mut hasher = state.build_hasher();
        hasher.write_u64(counter);
        counter = counter.wrapping_add(1);
        (hasher.finish() & 0x7FFF_FFFF) as i32
    };
    for row in matrix.iter_mut() {
        for cell in row.iter_mut() {
            *cell = next_rand();
        }
    }
}
pub fn multiply_matrices(a: &[&[i32]], b: &[&[i32]], c: &mut [&mut [i32]], size: usize) {
    for i in 0..size {
        for j in 0..size {
            let mut acc: i32 = 0;
            for k in 0..size {
                let prod = a[i][k].wrapping_mul(b[k][j]);
                acc = acc.wrapping_add(prod);
            }
            c[i][j] = acc;
        }
    }
}
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
pub fn diff_timespec(time1_sec: i64, time1_nsec: i64, time0_sec: i64, time0_nsec: i64) -> f64 {
    let sec = time1_sec.wrapping_sub(time0_sec);
    let nsec = time1_nsec.wrapping_sub(time0_nsec);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
pub fn main() {
    fn parse_atoi(s: &str) -> i32 {
        let s = s.trim_start();
        let mut chars = s.chars().peekable();
        let mut negative = false;
        if let Some(&c) = chars.peek() {
            if c == '+' || c == '-' {
                negative = c == '-';
                chars.next();
            }
        }
        let mut value: i64 = 0;
        for c in chars {
            if let Some(d) = c.to_digit(10) {
                value = value.saturating_mul(10).saturating_add(d as i64);
                if value > i64::from(i32::MAX) + 1 {
                    value = i64::from(i32::MAX) + 1;
                }
            } else {
                break;
            }
        }
        if negative {
            value = -value;
        }
        value.clamp(i64::from(i32::MIN), i64::from(i32::MAX)) as i32
    }
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        let prog = if !args.is_empty() {
            args[0].clone()
        } else {
            String::new()
        };
        println!("Usage: {} <matrix_size>", prog);
        std::process::exit(1);
    }
    let size: i32 = parse_atoi(&args[1]);
    if size <= 0 {
        println!("Error: matrix size must be a positive integer.");
        std::process::exit(1);
    }
    let mut a = allocate_matrix(size);
    let mut b = allocate_matrix(size);
    let mut c = allocate_matrix(size);
    fill_matrix(&mut a);
    fill_matrix(&mut b);
    let start_time = std::time::Instant::now();
    {
        let a_refs: Vec<&[i32]> = a.iter().map(|r| r.as_slice()).collect();
        let b_refs: Vec<&[i32]> = b.iter().map(|r| r.as_slice()).collect();
        let mut c_refs: Vec<&mut [i32]> = c.iter_mut().map(|r| r.as_mut_slice()).collect();
        multiply_matrices(&a_refs, &b_refs, &mut c_refs, size as usize);
    }
    let elapsed = start_time.elapsed();
    { let mut s: i64 = 0; for i in 0..size as usize { for j in 0..size as usize { s += c[i][j] as i64 * (((i * 7 + j) % 13 + 1) as i64); } } println!("CHECK {}", s); }
    let time_elapsed: f64 = diff_timespec(
        elapsed.as_secs() as i64,
        elapsed.subsec_nanos() as i64,
        0,
        0,
    );
    println!(
        "Time taken for matrix multiplication of size {} x {}: {:.6} seconds",
        size, size, time_elapsed
    );
    free_matrix(a);
    free_matrix(b);
    free_matrix(c);
}
