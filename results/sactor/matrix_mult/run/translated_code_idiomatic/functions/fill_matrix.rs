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
