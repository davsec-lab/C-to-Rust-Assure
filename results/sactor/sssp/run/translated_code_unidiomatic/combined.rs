#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Node {
    pub id: libc::c_int,
    pub edges: *mut libc::c_int,
    pub weights: *mut libc::c_int,
    pub edge_count: libc::c_int,
    pub capacity: libc::c_int,
}
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Graph {
    pub nodes: *mut Node,
    pub node_count: libc::c_int,
    pub edges: *mut Edge,
    pub edge_count: libc::c_int,
    pub capacity: libc::c_int,
}
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Edge {
    pub from: libc::c_int,
    pub to: libc::c_int,
    pub weight: libc::c_int,
}
pub unsafe fn createGraph(node_count: libc::c_int) -> *mut Graph {
    let graph = libc::malloc(std::mem::size_of::<Graph>()) as *mut Graph;
    (*graph).nodes =
        libc::malloc((node_count as usize).wrapping_mul(std::mem::size_of::<Node>())) as *mut Node;
    (*graph).node_count = node_count;
    (*graph).edges = std::ptr::null_mut();
    (*graph).edge_count = 0;
    (*graph).capacity = 0;
    let mut i: libc::c_int = 0;
    while i < node_count {
        let node = (*graph).nodes.offset(i as isize);
        (*node).id = i;
        (*node).edges = std::ptr::null_mut();
        (*node).weights = std::ptr::null_mut();
        (*node).edge_count = 0;
        (*node).capacity = 0;
        i += 1;
    }
    graph
}
pub unsafe fn addEdge(graph: *mut Graph, from: libc::c_int, to: libc::c_int, weight: libc::c_int) {
    let node: *mut Node = (*graph).nodes.offset(from as isize);
    if (*node).edge_count >= (*node).capacity {
        (*node).capacity = if (*node).capacity == 0 {
            4
        } else {
            (*node).capacity * 2
        };
        (*node).edges = libc::realloc(
            (*node).edges as *mut libc::c_void,
            ((*node).capacity as usize) * std::mem::size_of::<libc::c_int>(),
        ) as *mut libc::c_int;
        (*node).weights = libc::realloc(
            (*node).weights as *mut libc::c_void,
            ((*node).capacity as usize) * std::mem::size_of::<libc::c_int>(),
        ) as *mut libc::c_int;
    }
    *(*node).edges.offset((*node).edge_count as isize) = to;
    *(*node).weights.offset((*node).edge_count as isize) = weight;
    (*node).edge_count += 1;
    if (*graph).edge_count >= (*graph).capacity {
        (*graph).capacity = if (*graph).capacity == 0 {
            1000
        } else {
            (*graph).capacity * 2
        };
        (*graph).edges = libc::realloc(
            (*graph).edges as *mut libc::c_void,
            ((*graph).capacity as usize) * std::mem::size_of::<Edge>(),
        ) as *mut Edge;
    }
    let e: *mut Edge = (*graph).edges.offset((*graph).edge_count as isize);
    (*e).from = from;
    (*e).to = to;
    (*e).weight = weight;
    (*graph).edge_count += 1;
}
pub unsafe fn generateRandomGraph(graph: *mut Graph) {
    let n: libc::c_int = (*graph).node_count;
    let mut i: libc::c_int = 0;
    while i < n {
        let mut j: libc::c_int = i + 1;
        while j < n {
            if libc::rand() % 1000000 < 500000 {
                let weight: libc::c_int = (libc::rand() % 100) + 1;
                addEdge(graph, i, j, weight);
                addEdge(graph, j, i, weight);
            }
            j += 1;
        }
        i += 1;
    }
}
pub unsafe fn parallelBellmanFord(arg: *mut libc::c_void) -> *mut libc::c_void {
    let _ = arg;
    std::ptr::null_mut()
}
pub unsafe fn sssp(graph: *mut Graph, start: libc::c_int) -> libc::c_int {
    let g = &*graph;
    let inf: libc::c_int = libc::c_int::MAX;
    let distances = libc::malloc((g.node_count as usize) * std::mem::size_of::<libc::c_int>())
        as *mut libc::c_int;
    let mut i: libc::c_int = 0;
    while i < g.node_count {
        *distances.offset(i as isize) = inf;
        i += 1;
    }
    *distances.offset(start as isize) = 0;
    let mut iteration: libc::c_int = 0;
    while iteration < g.node_count - 1 {
        let mut updated = false;
        let mut j: libc::c_int = 0;
        while j < g.edge_count {
            let edge = &*g.edges.offset(j as isize);
            let df = *distances.offset(edge.from as isize);
            if df != inf && df.wrapping_add(edge.weight) < *distances.offset(edge.to as isize) {
                *distances.offset(edge.to as isize) = df.wrapping_add(edge.weight);
                updated = true;
            }
            j += 1;
        }
        if !updated {
            break;
        }
        iteration += 1;
    }
    let mut reachable: libc::c_int = 0;
    let mut k: libc::c_int = 0;
    while k < g.node_count {
        if *distances.offset(k as isize) != inf {
            reachable += 1;
        }
        k += 1;
    }
    libc::free(distances as *mut libc::c_void);
    reachable
}
pub unsafe fn freeGraph(graph: *mut Graph) {
    let mut i: libc::c_int = 0;
    while i < (*graph).node_count {
        let node = (*graph).nodes.offset(i as isize);
        libc::free((*node).edges as *mut libc::c_void);
        libc::free((*node).weights as *mut libc::c_void);
        i += 1;
    }
    libc::free((*graph).nodes as *mut libc::c_void);
    libc::free((*graph).edges as *mut libc::c_void);
    libc::free(graph as *mut libc::c_void);
}
pub unsafe fn diff_timespec(time1: *mut libc::timespec, time0: *mut libc::timespec) -> f64 {
    let sec = (*time1).tv_sec.wrapping_sub((*time0).tv_sec);
    let nsec = (*time1).tv_nsec.wrapping_sub((*time0).tv_nsec);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
pub fn main() {
    let args: Vec<String> = std::env::args().collect();
    let argc = args.len();
    if !(2..=3).contains(&argc) {
        println!("Usage: {} <number_of_nodes>", args[0]);
        std::process::exit(1);
    }
    let size: libc::c_int = {
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
            v = -v;
        }
        v as libc::c_int
    };
    if size <= 0 {
        println!("Invalid number of nodes. Please enter a positive integer.");
        std::process::exit(1);
    }
    unsafe {
        libc::srand(10000);
        let graph = createGraph(size);
        generateRandomGraph(graph);
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
        let reachable = sssp(graph, 0);
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
        let time_elapsed = diff_timespec(&mut end_time, &mut start_time);
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
}
