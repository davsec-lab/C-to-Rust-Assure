use std::fs::File;
use std::io::{BufRead, BufReader, Read};

pub type _IO_lock_t = ();
type __off64_t = i64;
type __off_t = i64;
type __syscall_slong_t = i64;
type __time_t = i64;


pub fn detect_indexing(filename: &str) -> i32 {
    let fp = match File::open(filename) {
        Ok(f) => f,
        Err(_) => return 1,
    };
    let mut reader = BufReader::new(fp);
    let mut min_node: i32 = 2147483647;
    let mut samples = 0;
    let mut line = String::new();
    while samples < 100 {
        line.clear();
        // fgets reads at most 255 bytes per call; for typical lines this is a full line
        match reader.read_line(&mut line) {
            Ok(0) => break,
            Ok(_) => {}
            Err(_) => break,
        }
        if line.starts_with('#') {
            continue;
        }
        let mut it = line.split_whitespace();
        let a = it.next().and_then(|s| s.parse::<i32>().ok());
        let b = it.next().and_then(|s| s.parse::<i32>().ok());
        if let (Some(fromnode), Some(tonode)) = (a, b) {
            if fromnode < min_node {
                min_node = fromnode;
            }
            if tonode < min_node {
                min_node = tonode;
            }
            samples += 1;
        }
    }
    let is_one_indexed = min_node != 0;
    println!(
        "Detected indexing: {} (min node ID: {})",
        if is_one_indexed { "1-indexed" } else { "0-indexed" },
        min_node
    );
    if is_one_indexed { 1 } else { 0 }
}
#[derive(Debug, Clone, Copy, Default)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

fn diff_timespec(time1: &timespec, time0: &timespec) -> f64 {
    (time1.tv_sec - time0.tv_sec) as f64
        + (time1.tv_nsec - time0.tv_nsec) as f64 / 1000000000.0
}

