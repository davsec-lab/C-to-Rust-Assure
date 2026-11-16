typedef long int __off_t;
typedef long int __off64_t;
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
int detect_indexing(const char *filename) {
    FILE *fp = fopen(filename, "r");
    if (!fp) {
        return 1;
    }
    int min_node = 2147483647;
    int samples = 0;
    char line[256];
    while (fgets(line, sizeof(line), fp) && samples < 100) {
        if (line[0] == '#') {
            continue;
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
    int is_one_indexed = (min_node != 0);
    printf("Detected indexing: %s (min node ID: %d)\n",
           is_one_indexed ? "1-indexed" : "0-indexed", min_node);
    return is_one_indexed;
}
