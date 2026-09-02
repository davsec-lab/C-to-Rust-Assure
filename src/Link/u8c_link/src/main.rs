

#![allow(unaligned_references)]

use std::ptr;

//u8strlen has different function signature with u8next_
fn u8strlen(s: &str) -> usize {
    let mut len = 0;
    for &byte in s.as_bytes() {
        if (byte & 0xC0) != 0x80 {
            len += 1;
        }
    }
    len
}

#[no_mangle]
fn goto_l4(s: &mut *const u8, val: &mut i32) {
    *val <<= 6;
    if unsafe { **s } != 0 {
        *s = unsafe { s.add(1) };
    }
    *val |= (unsafe { **s } & 0x3F) as i32;
    goto_l3(s, val);
}

#[no_mangle]
fn goto_l3(s: &mut *const u8, val: &mut i32) {
    *val <<= 6;
    if unsafe { **s } != 0 {
        *s = unsafe { s.add(1) };
    }
    *val |= (unsafe { **s } & 0x3F) as i32;
}

#[no_mangle]
fn goto_l2() {}

//s is own, we change to borrow
fn u8encode_(ch: i32, s: &mut Option<&mut [u8]>) -> i32 {
    let mut len = -1;
    let mut t = [0u8; 8];

    let s: &mut [u8] = s
        .as_mut()
        .map(|b| &mut **b)
        .unwrap_or(&mut t);

    if ch == 0 {
        len = 2;
        s[0] = 0xC0;
        s[1] = 0x80;
    } else if ch < 0x80 {
        len = 1;
        s[0] = ch as u8;
    } else if ch < 0x0800 {
        len = 2;
        s[0] = 0xC0 | ((ch >> 6) as u8);
        s[1] = 0x80 | ((ch & 0x3F) as u8);
    } else if ch < 0x10000 {
        len = 3;
        s[0] = 0xE0 | ((ch >> 12) as u8);
        s[1] = 0x80 | (((ch >> 6) & 0x3F) as u8);
        s[2] = 0x80 | ((ch & 0x3F) as u8);
    } else if ch < 0x110000 {
        len = 4;
        s[0] = 0xF0 | ((ch >> 18) as u8);
        s[1] = 0x80 | (((ch >> 12) & 0x3F) as u8);
        s[2] = 0x80 | (((ch >> 6) & 0x3F) as u8);
        s[3] = 0x80 | ((ch & 0x3F) as u8);
    }
    s[len as usize] = 0;
    len
}

fn u8next_(txt: *const u8, ch: &mut i32) -> i32 {
    let mut len = 0;
    let mut s = txt;
    let first = unsafe { *s };
    let mut val = 0;
    if first != 0 {
        val = first as i32;
        'fsm_state_start: loop {
            if unsafe { *s } < 0x80 {
                len = 1;
                break 'fsm_state_start;
            }
            if unsafe { *s } == 0xC0 {
                len = 2;
                'fsm_state_null: loop {
                    val = 0;
                    s = unsafe { s.add(1) };
                    if unsafe { *s } != 0x80 {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    break 'fsm_state_start;
                }
            }
            if unsafe { *s } <= 0xC1 {
                len = -1;
                break 'fsm_state_start;
            }
            if unsafe { *s } <= 0xDF {
                val &= 0x1F;
                len = 2;
                'fsm_state_len2_0: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                    break 'fsm_state_start;
                }
            }
            if unsafe { *s } == 0xE0 {
                val &= 0x0F;
                len = 3;
                'fsm_state_len3_0: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0xA0 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len3: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len2_0: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                            break 'fsm_state_start;
                        }
                    }
                }
            }
            if unsafe { *s } <= 0xEC {
                val &= 0x0F;
                len = 3;
                'fsm_state_len3_1: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len3: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len2_0: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                            break 'fsm_state_start;
                        }
                    }
                }
            }
            if unsafe { *s } == 0xED {
                val &= 0x0F;
                len = 3;
                'fsm_state_len3_2: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0x9F < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len3: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len2_0: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                            break 'fsm_state_start;
                        }
                    }
                }
            }
            if unsafe { *s } <= 0xEF {
                val &= 0x0F;
                len = 3;
                'fsm_state_len3_1: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len3: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len2_0: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                            break 'fsm_state_start;
                        }
                    }
                }
            }
            if unsafe { *s } == 0xF0 {
                val &= 0x07;
                len = 4;
                'fsm_state_len4_0: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x90 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len4: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len3_1: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            'fsm_state_len3: loop {
                                val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                'fsm_state_len2_0: loop {
                                    s = unsafe { s.add(1) };
                                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                        len = -1;
                                        break 'fsm_state_start;
                                    }
                                    val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                    break 'fsm_state_start;
                                }
                            }
                        }
                    }
                }
            }
            if unsafe { *s } <= 0xF3 {
                val &= 0x07;
                len = 4;
                'fsm_state_len4_1: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len4: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len3_1: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            'fsm_state_len3: loop {
                                val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                'fsm_state_len2_0: loop {
                                    s = unsafe { s.add(1) };
                                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                        len = -1;
                                        break 'fsm_state_start;
                                    }
                                    val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                    break 'fsm_state_start;
                                }
                            }
                        }
                    }
                }
            }
            if unsafe { *s } == 0xF4 {
                val &= 0x07;
                len = 4;
                'fsm_state_len4_2: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0x8F < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len4: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len3_1: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            'fsm_state_len3: loop {
                                val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                'fsm_state_len2_0: loop {
                                    s = unsafe { s.add(1) };
                                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                        len = -1;
                                        break 'fsm_state_start;
                                    }
                                    val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                    break 'fsm_state_start;
                                }
                            }
                        }
                    }
                }
            }
            len = -1;
            break 'fsm_state_start;
        }
    }
    *ch = val;
    len
}

