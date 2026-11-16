#define _GNU_SOURCE 1
#include <time.h>
#include <err.h>
#include <linux/perf_event.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdint.h>
#include <inttypes.h>
#include <stdbool.h>
#include <limits.h>

#define INF INT_MAX

typedef struct {
    int id;
    int *edges;
    int *weights;
    int edge_count;
    int capacity;
} Node;

typedef struct {
    int from;
    int to;
    int weight;
} Edge;

typedef struct {
    Node *nodes;
    int node_count;
    Edge *edges;
    int edge_count;
    int capacity;
} Graph;

Graph* createGraph(int node_count) {
    Graph *graph = (Graph*)malloc(sizeof(Graph));
    graph->nodes = (Node*)malloc(node_count * sizeof(Node));
    graph->node_count = node_count;
    graph->edges = NULL;
    graph->edge_count = 0;
    graph->capacity = 0;
    
    for (int i = 0; i < node_count; i++) {
        graph->nodes[i].id = i;
        graph->nodes[i].edges = NULL;
        graph->nodes[i].weights = NULL;
        graph->nodes[i].edge_count = 0;
        graph->nodes[i].capacity = 0;
    }
    
    return graph;
}

void addEdge(Graph *graph, int from, int to, int weight) {
    Node *node = &graph->nodes[from];
    
    if (node->edge_count >= node->capacity) {
        node->capacity = node->capacity == 0 ? 4 : node->capacity * 2;
        node->edges = (int*)realloc(node->edges, node->capacity * sizeof(int));
        node->weights = (int*)realloc(node->weights, node->capacity * sizeof(int));
    }
    
    node->edges[node->edge_count] = to;
    node->weights[node->edge_count] = weight;
    node->edge_count++;
    
    // Also add to global edge list
    if (graph->edge_count >= graph->capacity) {
        graph->capacity = graph->capacity == 0 ? 1000 : graph->capacity * 2;
        graph->edges = (Edge*)realloc(graph->edges, graph->capacity * sizeof(Edge));
    }
    
    graph->edges[graph->edge_count].from = from;
    graph->edges[graph->edge_count].to = to;
    graph->edges[graph->edge_count].weight = weight;
    graph->edge_count++;
}

void generateRandomGraph(Graph *graph) {
    int n = graph->node_count;
    
    for (int i = 0; i < n; i++) {
        for (int j = i + 1; j < n; j++) {
            // Generate a number in [0, 1_000_000) and check if it's < 500_000 (~50%)
            if (rand() % 1000000 < 500000) {
                int weight = (rand() % 100) + 1; // Weight between 1-100
                addEdge(graph, i, j, weight);
                addEdge(graph, j, i, weight); // Undirected graph
            }
        }
    }
}

void* parallelBellmanFord(void* arg) {
    return NULL;
}

int sssp(Graph *graph, int start) {
    int *distances = (int*)malloc(graph->node_count * sizeof(int));
    
    // Initialize distances
    for (int i = 0; i < graph->node_count; i++) {
        distances[i] = INF;
    }
    distances[start] = 0;
    
    // Sequential Bellman-Ford
    for (int iteration = 0; iteration < graph->node_count - 1; iteration++) {
        bool updated = false;
        for (int i = 0; i < graph->edge_count; i++) {
            Edge *edge = &graph->edges[i];
            if (distances[edge->from] != INF && 
                distances[edge->from] + edge->weight < distances[edge->to]) {
                distances[edge->to] = distances[edge->from] + edge->weight;
                updated = true;
            }
        }
        if (!updated) break;
    }
    
    // Count reachable nodes with finite distance
    int reachable = 0;
    for (int i = 0; i < graph->node_count; i++) {
        if (distances[i] != INF) {
            reachable++;
        }
    }
    
    free(distances);
    return reachable;
}

void freeGraph(Graph *graph) {
    for (int i = 0; i < graph->node_count; i++) {
        free(graph->nodes[i].edges);
        free(graph->nodes[i].weights);
    }
    free(graph->nodes);
    free(graph->edges);
    free(graph);
}

static double diff_timespec(struct timespec *time1, struct timespec *time0)
{
    return (time1->tv_sec - time0->tv_sec) + (time1->tv_nsec - time0->tv_nsec) / 1000000000.0;
}

int main(int argc, char *argv[])
{
    if (argc < 2 || argc > 3)
    {
        printf("Usage: %s <number_of_nodes>\n", argv[0]);
        return 1;
    }

    int size = atoi(argv[1]);
    if (size <= 0)
    {
        printf("Invalid number of nodes. Please enter a positive integer.\n");
        return 1;
    }

    srand(10000);
    Graph *graph = createGraph(size);
    generateRandomGraph(graph);

    struct timespec start_time, end_time;
    double time_elapsed = 0;
    clock_gettime(CLOCK_MONOTONIC, &start_time);
    // MAIN COMPUTATION BEGIN
    int reachable = sssp(graph, 0);
    // MAIN COMPUTATION END
    clock_gettime(CLOCK_MONOTONIC, &end_time);
    time_elapsed = diff_timespec(&end_time, &start_time);
    printf("Time taken for SSSP on graph of %d nodes: %f seconds\n", size, time_elapsed);
    printf("\n SSSP on graph of size %d: %d reachable nodes\n", 
           size, reachable);

    freeGraph(graph);
    return 0;
}
