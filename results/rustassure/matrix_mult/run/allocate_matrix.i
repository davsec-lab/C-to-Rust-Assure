typedef long unsigned int size_t;
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
