#include <stdio.h>
#include <stdlib.h>

void main(){
    char a[10]="1234";

    int b = atoi(a);
    double c = atof(a);

    printf("b = %d\n",b);
    printf("c = %f\n",c);
}