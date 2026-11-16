#define _GNU_SOURCE 1
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

int partition(int arr[], int low, int high) {
    int pivot = arr[high];
    int i = low;

    for (int j = low; j < high; j++) {
        if (arr[j] <= pivot) {
            swap(&arr[i], &arr[j]);
            i++;
        }
    }

    swap(&arr[i], &arr[high]);
    return i;
}

void quicksort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quicksort(arr, low, pi - 1);
        quicksort(arr, pi + 1, high);
    }
}

static double diff_timespec(struct timespec *time1, struct timespec *time0)
{
    return (time1->tv_sec - time0->tv_sec) + (time1->tv_nsec - time0->tv_nsec) / 1000000000.0;
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <array_size>\n", argv[0]);
        return 1;
    }

    int size = atoi(argv[1]);
    if (size <= 0) {
        printf("Error: array size must be a positive integer.\n");
        return 1;
    }

    int *arr = (int *)malloc(size * sizeof(int));
    if (!arr) {
        printf("Error: Memory allocation failed.\n");
        return 1;
    }

    srand(10000);
    for (int i = 0; i < size; i++) {
        arr[i] = rand();
    }

    struct timespec start_time, end_time;
    double time_elapsed = 0;
    clock_gettime(CLOCK_MONOTONIC, &start_time);

    // MAIN COMPUTATION BEGIN
    quicksort(arr, 0, size - 1);
    // MAIN COMPUTATION END

    clock_gettime(CLOCK_MONOTONIC, &end_time);
    time_elapsed = diff_timespec(&end_time, &start_time);

    printf("Time taken for quicksort of array size %d: %f seconds\n", size, time_elapsed);

    free(arr);
    return 0;
}