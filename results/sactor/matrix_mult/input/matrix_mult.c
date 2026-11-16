#define _GNU_SOURCE 1
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int **allocate_matrix(int size)
{
    int **matrix = (int **)malloc(size * sizeof(int *));
    if (!matrix)
    {
        printf("Error: Memory allocation failed.\n");
        exit(1);
    }
    for (int i = 0; i < size; i++)
    {
        matrix[i] = (int *)malloc(size * sizeof(int));
        if (!matrix[i])
        {
            printf("Error: Memory allocation failed.\n");
            exit(1);
        }
    }
    return matrix;
}

void free_matrix(int **matrix, int size)
{
    for (int i = 0; i < size; i++)
    {
        free(matrix[i]);
    }
    free(matrix);
}

void fill_matrix(int **matrix, int size)
{
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            matrix[i][j] = rand();
        }
    }
}

void multiply_matrices(int **A, int **B, int **C, int size)
{
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            C[i][j] = 0;
            for (int k = 0; k < size; k++)
            {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

void print_matrix(int **matrix, int size, const char *name)
{
    printf("Matrix %s:\n", name);
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            printf("%5d ", matrix[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

static double diff_timespec(struct timespec *time1, struct timespec *time0)
{
    return (time1->tv_sec - time0->tv_sec) + (time1->tv_nsec - time0->tv_nsec) / 1000000000.0;
}

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("Usage: %s <matrix_size>\n", argv[0]);
        return 1;
    }

    int size = atoi(argv[1]);
    if (size <= 0)
    {
        printf("Error: matrix size must be a positive integer.\n");
        return 1;
    }

    srand(10000);

    // Allocate matrices
    int **A = allocate_matrix(size);
    int **B = allocate_matrix(size);
    int **C = allocate_matrix(size);

    fill_matrix(A, size);
    fill_matrix(B, size);

    // print_matrix(A, size, "A");

    struct timespec start_time, end_time;
    double time_elapsed = 0;
    clock_gettime(CLOCK_MONOTONIC, &start_time);

    // MAIN COMPUTATION BEGIN
    multiply_matrices(A, B, C, size);
    // MAIN COMPUTATION END

    clock_gettime(CLOCK_MONOTONIC, &end_time);
    time_elapsed = diff_timespec(&end_time, &start_time);

    printf("Time taken for matrix multiplication of size %d x %d: %f seconds\n", size, size, time_elapsed);

    // Optionally print result matrix
    // print_matrix(C, size, "C");

    free_matrix(A, size);
    free_matrix(B, size);
    free_matrix(C, size);

    return 0;
}