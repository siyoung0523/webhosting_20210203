#include <stdio.h>

void main(){
    int arr[2][3];
    int brr[3][2];

    printf("arr[0]의 주소값 = %d\n", arr);
    printf("arr+1의 주소값 = %d\n", arr+1);
    printf("arr+2의 주소값 = %d\n", arr+2);

    printf("brr[0]의 주소값 = %d\n", brr);
    printf("brr+1의 주소값 = %d\n", brr+1);
}