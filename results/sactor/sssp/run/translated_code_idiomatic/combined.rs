#[derive(Clone, Debug, Default)]
pub struct Node {
    pub id: i32,
    pub edges: Vec<i32>,
    pub weights: Vec<i32>,
}
#[derive(Clone, Debug, Default)]
pub struct Graph {
    pub nodes: Vec<Node>,
    pub edges: Vec<Edge>,
    pub capacity: i32,
}
#[derive(Copy, Clone, Debug)]
pub struct Edge {
    pub from: i32,
    pub to: i32,
    pub weight: i32,
}
pub fn createGraph(node_count: i32) -> Graph {
    let nodes: Vec<Node> = (0..node_count.max(0))
        .map(|i| Node {
            id: i,
            edges: Vec::new(),
            weights: Vec::new(),
        })
        .collect();
    Graph {
        nodes,
        edges: Vec::new(),
        capacity: 0,
    }
}
pub fn addEdge(graph: &mut Graph, from: i32, to: i32, weight: i32) {
    {
        let node = &mut graph.nodes[from as usize];
        node.edges.push(to);
        node.weights.push(weight);
    }
    if graph.edges.len() as i64 >= graph.capacity as i64 {
        graph.capacity = if graph.capacity == 0 {
            1000
        } else {
            graph.capacity * 2
        };
        let target = graph.capacity as usize;
        let len = graph.edges.len();
        if target > len {
            graph.edges.reserve(target - len);
        }
    }
    graph.edges.push(Edge { from, to, weight });
}
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
pub fn parallelBellmanFord() {}
pub fn sssp(graph: &Graph, start: i32) -> i32 {
    let inf: i32 = i32::MAX;
    let node_count = graph.nodes.len();
    let mut distances: Vec<i32> = vec![inf; node_count];
    if start >= 0 {
        if let Some(d) = distances.get_mut(start as usize) {
            *d = 0;
        }
    }
    for _ in 0..node_count.saturating_sub(1) {
        let mut updated = false;
        for edge in graph.edges.iter() {
            let df = distances[edge.from as usize];
            if df != inf && df.wrapping_add(edge.weight) < distances[edge.to as usize] {
                distances[edge.to as usize] = df.wrapping_add(edge.weight);
                updated = true;
            }
        }
        if !updated {
            break;
        }
    }
    distances.iter().filter(|&&d| d != inf).count() as i32
}
pub fn freeGraph(graph: Graph) {
    let mut graph = graph;
    for node in graph.nodes.iter_mut() {
        node.edges = Vec::new();
        node.weights = Vec::new();
    }
    graph.nodes = Vec::new();
    graph.edges = Vec::new();
    drop(graph);
}
pub fn diff_timespec(time1: &(i64, i64), time0: &(i64, i64)) -> f64 {
    let sec = time1.0.wrapping_sub(time0.0);
    let nsec = time1.1.wrapping_sub(time0.1);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
pub fn main() {
    let args: Vec<String> = std::env::args().collect();
    let argc = args.len();
    if !(2..=3).contains(&argc) {
        println!("Usage: {} <number_of_nodes>", args[0]);
        std::process::exit(1);
    }
    let size: i32 = {
        let s = args[1].as_bytes();
        let mut i = 0;
        while i < s.len() && (s[i] == b' ' || (s[i] >= 9 && s[i] <= 13)) {
            i += 1;
        }
        let mut neg = false;
        if i < s.len() && (s[i] == b'+' || s[i] == b'-') {
            neg = s[i] == b'-';
            i += 1;
        }
        let mut v: i64 = 0;
        while i < s.len() && s[i].is_ascii_digit() {
            v = v.wrapping_mul(10).wrapping_add((s[i] - b'0') as i64);
            i += 1;
        }
        if neg {
            v = v.wrapping_neg();
        }
        v as i32
    };
    if size <= 0 {
        println!("Invalid number of nodes. Please enter a positive integer.");
        std::process::exit(1);
    }
    let mut graph = createGraph(size);
    generateRandomGraph(&mut graph);
    let base = std::time::Instant::now();
    let to_pair =
        |d: std::time::Duration| -> (i64, i64) { (d.as_secs() as i64, d.subsec_nanos() as i64) };
    let start_time = to_pair(base.elapsed());
    let reachable = sssp(&graph, 0);
    let end_time = to_pair(base.elapsed());
    let time_elapsed = diff_timespec(&end_time, &start_time);
    println!(
        "Time taken for SSSP on graph of {} nodes: {:.6} seconds",
        size, time_elapsed
    );
    println!(
        "\n SSSP on graph of size {}: {} reachable nodes",
        size, reachable
    );
    freeGraph(graph);
}
