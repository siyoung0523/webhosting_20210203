#include <stdio.h>

void main(){
    int arr[3][3]={1,2,3,4,5,6,7,8,9};

    printf("전체 사이즈 sizeof(arr) = %d\n", sizeof(arr));

    printf("전체 사이즈 sizeof(arr[0]) = %d\n", sizeof(arr[1]));
    printf("전체 사이즈 sizeof(arr[1]) = %d\n", sizeof(arr[0]));

    printf("arr의 주소값 = %d\n",arr);
    printf("arr[0]의 주소값 = %d\n",arr[0]);
    printf("arr[0][0]의 주소값 = %d\n",arr[0][0]);

    printf("arr+1의 주소값 = %d\n",arr+1);
    printf("arr[1]의 주소값 = %d\n",arr[1]);
    printf("arr[1][0]의 주소값 = %d\n",arr[1][0]);

    printf("arr+2의 주소값 = %d\n",arr+2);
    printf("arr[2]의 주소값 = %d\n",arr[2]);
    printf("arr[2][0]의 주소값 = %d\n",arr[2][0]);
}