pub fn main() -> () {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        let a0 = args.get(0).cloned().unwrap_or_default();
        eprintln!("Usage: {} <graph_file>", a0);
        eprintln!("  graph_file: Path to the graph edge list file");
        std::process::exit(1);
    }
    let filename: &str = &args[1];
    let bytes = match std::fs::read(filename) {
        Ok(b) => b,
        Err(_) => {
            eprintln!("[Error] Cannot open the file: {}", filename);
            std::process::exit(1);
        }
    };
    let text = String::from_utf8_lossy(&bytes).to_string();
    let mut n: i32 = 0;
    let mut e: i32 = 0;
    let mut rest: &str = &text;
    while rest.starts_with('#') {
        let (line, remainder) = match rest.find('\n') {
            Some(p) => (&rest[1..p], &rest[p + 1..]),
            None => (&rest[1..], ""),
        };
        let toks: Vec<&str> = line.split_whitespace().collect();
        if let Some(v) = toks.get(1).and_then(|t| t.parse::<i32>().ok()) {
            n = v;
            if let Some(v2) = toks.get(3).and_then(|t| t.parse::<i32>().ok()) {
                e = v2;
            }
        }
        rest = remainder;
    }
    println!("\nGraph data:\n\n  Nodes: {}, Edges: {} \n", n, e);
    let n_us = n.max(0) as usize;
    let e_us = e.max(0) as usize;
    let mut val: Vec<f32> = vec![0.0; e_us];
    let mut col_ind: Vec<i32> = vec![0; e_us];
    let mut row_ptr: Vec<i32> = vec![0; n_us + 1];
    let is_one_indexed = detect_indexing(filename);
    row_ptr[0] = 0;
    let mut cur_row: i32 = 0;
    let mut i: i32 = 0;
    let mut elrow: i32 = 0;
    let mut curel: i32 = 0;
    let mut valid_edges: i32 = 0;
    let mut it = rest.split_whitespace();
    loop {
        let mut fromnode = match it.next().and_then(|t| t.parse::<i32>().ok()) {
            Some(v) => v,
            None => break,
        };
        let mut tonode = match it.next().and_then(|t| t.parse::<i32>().ok()) {
            Some(v) => v,
            None => break,
        };
        if is_one_indexed != 0 {
            fromnode -= 1;
            tonode -= 1;
        }
        if fromnode >= n || tonode >= n || fromnode < 0 || tonode < 0 {
            continue;
        }
        valid_edges += 1;
        if fromnode > cur_row {
            curel += elrow;
            for k in (cur_row + 1)..=fromnode {
                row_ptr[k as usize] = curel;
            }
            elrow = 0;
            cur_row = fromnode;
        }
        if i < e {
            val[i as usize] = 1.0;
            col_ind[i as usize] = tonode;
            elrow += 1;
            i += 1;
        } else {
            break;
        }
    }
    if let Some(slot) = row_ptr.get_mut((cur_row + 1) as usize) {
        *slot = curel + elrow;
    }
    println!("Valid edges processed: {}", valid_edges);
    let mut out_link: Vec<i32> = vec![0; n_us];
    for i in 0..n_us {
        if row_ptr[i + 1] != 0 {
            out_link[i] = row_ptr[i + 1] - row_ptr[i];
        }
    }
    let mut curcol: usize = 0;
    for i in 0..n_us {
        let rowel = row_ptr[i + 1] - row_ptr[i];
        for _ in 0..rowel.max(0) {
            if out_link[i] > 0 {
                if let Some(v) = val.get_mut(curcol) {
                    *v = *v / (out_link[i] as f32);
                }
            }
            curcol += 1;
        }
    }
    let d: f32 = 0.85;
    let mut p: Vec<f32> = vec![0.0; n_us];
    let mut p_new: Vec<f32> = vec![0.0; n_us];
    for x in p.iter_mut() {
        *x = 1.0 / (n as f32);
    }
    let mut looping = true;
    let mut k_iter: i32 = 0;
    let start = std::time::Instant::now();
    while looping {
        for x in p_new.iter_mut() {
            *x = 0.0;
        }
        let mut curcol2: i32 = 0;
        for i in 0..n_us {
            let row_cnt = row_ptr[i + 1] - row_ptr[i];
            for _ in 0..row_cnt.max(0) {
                if curcol2 < valid_edges {
                    if let (Some(&c), Some(&v)) =
                        (col_ind.get(curcol2 as usize), val.get(curcol2 as usize))
                    {
                        if c < n && c >= 0 {
                            p_new[c as usize] += v * p[i];
                        }
                    }
                }
                curcol2 += 1;
            }
        }
        for x in p_new.iter_mut() {
            *x = d * *x + (1.0 - d) / (n as f32);
        }
        let mut error: f32 = 0.0;
        for i in 0..n_us {
            error += (p_new[i] - p[i]).abs();
        }
        if error < 0.000001 {
            looping = false;
        }
        p.copy_from_slice(&p_new);
        k_iter += 1;
    }
    let elapsed = start.elapsed();
    let time_elapsed: f64 = diff_timespec(
        (elapsed.as_secs() as i64, elapsed.subsec_nanos() as i64),
        (0, 0),
    );
    println!(
        "Time taken for PageRank on graph {} ({} nodes, {} edges): {:.6} seconds",
        filename, n, valid_edges, time_elapsed
    );
    println!("\nNumber of iteration to converge: {} \n", k_iter);
    println!("]\n");
}