//gpt 4o
fn u8next_fast_4o(txt: *const u8, ch: &mut i32) -> i32 {
    let mut len = 0;
    let mut s = txt;
    let first = unsafe { *s };
    let mut val = 0;
    if first != 0 {
        val = first as i32;
        if first > 0x7F {
            s = unsafe { s.add(1) };
            val = unsafe { *s & 0x3F } as i32;
            if (first & 0xF8) == 0xF0 {
                val |= ((first & 0x07) as i32) << 6;
                goto_l4(&mut s, &mut val);
            } else if (first & 0xF0) == 0xE0 {
                val |= ((first & 0x0F) as i32) << 6;
                goto_l3(&mut s, &mut val);
            } else {
                val |= ((first & 0x1F) as i32) << 6;
                goto_l2();
            }
        }
        len = 1 + (s as isize - txt as isize) as i32;
    }
    *ch = val;
    len
}

// claude
// gabe fix : change ownership
fn u8next_fast_claude(txt: &str, ch: & mut Option<&mut i32>) -> usize {
    let mut len = 0;
    let s = txt.as_bytes();
    if let Some(&first) = s.get(0) {
        let mut val = first as i32;
        if first > 0x7F {
            let mut i = 1;
            val = (s[i] & 0x3F) as i32;
            if (first & 0xF8) == 0xF0 {
                val |= (first as i32 & 0x07) << 6;
                val <<= 6;
                i += 1;
                if let Some(&byte) = s.get(i) {
                    val |= (byte & 0x3F) as i32;
                }
                val <<= 6;
                i += 1;
                if let Some(&byte) = s.get(i) {
                    val |= (byte & 0x3F) as i32;
                }
            } else if (first & 0xF0) == 0xE0 {
                val |= (first as i32 & 0x0F) << 6;
                val <<= 6;
                i += 1;
                if let Some(&byte) = s.get(i) {
                    val |= (byte & 0x3F) as i32;
                }
            } else {
                val |= (first as i32 & 0x1F) << 6;
            }
            len = i + 1;
        } else {
            len = 1;
        }

        // if let Some(ch_ref) = ch {
        //     *ch_ref = val;
        // }
        // gabe fix : change ownership
        let inner = ch.as_mut().map(|b| &mut **b).unwrap();
        *inner = val;
    }
    len
}

// gpt 4o mini
fn u8next_fast_mini(txt: &str, ch: &mut Option<i32>) -> usize {
    let mut len = 0;
    let mut val = 0;
    let mut chars = txt.chars();

    if let Some(first) = chars.next() {
        val = first as i32; // Convert char to i32
        if first > '\u{007F}' {
            if let Some(next) = chars.next() {
                val = (next as i32) & 0x3F;
                if (first as u32 & 0xF8) == 0xF0 {
                    val |= ((first as i32 & 0x07) << 6);
                } else if (first as u32 & 0xF0) == 0xE0 {
                    val |= ((first as i32 & 0x0F) << 6);
                } else {
                    val |= ((first as i32 & 0x1F) << 6);
                }
            }
            // Handle additional bytes if necessary
            if (first as u32 & 0xF8) == 0xF0 {
                if let Some(next) = chars.next() {
                    val <<= 6;
                    val |= (next as i32 & 0x3F);
                }
            } else if (first as u32 & 0xF0) == 0xE0 {
                if let Some(next) = chars.next() {
                    val <<= 6;
                    val |= (next as i32 & 0x3F);
                }
            } else {
                // Handle the case for 2-byte sequences
            }
        }
        len = 1 + txt.chars().count() - chars.count();
    }

    if let Some(ch_ref) = ch {
        *ch_ref = val;
    }
    len
}

