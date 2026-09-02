#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <limits.h>

// Function to detect if the graph uses 0-indexed or 1-indexed nodes
int detect_indexing(const char *filename) {
    FILE *fp = fopen(filename, "r");
    if (!fp) {
        return 1; // Default to 1-indexed if can't open file
    }

    int min_node = INT_MAX;
    int samples = 0;
    char line[256];

    while (fgets(line, sizeof(line), fp) && samples < 100) {
        if (line[0] == '#') {
            continue; // Skip header lines
        }

        int fromnode, tonode;
        if (sscanf(line, "%d %d", &fromnode, &tonode) == 2) {
            if (fromnode < min_node) {
                min_node = fromnode;
            }
            if (tonode < min_node) {
                min_node = tonode;
            }
            samples++;
        }
    }

    fclose(fp);

    // If minimum node ID is 0, graph is 0-indexed
    // If minimum node ID is 1, graph is 1-indexed
    int is_one_indexed = (min_node != 0);
    printf("Detected indexing: %s (min node ID: %d)\n",
           is_one_indexed ? "1-indexed" : "0-indexed", min_node);

    return is_one_indexed;
}

/* Correctness checksum over the converged PageRank vector.
 *
 * Each value is quantised before hashing — scaled by n (so per-node values
 * are O(1) regardless of graph size) then by 1e6 (six decimal places of
 * precision). This is well within float's ~7 significant digits and is
 * robust to minor FP reordering between C and the translated implementation;
 * the convergence threshold in pagerank_roi is 1e-6, so anything below that
 * is noise. Real divergence (wrong damping, missing edges, off-by-one) still
 * shifts values by orders of magnitude and breaks the hash. */
static void print_pagerank_checksum(const float *p, int n)
{
    unsigned long long checksum = 0;
    for (int i = 0; i < n; i++) {
        long long q = (long long)((double)p[i] * (double)n * 1000000.0 + 0.5);
        unsigned long long bits = (unsigned long long)q;
        for (int b = 0; b < 8; b++) {
            checksum = checksum * 131u + (unsigned long long)((bits >> (b * 8)) & 0xFFu);
        }
    }
    printf("Checksum: %llu\n", checksum);
}

int pagerank_roi(int n, int valid_edges, float *val, const int *col_ind,
                 const int *row_ptr, int *out_link, float *p, float *p_new)
{
    float d = 0.85f;
    int looping = 1;
    int k_iter = 0;
    int i;
    int rowel = 0;

    for (i = 0; i < n; i++) {
        if (row_ptr[i + 1] != 0) {
            rowel = row_ptr[i + 1] - row_ptr[i];
            out_link[i] = rowel;
        }
    }

    int curcol = 0;
    for (i = 0; i < n; i++) {
        rowel = row_ptr[i + 1] - row_ptr[i];
        for (int j = 0; j < rowel; j++) {
            if (out_link[i] > 0) {
                val[curcol] = val[curcol] / out_link[i];
            }
            curcol++;
        }
    }

    while (looping) {
        // reset p_new
        for (i = 0; i < n; i++) p_new[i] = 0.0f;

        int curcol2 = 0;
        for (i = 0; i < n; i++) {
            int row_begin = row_ptr[i];
            int row_end   = row_ptr[i + 1];
            int row_cnt   = row_end - row_begin;
            for (int j = 0; j < row_cnt; j++) {
                if (curcol2 < valid_edges && col_ind[curcol2] < n) {
                    p_new[col_ind[curcol2]] += val[curcol2] * p[i];
                }
                curcol2++;
            }
        }

        // damping
        for (i = 0; i < n; i++) {
            p_new[i] = d * p_new[i] + (1.0f - d) / (float)n;
        }

        // convergence check
        float error = 0.0f;
        for (i = 0; i < n; i++) error += fabsf(p_new[i] - p[i]);

        if (error < 0.000001f) {
            looping = 0;
        }

        // update
        for (i = 0; i < n; i++) p[i] = p_new[i];
        k_iter++;
    }

    return k_iter;
}

