typedef long unsigned int size_t;
typedef struct {
    double x, y;
    int cluster_id;
    double cluster_distance;
} Point;
typedef struct {
    double x, y;
} Cluster;
void update_centroids(Point *points, int n, Cluster *clusters, int k) {
    int *count = calloc(k, sizeof(int));
    double *sum_x = calloc(k, sizeof(double));
    double *sum_y = calloc(k, sizeof(double));
    for (int i = 0; i < n; i++) {
        int cid = points[i].cluster_id;
        count[cid]++;
        sum_x[cid] += points[i].x;
        sum_y[cid] += points[i].y;
    }
    for (int j = 0; j < k; j++) {
        if (count[j] > 0) {
            clusters[j].x = sum_x[j] / count[j];
            clusters[j].y = sum_y[j] / count[j];
        }
    }
    free(count);
    free(sum_x);
    free(sum_y);
}
