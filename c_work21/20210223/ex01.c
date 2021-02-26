#include <stdlib.h>
#include <stdio.h>

static int a = 10;

void main() {
    void * ptr1 = malloc(4);
    void * ptr2 = malloc(8);

    printf("ptr1 = %d\n", ptr1);
    printf("ptr2 = %d", ptr2);

    free(ptr1);
    free(ptr2);

}