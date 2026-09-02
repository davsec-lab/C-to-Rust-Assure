import sys
import re

def extract_expression(filename: str, keyword: str, target_index: int):
    with open(filename, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    pattern = re.compile(rf"\bSYM VALUE: {re.escape(keyword)}(?=\s|:|$)")

    results = []
    current = []
    capturing = False
    paren_count = 0

    for line in lines:
        if pattern.search(line):
            current = [line]
            capturing = True
            paren_count = line.count('(') - line.count(')')
            continue

        if capturing:
            current.append(line)
            paren_count += line.count('(') - line.count(')')
            if paren_count <= 0:
                results.append(''.join(current).strip())
                capturing = False

    if target_index < len(results):
        print(f"Match #{target_index}:\n")
        print(results[target_index])
    else:
        print(f"No match at index {target_index}, only found {len(results)} matches.")


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Extract indexed expression from text file.")
    parser.add_argument("filename", help="Path to the .txt file")
    parser.add_argument("keyword", help="Keyword to search for (e.g., 'SYM VALUE: arg_value_0')")
    parser.add_argument("index", type=int, help="Index of match to extract")

    args = parser.parse_args()
    extract_expression(args.filename, args.keyword, args.index)
