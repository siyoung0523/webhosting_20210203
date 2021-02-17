#include <stdio.h>

void main()
{
    int a = 10;
    double *b = &a;

    printf("*b = %d\n", *b);

    double c = 20;
    int *d = &c;

    printf("*d = %d\n", *d);
}