int main(int argc, char *argv[])
{
    /*************************** TIME, VARIABLES ***************************/

    // Check CLI arguments
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <graph_file>\n", argv[0]);
        fprintf(stderr, "  graph_file: Path to the graph edge list file\n");
        exit(1);
    }

    char *filename = argv[1];

    /******************* OPEN FILE + NUM OF NODES/EDGES ********************/

    // Open the data set
    FILE *fp;
    if ((fp = fopen(filename, "r")) == NULL) {
        fprintf(stderr, "[Error] Cannot open the file: %s\n", filename);
        exit(1);
    }

    // Read the data set and get the number of nodes (n) and edges (e)
    int n = 0, e = 0;
    char ch;
    char str[256];
    ch = getc(fp);
    while (ch == '#') {
        if (fgets(str, sizeof(str) - 1, fp) == NULL) break;
        // Expected header like: "# Nodes: <n> Edges: <e>"
        sscanf(str, "%*s %d %*s %d", &n, &e);
        ch = getc(fp);
    }
    if (ch != EOF) ungetc(ch, fp);

    // DEBUG: Print the number of nodes and edges
    printf("\nGraph data:\n\n  Nodes: %d, Edges: %d \n\n", n, e);

    /************************* CSR STRUCTURES *****************************/
    float *val     = (float*)calloc(e, sizeof(float));
    int   *col_ind = (int*)  calloc(e, sizeof(int));
    int   *row_ptr = (int*)  calloc(n + 1, sizeof(int));

    if (!val || !col_ind || !row_ptr) {
        fprintf(stderr, "Allocation failed\n");
        free(val);
        free(col_ind);
        free(row_ptr);
        fclose(fp);
        exit(1);
    }

    // Detect if the graph uses 0-indexed or 1-indexed nodes
    int is_one_indexed = detect_indexing(filename);

    // The first row always starts at position 0
    row_ptr[0] = 0;

    int fromnode, tonode;
    int cur_row = 0;
    int i = 0;
    int elrow = 0;   // elements for current row
    int curel = 0;   // cumulative elements
    int valid_edges = 0;

    while (!feof(fp)) {
        if (fscanf(fp, "%d%d", &fromnode, &tonode) != 2) break;

        // Convert to 0-indexed only if the graph is 1-indexed
        if (is_one_indexed) {
            fromnode--;
            tonode--;
        }

        // Bounds check for consistency with Rust impl
        if (fromnode >= n || tonode >= n || fromnode < 0 || tonode < 0) {
            continue;
        }

        valid_edges++;

        if (fromnode > cur_row) {
            curel += elrow;
            for (int k = cur_row + 1; k <= fromnode; k++) {
                row_ptr[k] = curel;
            }
            elrow = 0;
            cur_row = fromnode;
        }
        if (i < e) {
            val[i] = 1.0f;
            col_ind[i] = tonode;
            elrow++;
            i++;
        } else {
            // Defensive: avoid writing past allocated E
            break;
        }
    }
    row_ptr[cur_row + 1] = curel + elrow;

    printf("Valid edges processed: %d\n", valid_edges);

    // Fix the stochastization
    int *out_link = (int*)calloc(n, sizeof(int));
    if (!out_link) {
        fprintf(stderr, "Allocation failed\n");
        free(val);
        free(col_ind);
        free(row_ptr);
        fclose(fp);
        exit(1);
    }

    /******************* INITIALIZATION OF P, DAMPING FACTOR ************************/
    float *p = (float*)calloc(n, sizeof(float));
    float *p_new = (float*)calloc(n, sizeof(float));
    if (!p || !p_new) {
        fprintf(stderr, "Allocation failed\n");
        free(val);
        free(col_ind);
        free(row_ptr);
        free(out_link);
        free(p);
        free(p_new);
        fclose(fp);
        exit(1);
    }
    for (i = 0; i < n; i++) p[i] = 1.0f / (float)n;

    /*************************** PageRank ROI  **************************/
    struct timespec pr_start, pr_end;
    clock_gettime(CLOCK_MONOTONIC, &pr_start);
    int k_iter = pagerank_roi(n, valid_edges, val, col_ind, row_ptr, out_link, p, p_new);
    clock_gettime(CLOCK_MONOTONIC, &pr_end);

    long long elapsed_ms = (long long)(pr_end.tv_sec - pr_start.tv_sec) * 1000LL
                         + (long long)(pr_end.tv_nsec - pr_start.tv_nsec) / 1000000LL;

    /*************************** CONCLUSIONS *******************************/
    printf("\nNumber of iteration to converge: %d \n\n", k_iter);
    print_pagerank_checksum(p, n);
    printf("elapsed_ms: %lld\n", elapsed_ms);

    // Clean up
    free(val);
    free(col_ind);
    free(row_ptr);
    free(out_link);
    free(p);
    free(p_new);
    fclose(fp);

    return 0;
}
