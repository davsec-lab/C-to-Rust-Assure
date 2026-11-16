pub fn main() -> () {
    let args: Vec<String> = std::env::args().collect();
    let argc = args.len();
    if argc < 2 || argc > 3 {
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
