typedef struct {
    double x, y;
    int cluster_id;
    double cluster_distance;
} Point;
typedef struct {
    double x, y;
} Cluster;
void assign_clusters(Point *points, int n, Cluster *clusters, int k);
void update_centroids(Point *points, int n, Cluster *clusters, int k);
void kmeans(Point *points, int n, Cluster *clusters, int k, int max_iter) {
    for (int j = 0; j < k; j++) {
        clusters[j].x = points[j].x;
        clusters[j].y = points[j].y;
    }
    for (int iter = 0; iter < max_iter; iter++) {
        assign_clusters(points, n, clusters, k);
        update_centroids(points, n, clusters, k);
    }
}
