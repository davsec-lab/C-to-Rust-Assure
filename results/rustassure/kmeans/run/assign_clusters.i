typedef struct {
    double x, y;
    int cluster_id;
    double cluster_distance;
} Point;
typedef struct {
    double x, y;
} Cluster;
double distance(Point p, Cluster c);
void assign_clusters(Point *points, int n, Cluster *clusters, int k) {
    for (int i = 0; i < n; i++) {
        double min_dist = 1.7976931348623157e+308;
        int best_cluster = -1;
        for (int j = 0; j < k; j++) {
            double d = distance(points[i], clusters[j]);
            if (d < min_dist) {
                min_dist = d;
                best_cluster = j;
            }
        }
        points[i].cluster_id = best_cluster;
        points[i].cluster_distance = min_dist;
    }
}
