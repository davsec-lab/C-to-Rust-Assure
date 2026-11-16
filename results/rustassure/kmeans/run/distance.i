 
typedef struct {
    double x, y;
    int cluster_id;
    double cluster_distance;
} Point;
typedef struct {
    double x, y;
} Cluster;
double distance(Point p, Cluster c) {
    return sqrt((p.x - c.x) * (p.x - c.x) + (p.y - c.y) * (p.y - c.y));
}