fn u8strncpy<'a>(dest: &'a mut [u8], src: &[u8], n: usize) -> &'a mut [u8] {
    if n == 0 {
        return dest;
    }

    let k = n - 1;
    let len = src.len().min(n);



    //bug#1 : order...
    // Null-terminate the destination
    dest[k] = 0;

    // Copy up to `n` bytes from `src` to `dest`
    dest[..len].copy_from_slice(&src[..len]);



    // Check if the last byte is part of a multi-byte UTF-8 sequence
    if dest[k] & 0x80 != 0 {
        let mut i = k;
        while i > 0 && (k - i) < 3 && (dest[i] & 0xC0) == 0x80 {
            i -= 1;
        }
        match k - i {
            0 => dest[i] = 0,
            1 => if (dest[i] & 0xE0) != 0xC0 { dest[i] = 0 },
            2 => if (dest[i] & 0xF0) != 0xE0 { dest[i] = 0 },
            3 => if (dest[i] & 0xF8) != 0xF0 { dest[i] = 0 },
            _ => {}
        }
    }

    dest
}

fn u8strncat<'a>(dest: &'a mut [u8], src: &[u8], n: usize) -> &'a mut [u8] {
    let mut dest_len = 0;
    // Find the end of the current string in dest
    while dest_len < dest.len() && dest[dest_len] != 0 {
        dest_len += 1;
    }

    // Copy up to n bytes from src to dest
    let mut i = 0;
    while i < n && i < src.len() && dest_len + i < dest.len() {
        dest[dest_len + i] = src[i];
        i += 1;
    }

    // Null-terminate the result if there's space
    if dest_len + i < dest.len() {
        dest[dest_len + i] = 0;
    }

    dest
}

fn test_01() {
    let data_slice_pointer = [
        b"Aa\0".as_ptr(),
        "èa\0".as_bytes().as_ptr(),
        "会員\0".as_bytes().as_ptr(),
        "𧀀𧀍\0".as_bytes().as_ptr(),
    ];
    let data_str: [&str; 4] = [
        "Aa",
        "èa",
        "会員",
        "𧀀𧀍",
    ];
    let mut ch = 0;
    for (k, &s) in data_slice_pointer.iter().enumerate() {
        let mut ch = 0;
        let l  = unsafe { u8next_(s, &mut ch) };
        if (l != (k + 1) as i32) {
            println!("wrong length")
        }

        //In Rust, &mut i32 cannot be null, so it does not need to be tested?
        // let l2 = unsafe { u8next_(s, ptr::null() as &mut i32) };
        // if (l2 != l) {
        //     println!("wrong length")
        // }
    }
    for (i, s) in data_str.iter().enumerate() {
        let length = u8strlen(s);
        if (length != 2) {
            println!("wrong length (code point)")
        }
    }
}

fn test_02() {
    let data_slice_pointer = [
        b"Aa\0".as_ptr(),
        "èa\0".as_bytes().as_ptr(),
        "会員\0".as_bytes().as_ptr(),
        "𧀀𧀍\0".as_bytes().as_ptr(),
    ];

    let data_str: [&str; 4] = [
        "Aa",
        "èa",
        "会員",
        "𧀀𧀍",
    ];

    let expected_code_point = [
        0x41,
        0xE8,
        0x4F1A,
        0x27000
    ];

    let mut ch = 0;
    //for gpt 4o
    for (k, &s) in data_slice_pointer.iter().enumerate() {
        let mut ch = 0;
        let l  = unsafe { u8next_(s, &mut ch) };
        if (l != (k + 1) as i32) {
            println!("wrong length")
        }
        if (ch != expected_code_point[k]) {
            println!("wrong code point")
        }

        let l2 = u8next_fast_4o(s, &mut ch);
        if (l2 != (k + 1) as i32) {
            println!("(fast) wrong length")
        }
        if (ch != expected_code_point[k]) {
            println!("(fast) wrong code point")
        }
    }

    //for gpt 4o mini wrong u8next_fast
    for (k, &s) in data_str.iter().enumerate() {
        let mut my_ch: Option<i32> = Some(-1);
        let p = &mut my_ch;
        let l2 = u8next_fast_mini(s, p);
        if (l2 != (k + 1)) {
            println!("wrong length")
        }
        if let Some(ch) = p {
            if (*ch != expected_code_point[k]) {
                println!("wrong code point")
            }
        }
    }

    //for claude wrong u8next_fast
    for (k, &s) in data_str.iter().enumerate() {
        let mut value: i32 = -1;
        let ref_mut: &mut i32 = &mut value;
        let mut p: Option<&mut i32> = Some(ref_mut);

        let l2 = u8next_fast_claude(s, & mut p);
        if (l2 != (k + 1)) {
            println!("wrong length")
        }
        if let Some(ch) = p {
            if (*ch != expected_code_point[k]) {
                println!("wrong code point")
            }
        }
    }
}

