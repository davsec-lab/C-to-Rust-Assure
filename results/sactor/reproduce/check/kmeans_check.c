#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <float.h>
#include <time.h>

typedef struct {
    double x, y;
    int cluster_id;
    double cluster_distance;
} Point;

typedef struct {
    double x, y;
} Cluster;

static double diff_timespec(struct timespec *time1, struct timespec *time0)
{
    return (time1->tv_sec - time0->tv_sec) + (time1->tv_nsec - time0->tv_nsec) / 1000000000.0;
}

double distance(Point p, Cluster c) {
    return sqrt((p.x - c.x) * (p.x - c.x) + (p.y - c.y) * (p.y - c.y));
}

void assign_clusters(Point *points, int n, Cluster *clusters, int k) {
    for (int i = 0; i < n; i++) {
        double min_dist = DBL_MAX;
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

void kmeans(Point *points, int n, Cluster *clusters, int k, int max_iter) {
    // Initialize centroids to first k points
    for (int j = 0; j < k; j++) {
        clusters[j].x = points[j].x;
        clusters[j].y = points[j].y;
    }

    for (int iter = 0; iter < max_iter; iter++) {
        assign_clusters(points, n, clusters, k);
        update_centroids(points, n, clusters, k);
    }
}

int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("Usage: %s <num_points> <k> [max_iter]\n", argv[0]);
        return 1;
    }

    int num_points = atoi(argv[1]);
    int k = atoi(argv[2]);
    int max_iter = (argc >= 4) ? atoi(argv[3]) : 100;

    if (num_points <= 0 || k <= 0 || k > num_points) {
        printf("Error: num_points > 0, k > 0, and k <= num_points required.\n");
        return 1;
    }

    srand(42);
    Point *points = malloc(num_points * sizeof(Point));
    for (int i = 0; i < num_points; i++) {
        points[i].x = (double)rand() / RAND_MAX * 100.0;
        points[i].y = (double)rand() / RAND_MAX * 100.0;
        points[i].cluster_id = -1;
        points[i].cluster_distance = DBL_MAX;
    }

    Cluster *clusters = malloc(k * sizeof(Cluster));

    struct timespec start_time, end_time;
    double time_elapsed = 0;
    clock_gettime(CLOCK_MONOTONIC, &start_time);

    // MAIN COMPUTATION BEGIN
    kmeans(points, num_points, clusters, k, max_iter);
    // MAIN COMPUTATION END
    { double s=0; long ids=0; for(int i=0;i<k;i++) s+=clusters[i].x*1000+clusters[i].y; for(int i=0;i<num_points;i++) ids += points[i].cluster_id*(long)(i%97+1); printf("CHECK %.6f %ld\n", s, ids); }

    clock_gettime(CLOCK_MONOTONIC, &end_time);
    time_elapsed = diff_timespec(&end_time, &start_time);

    printf("Time taken for k-means clustering of %d points into %d clusters: %f seconds\n", num_points, k, time_elapsed);

    free(points);
    free(clusters);
    return 0;
}
