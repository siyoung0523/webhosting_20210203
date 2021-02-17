#include <stdio.h>

void main()
{
    int arr[5] = {0, 1, 2, 3, 4};
    int b = 20;

    printf("arr = %d\n", arr);
    printf("&arr[0] = %d\n", &arr[0]);
    printf("&arr[1] = %d\n", &arr[1]);
    printf("&arr[2] = %d\n", &arr[2]);
    printf("&arr[3] = %d\n", &arr[3]);
    printf("&arr[4] = %d\n", &arr[4]);

    //arr = &b; //arr의 포인터변수값은 상수이기 때문에 변경이 되지 않는다 !
}