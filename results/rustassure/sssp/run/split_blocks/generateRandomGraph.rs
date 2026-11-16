use std::time::{SystemTime, UNIX_EPOCH};

pub fn generateRandomGraph(graph: &mut Graph) {

    let n = graph.nodes.len() as i32;

    // Simple xorshift64* PRNG seeded from the system time (no external crate needed)
    let mut state: u64 = SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .map(|d| d.as_nanos() as u64)
        .unwrap_or(0x9E37_79B9_7F4A_7C15)
        | 1;

    let mut next = move || -> u32 {
        state ^= state >> 12;
        state ^= state << 25;
        state ^= state >> 27;
        (state.wrapping_mul(0x2545_F491_4F6C_DD1D) >> 33) as u32 // 31-bit value like rand()
    };

    for i in 0..n {
        for j in (i + 1)..n {
            if (next() % 1_000_000) < 500_000 {
                let weight: i32 = (next() % 100) as i32 + 1;
                addEdge(graph, i, j, weight);
                addEdge(graph, j, i, weight);
            }
        }
    }
}