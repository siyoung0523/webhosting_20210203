#define STRING_JOB(A,B) #A"의 직업은" #B "입니다.\n"

#define STNUM(Y, S, P) Y ## S ## P

#include <stdio.h>

void main(){
    printf("%s", STRING_JOB(홍길동,나무꾼));
    printf("%s", STRING_JOB(김길동,선녀));

    printf("STNUM(10, 10, 10) = %d", STNUM(10, 10, 10));
}