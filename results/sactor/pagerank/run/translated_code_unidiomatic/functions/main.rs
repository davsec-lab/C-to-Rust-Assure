pub fn main() -> () {
    unsafe {
        let args: Vec<String> = std::env::args().collect();
        if args.len() != 2 {
            let a0 = std::ffi::CString::new(args.get(0).cloned().unwrap_or_default()).unwrap();
            libc::fprintf(
                stderr,
                b"Usage: %s <graph_file>\n\0".as_ptr() as *const libc::c_char,
                a0.as_ptr(),
            );
            libc::fprintf(
                stderr,
                b"  graph_file: Path to the graph edge list file\n\0".as_ptr()
                    as *const libc::c_char,
            );
            std::process::exit(1);
        }
        let filename_c = std::ffi::CString::new(args[1].clone()).unwrap();
        let filename: *const libc::c_char = filename_c.as_ptr();
        let fp = libc::fopen(filename, b"r\0".as_ptr() as *const libc::c_char);
        if fp.is_null() {
            libc::fprintf(
                stderr,
                b"[Error] Cannot open the file: %s\n\0".as_ptr() as *const libc::c_char,
                filename,
            );
            std::process::exit(1);
        }
        let mut n: libc::c_int = 0;
        let mut e: libc::c_int = 0;
        let mut str_buf: [libc::c_char; 256] = [0; 256];
        let mut ch: i32 = libc::fgetc(fp) as i8 as i32;
        while ch == '#' as i32 {
            if libc::fgets(str_buf.as_mut_ptr(), (256 - 1) as libc::c_int, fp).is_null() {
                break;
            }
            libc::sscanf(
                str_buf.as_ptr(),
                b"%*s %d %*s %d\0".as_ptr() as *const libc::c_char,
                &mut n as *mut libc::c_int,
                &mut e as *mut libc::c_int,
            );
            ch = libc::fgetc(fp) as i8 as i32;
        }
        if ch != -1 {
            libc::ungetc(ch, fp);
        }
        libc::printf(
            b"\nGraph data:\n\n  Nodes: %d, Edges: %d \n\n\0".as_ptr() as *const libc::c_char,
            n,
            e,
        );
        let val = libc::calloc(e as libc::size_t, std::mem::size_of::<f32>()) as *mut f32;
        let col_ind = libc::calloc(e as libc::size_t, std::mem::size_of::<i32>()) as *mut i32;
        let row_ptr = libc::calloc((n + 1) as libc::size_t, std::mem::size_of::<i32>()) as *mut i32;
        if val.is_null() || col_ind.is_null() || row_ptr.is_null() {
            libc::fprintf(
                stderr,
                b"Allocation failed\n\0".as_ptr() as *const libc::c_char,
            );
            libc::fclose(fp);
            std::process::exit(1);
        }
        let is_one_indexed = detect_indexing(filename);
        *row_ptr = 0;
        let mut fromnode: libc::c_int = 0;
        let mut tonode: libc::c_int = 0;
        let mut cur_row: i32 = 0;
        let mut i: i32 = 0;
        let mut elrow: i32 = 0;
        let mut curel: i32 = 0;
        let mut valid_edges: i32 = 0;
        while libc::feof(fp) == 0 {
            if libc::fscanf(
                fp,
                b"%d%d\0".as_ptr() as *const libc::c_char,
                &mut fromnode as *mut libc::c_int,
                &mut tonode as *mut libc::c_int,
            ) != 2
            {
                break;
            }
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
                let mut k = cur_row + 1;
                while k <= fromnode {
                    *row_ptr.add(k as usize) = curel;
                    k += 1;
                }
                elrow = 0;
                cur_row = fromnode;
            }
            if i < e {
                *val.add(i as usize) = 1.0f32;
                *col_ind.add(i as usize) = tonode;
                elrow += 1;
                i += 1;
            } else {
                break;
            }
        }
        *row_ptr.add((cur_row + 1) as usize) = curel + elrow;
        libc::printf(
            b"Valid edges processed: %d\n\0".as_ptr() as *const libc::c_char,
            valid_edges,
        );
        let out_link = libc::calloc(n as libc::size_t, std::mem::size_of::<i32>()) as *mut i32;
        if out_link.is_null() {
            libc::fprintf(
                stderr,
                b"Allocation failed\n\0".as_ptr() as *const libc::c_char,
            );
            libc::free(val as *mut libc::c_void);
            libc::free(col_ind as *mut libc::c_void);
            libc::free(row_ptr as *mut libc::c_void);
            libc::fclose(fp);
            std::process::exit(1);
        }
        let mut rowel: i32;
        i = 0;
        while i < n {
            if *row_ptr.add((i + 1) as usize) != 0 {
                rowel = *row_ptr.add((i + 1) as usize) - *row_ptr.add(i as usize);
                *out_link.add(i as usize) = rowel;
            }
            i += 1;
        }
        let mut curcol: i32 = 0;
        i = 0;
        while i < n {
            rowel = *row_ptr.add((i + 1) as usize) - *row_ptr.add(i as usize);
            let mut j = 0;
            while j < rowel {
                if *out_link.add(i as usize) > 0 {
                    *val.add(curcol as usize) =
                        *val.add(curcol as usize) / (*out_link.add(i as usize) as f32);
                }
                curcol += 1;
                j += 1;
            }
            i += 1;
        }
        let d: f32 = 0.85f32;
        let p = libc::calloc(n as libc::size_t, std::mem::size_of::<f32>()) as *mut f32;
        let p_new = libc::calloc(n as libc::size_t, std::mem::size_of::<f32>()) as *mut f32;
        if p.is_null() || p_new.is_null() {
            libc::fprintf(
                stderr,
                b"Allocation failed\n\0".as_ptr() as *const libc::c_char,
            );
            libc::free(val as *mut libc::c_void);
            libc::free(col_ind as *mut libc::c_void);
            libc::free(row_ptr as *mut libc::c_void);
            libc::free(out_link as *mut libc::c_void);
            libc::fclose(fp);
            std::process::exit(1);
        }
        i = 0;
        while i < n {
            *p.add(i as usize) = 1.0f32 / (n as f32);
            i += 1;
        }
        let mut looping = 1;
        let mut k_iter: i32 = 0;
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
        while looping != 0 {
            i = 0;
            while i < n {
                *p_new.add(i as usize) = 0.0f32;
                i += 1;
            }
            let mut curcol2: i32 = 0;
            i = 0;
            while i < n {
                let row_begin = *row_ptr.add(i as usize);
                let row_end = *row_ptr.add((i + 1) as usize);
                let row_cnt = row_end - row_begin;
                let mut j = 0;
                while j < row_cnt {
                    if curcol2 < valid_edges && *col_ind.add(curcol2 as usize) < n {
                        let c = *col_ind.add(curcol2 as usize) as usize;
                        *p_new.add(c) += *val.add(curcol2 as usize) * *p.add(i as usize);
                    }
                    curcol2 += 1;
                    j += 1;
                }
                i += 1;
            }
            i = 0;
            while i < n {
                *p_new.add(i as usize) = d * *p_new.add(i as usize) + (1.0f32 - d) / (n as f32);
                i += 1;
            }
            let mut error: f32 = 0.0f32;
            i = 0;
            while i < n {
                error += (*p_new.add(i as usize) - *p.add(i as usize)).abs();
                i += 1;
            }
            if error < 0.000001f32 {
                looping = 0;
            }
            i = 0;
            while i < n {
                *p.add(i as usize) = *p_new.add(i as usize);
                i += 1;
            }
            k_iter += 1;
        }
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
        let time_elapsed: f64 = diff_timespec(
            &mut end_time as *mut libc::timespec,
            &mut start_time as *mut libc::timespec,
        );
        libc::printf(
            b"Time taken for PageRank on graph %s (%d nodes, %d edges): %f seconds\n\0".as_ptr()
                as *const libc::c_char,
            filename,
            n,
            valid_edges,
            time_elapsed,
        );
        libc::printf(
            b"\nNumber of iteration to converge: %d \n\n\0".as_ptr() as *const libc::c_char,
            k_iter,
        );
        libc::printf(b"]\n\n\0".as_ptr() as *const libc::c_char);
        libc::free(val as *mut libc::c_void);
        libc::free(col_ind as *mut libc::c_void);
        libc::free(row_ptr as *mut libc::c_void);
        libc::free(out_link as *mut libc::c_void);
        libc::free(p as *mut libc::c_void);
        libc::free(p_new as *mut libc::c_void);
        libc::fclose(fp);
    }
}
