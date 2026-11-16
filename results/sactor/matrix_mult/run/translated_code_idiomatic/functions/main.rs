pub fn main() -> () {
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
