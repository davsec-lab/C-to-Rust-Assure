pub fn generateRandomGraph(graph: &mut Graph) {
    use std::collections::hash_map::RandomState;
    use std::hash::{BuildHasher, Hasher};
    let mut state: u64 = RandomState::new().build_hasher().finish() | 1;
    let mut next_rand = move || -> i32 {
        state ^= state << 13;
        state ^= state >> 7;
        state ^= state << 17;
        (state.wrapping_mul(0x2545F4914F6CDD1D) >> 33) as i32
    };
    let n: i32 = graph.nodes.len() as i32;
    for i in 0..n {
        for j in (i + 1)..n {
            if next_rand() % 1000000 < 500000 {
                let weight: i32 = (next_rand() % 100) + 1;
                addEdge(graph, i, j, weight);
                addEdge(graph, j, i, weight);
            }
        }
    }
}
