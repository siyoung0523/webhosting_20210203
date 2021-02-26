#define NAME "홍길동"
#define AGE 33
#define PRINT_ADDR puts("주소를 출력\n");

#include <stdio.h>
#include <stdlib.h>

void main(){
    printf("%s\n", NAME);
    printf("%d\n", AGE);
    PRINT_ADDR
}