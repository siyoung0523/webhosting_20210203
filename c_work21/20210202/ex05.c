#include <stdio.h>

void main(){
    int a[4][2] = { {1,2},{3,4},{5,6},{7,8}};

    printf("a[0] : %p\n", a[0]);
    printf("*(a+0) : %p\n", *(a+0));
    
    
    printf("a[1] : %p\n", a[1]);
    printf("*(a+1) : %p\n", *(a+1));
    
    printf("a[2] : %p\n", a[2]);
    printf("*(a+2) : %p\n", *(a+2));
    
    printf("%d, %d \n", a[2][1], (*(a+2))[1]);
    printf("%d, %d \n", a[2][1], *(a[2]+1));
    printf("%d, %d \n", a[2][1], *(*(a+2)+1)); 
}