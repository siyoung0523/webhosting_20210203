#include <stdio.h>

void main()
{
    char *arrp[3] = {"aaa","bbb","ccc"};

    printf("arr[0] = %d \n", arrp[0]);
    printf("arr[1] = %d \n", arrp[1]);
    printf("arr[2] = %d \n", arrp[2]);



    printf("*arrp[0] = %s \n", arrp[0]); //주소값에 가서 \0까지 읽는 것.
    printf("*arrp[1] = %s \n", *(arrp+1)); //*(arrp+1)이나 arr[1]이나 같음
    printf("*arrp[2] = %s \n", arrp[2]);

}