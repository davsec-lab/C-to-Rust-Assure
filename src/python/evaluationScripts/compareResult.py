import pandas as pd

import pandas as pd


import pandas as pd
import os

def compare_csv(file1, file2, output_file):
    df1 = pd.read_csv(file1)
    df2 = pd.read_csv(file2)

    all_columns = set(df1.columns).union(set(df2.columns))

    for col in all_columns:
        if col not in df1.columns:
            df1[col] = None
        if col not in df2.columns:
            df2[col] = None

    df1 = df1[list(all_columns)]
    df2 = df2[list(all_columns)]

    df1['source'] = 'file1'
    df2['source'] = 'file2'

    merged_df = pd.concat([df1, df2])
    diff_df = merged_df.drop_duplicates(subset=list(all_columns), keep=False)

    df1_diff = diff_df[diff_df['source'] == 'file1'].drop(columns=['source']).reset_index(drop=True)
    df2_diff = diff_df[diff_df['source'] == 'file2'].drop(columns=['source']).reset_index(drop=True)

    max_len = max(len(df1_diff), len(df2_diff))
    df1_diff = df1_diff.reindex(range(max_len))
    df2_diff = df2_diff.reindex(range(max_len))


    df1_diff = df1_diff.add_prefix('file1_')
    df2_diff = df2_diff.add_prefix('file2_')

    result_df = pd.concat([df1_diff, df2_diff], axis=1)


    result_df.to_csv(output_file, index=False)

    print(f"Comparison completed. Differences saved in {output_file}")



if __name__ == '__main__':
    compare_csv("/Users/gab/repo/evaluation/Analysis-libbmp/gpt-4o/Vfree/libbmp_gpt_4o_20250305_2025-03-05_22-39-22/edit_distance/best_edit_distances.csv",
                "/Users/gab/repo/evaluation/Analysis-libbmp/gpt-4o/V3/edit_distance/best_edit_distances.csv",
                "/Users/gab/repo/evaluation/result.csv")