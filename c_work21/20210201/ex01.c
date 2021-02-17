#include <stdio.h>

void main(){
    int a = 10;
    int *p = &a;
    int **pp = &p;

    printf("a = %d\t", a);
    printf("&a = %d\n", &a);

    printf("p = %d\t", p);
    printf("*p = %d\t", *p);
    printf("&p = %d\n", &p);

    printf("pp = %d\t", p);
    printf("*pp = %d\t", *pp);
    printf("**pp = %d\n", **pp);
}