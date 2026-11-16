use std::any::Any;
use std::time::{SystemTime, UNIX_EPOCH};

type __syscall_slong_t = i64;
type __time_t = i64;
pub type size_t = usize;
pub struct Edge {
    pub from: i32,
    pub to: i32,
    pub weight: i32,
}
pub struct Node {
    pub id: i32,
    pub edges: Vec<i32>,
    pub weights: Vec<i32>,
}

impl Node {
    pub fn new(id: i32) -> Self {
        Node {
            id,
            edges: Vec::new(),
            weights: Vec::new(),
        }
    }

    /// Equivalent of `edge_count`
    pub fn edge_count(&self) -> usize {
        self.edges.len()
    }

    /// Equivalent of `capacity`
    pub fn capacity(&self) -> usize {
        self.edges.capacity().min(self.weights.capacity())
    }

    /// Replaces the realloc + index assignment pattern:
    ///   node->edges = realloc(...); node->edges[node->edge_count] = to;
    ///   node->weights = realloc(...); node->weights[node->edge_count] = weight;
    ///   node->edge_count++;
    pub fn add_edge(&mut self, to: i32, weight: i32) {
        // Vec grows automatically (amortized), replacing realloc
        self.edges.push(to);
        self.weights.push(weight);
    }
}
pub struct Graph {
    pub nodes: Vec<Node>,
    pub edges: Vec<Edge>,
}

pub fn addEdge(graph: &mut Graph, from: i32, to: i32, weight: i32) {
    let node = &mut graph.nodes[from as usize];
    node.add_edge(to, weight);
    graph.edges.push(Edge { from, to, weight });
}
pub fn createGraph(node_count: i32) -> Graph {
    let count = if node_count > 0 { node_count as usize } else { 0 };
    let mut nodes: Vec<Node> = Vec::with_capacity(count);
    for i in 0..node_count.max(0) {
        nodes.push(Node::new(i));
    }
    Graph {
        nodes,
        edges: Vec::new(),
    }
}
pub fn sssp(graph: &Graph, start: i32) -> i32 {
    let node_count = graph.nodes.len();
    let mut distances: Vec<i32> = vec![2147483647; node_count];
    distances[start as usize] = 0;
    for _iteration in 0..node_count.saturating_sub(1) {
        let mut updated = false;
        for edge in graph.edges.iter() {
            let from = edge.from as usize;
            let to = edge.to as usize;
            if distances[from] != 2147483647
                && distances[from].wrapping_add(edge.weight) < distances[to]
            {
                distances[to] = distances[from].wrapping_add(edge.weight);
                updated = true;
            }
        }
        if !updated {
            break;
        }
    }
    let mut reachable = 0;
    for i in 0..node_count {
        if distances[i] != 2147483647 {
            reachable += 1;
        }
    }
    reachable
}
pub fn freeGraph(graph: Graph) {
    // Taking ownership of the graph; all nodes' edges/weights vectors,
    // the nodes vector, and the edges vector are dropped automatically.
    let mut graph = graph;
    for node in graph.nodes.iter_mut() {
        node.edges = Vec::new();
        node.weights = Vec::new();
    }
    graph.nodes.clear();
    graph.edges.clear();
    drop(graph);
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

#[allow(non_upper_case_globals)]
#[allow(dead_code)]
pub const _SC_ARG_MAX: i32 = 0;
// ... (the remaining _SC_* constants stay unchanged)

#[allow(non_snake_case)]
pub fn parallelBellmanFord(_arg: Option<Box<dyn Any>>) -> Option<Box<dyn Any>> {
    None
}

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