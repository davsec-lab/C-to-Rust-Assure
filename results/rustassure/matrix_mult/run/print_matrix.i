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
