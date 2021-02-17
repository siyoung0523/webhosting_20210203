#include <stdio.h>

typedef struct //typedef struct{int mem1;int mem2; double mem3;} 이렇게 적어도 됨
{
    int mem1;
    int mem2;
    double mem3;
} SBOX;

typedef union
{
    int mem1;
    int mem2;
    double mem3;
} UBOX;

void main(){
    SBOX sb;
    UBOX ub;

    sb.mem1 = 10; sb.mem2 = 20; sb.mem3 = 30.4;
    printf("%d %d %g\n", sb.mem1, sb.mem2, sb.mem3);
    
    ub.mem1 = 10; ub.mem2 = 20; ub.mem3 = 30.4;
    printf("%d %d %g\n", ub.mem1, ub.mem2, ub.mem3);
}