fn scan_int_bytes(data: &[u8], pos: &mut usize) -> Option<i32> {
    let mut p = *pos;
    while p < data.len() && (data[p] == b' ' || (data[p] >= 9 && data[p] <= 13)) {
        p += 1;
    }
    let mut neg = false;
    if p < data.len() && (data[p] == b'+' || data[p] == b'-') {
        neg = data[p] == b'-';
        p += 1;
    }
    let start = p;
    let mut v: i64 = 0;
    while p < data.len() && data[p].is_ascii_digit() {
        v = v.wrapping_mul(10).wrapping_add((data[p] - b'0') as i64);
        p += 1;
    }
    if p == start {
        *pos = p;
        return None;
    }
    *pos = p;
    Some((if neg { -v } else { v }) as i32)
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        eprintln!("Usage: {} <graph_file>", args.get(0).cloned().unwrap_or_default());
        eprintln!("  graph_file: Path to the graph edge list file");
        std::process::exit(1);
    }
    let filename: &str = &args[1];

    let mut data: Vec<u8> = Vec::new();
    match std::fs::File::open(filename) {
        Ok(mut f) => {
            let _ = f.read_to_end(&mut data);
        }
        Err(_) => {
            eprintln!("[Error] Cannot open the file: {}", filename);
            std::process::exit(1);
        }
    }

    let mut n: i32 = 0;
    let mut e: i32 = 0;
    let mut pos: usize = 0;
    // header parsing
    while pos < data.len() && data[pos] == b'#' {
        pos += 1;
        // fgets with size 255: at most 254 chars, stops after newline
        let mut end = pos;
        let mut cnt = 0;
        while end < data.len() && cnt < 254 {
            let c = data[end];
            end += 1;
            cnt += 1;
            if c == b'\n' {
                break;
            }
        }
        if end == pos {
            break; // fgets returned NULL
        }
        let line = String::from_utf8_lossy(&data[pos..end]).to_string();
        pos = end;
        let toks: Vec<&str> = line.split_whitespace().collect();
        // "%*s %d %*s %d"
        if toks.len() >= 2 {
            if let Ok(v) = toks[1].parse::<i32>() {
                n = v;
                if toks.len() >= 4 {
                    if let Ok(v2) = toks[3].parse::<i32>() {
                        e = v2;
                    }
                }
            }
        }
        if pos < data.len() {
            // ch = getc(fp) handled by loop condition
        } else {
            break;
        }
    }

    println!("\nGraph data:\n\n  Nodes: {}, Edges: {} \n", n, e);
    println!();

    let nu = if n > 0 { n as usize } else { 0 };
    let eu = if e > 0 { e as usize } else { 0 };
    let mut val: Vec<f32> = vec![0.0; eu];
    let mut col_ind: Vec<i32> = vec![0; eu];
    let mut row_ptr: Vec<i32> = vec![0; nu + 1];

    let is_one_indexed = detect_indexing(filename);

    row_ptr[0] = 0;

    let mut cur_row: i32 = 0;
    let mut i: usize = 0;
    let mut elrow: i32 = 0;
    let mut curel: i32 = 0;
    let mut valid_edges: i32 = 0;

    loop {
        let mut fromnode = match scan_int_bytes(&data, &mut pos) {
            Some(v) => v,
            None => break,
        };
        let mut tonode = match scan_int_bytes(&data, &mut pos) {
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
        if i < eu {
            val[i] = 1.0;
            col_ind[i] = tonode;
            elrow += 1;
            i += 1;
        } else {
            break;
        }
    }
    row_ptr[(cur_row + 1) as usize] = curel + elrow;

    println!("Valid edges processed: {}", valid_edges);

    let mut out_link: Vec<i32> = vec![0; nu];
    for i in 0..nu {
        if row_ptr[i + 1] != 0 {
            let rowel = row_ptr[i + 1] - row_ptr[i];
            out_link[i] = rowel;
        }
    }

    let mut curcol: usize = 0;
    for i in 0..nu {
        let rowel = row_ptr[i + 1] - row_ptr[i];
        for _ in 0..rowel.max(0) {
            if out_link[i] > 0 {
                val[curcol] = val[curcol] / out_link[i] as f32;
            }
            curcol += 1;
        }
    }

    let d: f32 = 0.85;
    let mut p: Vec<f32> = vec![0.0; nu];
    let mut p_new: Vec<f32> = vec![0.0; nu];
    for i in 0..nu {
        p[i] = 1.0f32 / (n as f32);
    }

    let mut looping = true;
    let mut k_iter: i32 = 0;

    let start_ts = timespec { tv_sec: 0, tv_nsec: 0 };
    let start_instant = std::time::Instant::now();

    while looping {
        for i in 0..nu {
            p_new[i] = 0.0;
        }

        let mut curcol2: i32 = 0;
        for i in 0..nu {
            let row_begin = row_ptr[i];
            let row_end = row_ptr[i + 1];
            let row_cnt = row_end - row_begin;
            for _ in 0..row_cnt.max(0) {
                if curcol2 < valid_edges && col_ind[curcol2 as usize] < n {
                    let c = col_ind[curcol2 as usize] as usize;
                    p_new[c] += val[curcol2 as usize] * p[i];
                }
                curcol2 += 1;
            }
        }

        for i in 0..nu {
            p_new[i] = d * p_new[i] + (1.0f32 - d) / (n as f32);
        }

        let mut error: f32 = 0.0;
        for i in 0..nu {
            error += (p_new[i] - p[i]).abs();
        }

        if error < 0.000001f32 {
            looping = false;
        }

        for i in 0..nu {
            p[i] = p_new[i];
        }
        k_iter += 1;
    }

    let el = start_instant.elapsed();
    let end_ts = timespec {
        tv_sec: el.as_secs() as i64,
        tv_nsec: el.subsec_nanos() as i64,
    };
    let time_elapsed = diff_timespec(&end_ts, &start_ts);

    println!(
        "Time taken for PageRank on graph {} ({} nodes, {} edges): {:.6} seconds",
        filename, n, valid_edges, time_elapsed
    );
    println!("\nNumber of iteration to converge: {} \n", k_iter);
    println!("]\n");
}