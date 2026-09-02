import os
import shutil


current_dir = os.getcwd()

for item in os.listdir(current_dir):
    item_path = os.path.join(current_dir, item)
    try:
        if os.path.abspath(item_path) == os.path.abspath(__file__):
            continue
        if os.path.isfile(item_path) or os.path.islink(item_path):
            os.unlink(item_path)
        elif os.path.isdir(item_path):
            shutil.rmtree(item_path)
    except Exception as e:
        print("fail")

open(os.path.join(current_dir, 'c.c'), 'w').close()
open(os.path.join(current_dir, 'r.rs'), 'w').close()
open(os.path.join(current_dir, 'test.txt'), 'w').close()
open(os.path.join(current_dir, 'r.ll'), 'w').close()

