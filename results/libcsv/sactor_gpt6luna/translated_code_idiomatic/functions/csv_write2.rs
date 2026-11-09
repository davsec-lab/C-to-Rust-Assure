pub fn csv_write2(mut dest: Option<&mut [u8]>, src: Option<&[u8]>, quote: u8) -> usize {
    let Some(src) = src else {
        return 0;
    };
    let mut chars = 1usize;
    if let Some(buffer) = dest.as_deref_mut() {
        if let Some(slot) = buffer.first_mut() {
            *slot = quote;
        }
    }
    for &byte in src {
        if byte == quote {
            if let Some(buffer) = dest.as_deref_mut() {
                if let Some(slot) = buffer.get_mut(chars) {
                    *slot = quote;
                }
            }
            chars = chars.saturating_add(1);
        }
        if let Some(buffer) = dest.as_deref_mut() {
            if let Some(slot) = buffer.get_mut(chars) {
                *slot = byte;
            }
        }
        chars = chars.saturating_add(1);
    }
    if let Some(buffer) = dest.as_deref_mut() {
        if let Some(slot) = buffer.get_mut(chars) {
            *slot = quote;
        }
    }
    chars.saturating_add(1)
}