//performence test, ignore for now
fn test_03() {}

fn test_04() {
    let data_slice_pointer = [
        b"Aa\0".as_ptr(),
        "èa\0".as_bytes().as_ptr(),
        "会員\0".as_bytes().as_ptr(),
        "𧀀𧀍\0".as_bytes().as_ptr(),
    ];
    let data_slice= [
        b"Aa\0",
        "èa\0".as_bytes(),
        "会員\0".as_bytes(),
        "𧀀𧀍\0".as_bytes(),
    ];
    let mut ch = 0;
    let mut buf = [0u8; 8];
    for (k, &s) in data_slice_pointer.iter().enumerate() {
        let mut ch = 0;
        let l  = unsafe { u8next_(s, &mut ch) };
        if (l != (k + 1) as i32) {
            println!("wrong length")
        }

        let l2 =  {
            let mut opt_buf: Option<&mut [u8]> = Some(&mut buf[..]);
            u8encode_(ch, &mut opt_buf)
        };

        if (l2 != l) {
            println!("wrong length (encode error)")
        }

        //buf != data_slice[k] will create a reference for buf, so we need to drop mutable reference.....
        let n = l as usize;
        if buf[..n] != data_slice[k][..n] {
            println!("encode data not same");
        }
        if (buf[n] != 0) {
            println!("encode data not terminated with 0");
        }
    }
}

fn test_05() {

    //case 1
    let t = "bèa\0".as_bytes();
    let mut buf = [0u8; 9];
    buf[0] = 0;
    u8strncpy(& mut buf, t, 8);
    for i in 0..5 {
        if (buf[i] != t[i]) {
            println!("wrong length u8nstrcpy failed")
        }
    }

    //case 2
    let t = "bèa\0".as_bytes();
    buf[0] = 0;
    u8strncpy(& mut buf, t, 3);
    for i in 0..3 {
        if (buf[i] != t[i]) {
            println!("wrong length u8nstrcpy failed")
        }
    }

    //case 3
    let t = "bèa\0".as_bytes();
    buf[0] = 0;
    u8strncpy(& mut buf, t, 2);
    if (buf[0] != t[0]) {
        println!("wrong length u8nstrcpy failed")
    }
    if (buf[1] != 0) {
        println!("wrong length u8nstrcpy failed")
    }

    //case4
    let t = "èa\0".as_bytes();
    buf[0] = 0;
    u8strncpy(& mut buf, t, 2);
    for i in 0..2 {
        if (buf[i] != t[i]) {
            println!("wrong length u8nstrcpy failed")
        }
    }

    //case5
    let t = "èa\0".as_bytes();
    buf[0] = 0;
    u8strncpy(& mut buf, t, 1);
    if buf[0] != 0 {
        println!("wrong length u8nstrcpy failed")
    }

    //case6
    let t = "𧀀𧀍\0".as_bytes();
    buf[0] = 0;
    u8strncpy(& mut buf, t, 8);
    for i in 0..8 {
        if (buf[i] != t[i]) {
            println!("wrong length u8nstrcpy failed")
        }
    }

    //case7
    buf[0] = 0;
    u8strncpy(& mut buf, t, 7);
    for i in 0..4 {
        if (buf[i] != t[i]) {
            println!("wrong length u8nstrcpy failed")
        }
    }
    if (buf[4] != 0) {
        println!("wrong terminate")
    }

    //case8
    buf[0] = 0;
    u8strncpy(& mut buf, t, 3);
    if (buf[0] != 0) {
        println!("wrong terminate")
    }

}

fn test_06() {
    let mut dest = [b'a', b'b', b'c', b'd', 0, b'e', b'A', b'E', b'Z'];
    let mut out_put = [b'a', b'b', b'c', b'd', b'e', b'f'];
    let src = [b'e', b'f'];
    u8strncat(& mut dest, & src, 2);
    if &dest[..out_put.len()] != &out_put {
        println!("wrong dest");
    }
    if dest[6] != 0 {
        println!("wrong dest")
    }

    dest = [b'a', b'b', b'c', b'd', 0, b'e', b'A', b'B', b'Z'];
    let src_2 = [b'e', b'f', b'g', b'h'];
    let mut out_put_2 = [b'a', b'b', b'c', b'd', b'e', b'f', b'g', b'h'];
    u8strncat(& mut dest, & src_2, 4);
    if &dest[..out_put_2.len()] != &out_put_2 {
        println!("wrong dest");
    }

    if dest[7] == 0 {
        println!("wrong dest")
    }

    if dest[8] != 0 {
        println!("wrong dest")
    }
}

// target at "u8stricmp", but this function cannot be compiled
fn test_07() {

}

fn main() {
    // test_01();
    // test_02();
    // test_03();
    // test_04();
    // test_05();
    // test_06();
    // test_07();
}