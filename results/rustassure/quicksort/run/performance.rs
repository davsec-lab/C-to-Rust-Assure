use std::os::unix::ffi::OsStrExt;
use std::env;
use std::time::Instant;

type __syscall_slong_t = i64;
type __time_t = i64;

pub fn swap(a: &mut i32, b: &mut i32) {
    let temp = *a;
    *a = *b;
    *b = temp;
}
#[derive(Debug, Clone, Copy, Default)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

fn diff_timespec(time1: &timespec, time0: &timespec) -> f64 {
    (time1.tv_sec.wrapping_sub(time0.tv_sec)) as f64
        + (time1.tv_nsec.wrapping_sub(time0.tv_nsec)) as f64 / 1000000000.0
}
pub fn partition(arr: &mut [i32], low: i32, high: i32) -> i32 {
    let pivot = arr[high as usize];
    let mut i = low;
    let mut j = low;
    while j < high {
        if arr[j as usize] <= pivot {
            arr.swap(i as usize, j as usize);
            i += 1;
        }
        j += 1;
    }
    arr.swap(i as usize, high as usize);
    i
}
fn quicksort(arr: &mut [i32], low: i32, high: i32) {
    if low < high {
        let pi = partition(arr, low, high);
        quicksort(arr, low, pi - 1);
        quicksort(arr, pi + 1, high);
    }
}


extern "C" {
    fn srand(seed: u32);
    fn rand() -> i32;
}

fn atoi(s: &str) -> i32 {
    let b = s.as_bytes();
    let mut i = 0;
    while i < b.len() && (b[i] == b' ' || (b[i] >= 9 && b[i] <= 13)) {
        i += 1;
    }
    let mut neg = false;
    if i < b.len() && (b[i] == b'+' || b[i] == b'-') {
        neg = b[i] == b'-';
        i += 1;
    }
    let mut v: i32 = 0;
    while i < b.len() && b[i].is_ascii_digit() {
        v = v.wrapping_mul(10).wrapping_add((b[i] - b'0') as i32);
        i += 1;
    }
    if neg { v.wrapping_neg() } else { v }
}

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() != 2 {
        println!("Usage: {} <array_size>", args.get(0).map(|s| s.as_str()).unwrap_or(""));
        std::process::exit(1);
    }

    let size = atoi(&args[1]);
    if size <= 0 {
        println!("Error: array size must be a positive integer.");
        std::process::exit(1);
    }

    let mut arr: Vec<i32> = Vec::new();
    if arr.try_reserve_exact(size as usize).is_err() {
        println!("Error: Memory allocation failed.");
        std::process::exit(1);
    }

    unsafe {
        srand(10000);
        for _ in 0..size {
            arr.push(rand());
        }
    }

    let start_time = timespec { tv_sec: 0, tv_nsec: 0 };
    let base = Instant::now();

    // MAIN COMPUTATION BEGIN
    quicksort(&mut arr, 0, size - 1);
    // MAIN COMPUTATION END

    let el = base.elapsed();
    let end_time = timespec {
        tv_sec: el.as_secs() as __time_t,
        tv_nsec: el.subsec_nanos() as __syscall_slong_t,
    };
    let time_elapsed = diff_timespec(&end_time, &start_time);

    println!(
        "Time taken for quicksort of array size {}: {:.6} seconds",
        size, time_elapsed
    );
}