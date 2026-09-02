#![allow(unaligned_references)]
use std::io::{self, Write};

#[no_mangle]
fn csv_fwrite2<W: Write>(fp: Option<&mut W>, src: Option<&[u8]>, quote: u8) -> io::Result<()> {
    let fp = match fp {
        Some(fp) => fp,
        None => return Ok(()),
    };

    let src = match src {
        Some(src) => src,
        None => return Ok(()),
    };

    fp.write_all(&[quote])?;

    for &byte in src {
        if byte == quote {
            fp.write_all(&[quote])?;
        }
        fp.write_all(&[byte])?;
    }

    fp.write_all(&[quote])?;
    Ok(())
}

#[no_mangle]
fn main() {
    let mut output = Vec::new();
    let data = b"Hello, \"world\"!";
    let quote = b'"';

    if let Err(e) = csv_fwrite2(Some(&mut output), Some(data), quote) {
        eprintln!("Error writing to output: {}", e);
    } else {
        println!("Output: {:?}", String::from_utf8_lossy(&output));
    }
}
