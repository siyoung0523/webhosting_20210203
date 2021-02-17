#include <stdio.h>

void main(){
    int a = 20;
    void *vp = &a;
    int *ip;

    printf("&a = %d\n", &a);
    printf("vp = %d\n", vp);

    ip = (int*)vp;
    *ip = 20;

    printf("*ip = %d\n", *ip);
    printf("ip = %d\n", ip);
}