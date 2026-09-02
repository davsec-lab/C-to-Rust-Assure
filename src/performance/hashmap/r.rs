use std::collections::HashMap;
use std::time::Instant;


//rustc -O r.rs -o r
fn main() {
    let n: u64 = 9_000_000;
    let mut m: HashMap<u64, u64> = HashMap::with_capacity((n * 2) as usize);

    // 1. Insert
    for i in 0..n {
        let key = i * 2 + 1;
        m.insert(key, i);
    }

    // 2. Lookup (hit)
    let mut sum: u64 = 0;
    for i in 0..n {
        let key = i * 2 + 1;
        sum += *m.get(&key).unwrap();
    }

    // 3. Erase half
    for i in (0..n).step_by(2) {
        let key = i * 2 + 1;
        m.remove(&key);
    }

    // 4. Lookup (mixed hit/miss)
    let mut sum2: u64 = 0;
    for i in 0..n {
        let key = i * 2 + 1;
        if let Some(v) = m.get(&key) {
            sum2 += *v;
        }
    }

    println!("sum = {sum}, sum2 = {sum2}");
}
