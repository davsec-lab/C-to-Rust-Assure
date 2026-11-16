pub fn bmp_header_write<W: std::io::Write>(
    header: &_bmp_header,
    img_file: &mut W,
) -> BmpResult<()> {
    let magic: u16 = 19778;
    let mut buf: Vec<u8> = Vec::with_capacity(54);
    buf.extend_from_slice(&magic.to_le_bytes());
    buf.extend_from_slice(&header.bfSize.to_le_bytes());
    buf.extend_from_slice(&header.bfReserved.to_le_bytes());
    buf.extend_from_slice(&header.bfOffBits.to_le_bytes());
    buf.extend_from_slice(&header.biSize.to_le_bytes());
    buf.extend_from_slice(&header.biWidth.to_le_bytes());
    buf.extend_from_slice(&header.biHeight.to_le_bytes());
    buf.extend_from_slice(&header.biPlanes.to_le_bytes());
    buf.extend_from_slice(&header.biBitCount.to_le_bytes());
    buf.extend_from_slice(&header.biCompression.to_le_bytes());
    buf.extend_from_slice(&header.biSizeImage.to_le_bytes());
    buf.extend_from_slice(&header.biXPelsPerMeter.to_le_bytes());
    buf.extend_from_slice(&header.biYPelsPerMeter.to_le_bytes());
    buf.extend_from_slice(&header.biClrUsed.to_le_bytes());
    buf.extend_from_slice(&header.biClrImportant.to_le_bytes());
    img_file.write_all(&buf).map_err(|_| BmpError::Error)?;
    Ok(())
}
