#!/usr/bin/env python3
import struct
import random
import os
import sys

def create_bmp_with_seed(filename, width, height, seed):
    """Create a BMP file with random colors based on seed"""
    random.seed(seed)

    # BMP constants
    bytes_per_pixel = 3
    row_size = width * bytes_per_pixel
    # Correct padding calculation matching the Rust code
    padding = ((24 * width + 31) // 32) * 4 - row_size
    image_size = height * (row_size + padding)
    file_size = 54 + image_size

    # BMP file header
    header = b'BM' + struct.pack('<L', file_size) + b'\x00\x00\x00\x00' + struct.pack('<L', 54)

    # DIB header (BITMAPINFOHEADER) - 40 bytes
    dib = struct.pack('<L', 40) + struct.pack('<L', width) + struct.pack('<L', height) + struct.pack('<H', 1) + struct.pack('<H', 24) + struct.pack('<L', 0) + struct.pack('<L', image_size) + struct.pack('<L', 0) + struct.pack('<L', 0) + struct.pack('<L', 0) + struct.pack('<L', 0)

    # Generate pixel data with seed-based randomization
    pixels = b''
    for y in range(height):
        row_data = b''
        for x in range(width):
            # Use seed + position for deterministic but varied colors
            r = (random.randint(0, 255) + seed + x + y) % 256
            g = (random.randint(0, 255) + seed * 2 + x) % 256
            b = (random.randint(0, 255) + seed * 3 + y) % 256
            row_data += bytes([b, g, r])  # BGR order for BMP
        pixels += row_data + b'\x00' * padding

    with open(filename, 'wb') as f:
        f.write(header + dib + pixels)

def main():
    if len(sys.argv) != 2:
        # Default to test_bmps in current directory if no argument provided
        output_dir = "./test_bmps"
    else:
        output_dir = sys.argv[1]

    os.makedirs(output_dir, exist_ok=True)

    width, height = 100, 100  # Reasonable size for testing

    print(f"Generating 10,000 BMP files in {output_dir}...")

    for seed in range(1, 10001):
        filename = os.path.join(output_dir, f"bmp_{seed:05d}.bmp")
        create_bmp_with_seed(filename, width, height, seed)

        if seed % 1000 == 0:
            print(f"Generated {seed}/10000 BMP files...")

    print("Done! Generated 10,000 synthetic BMP files.")

if __name__ == "__main__":
    main()