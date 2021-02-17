#include <stdio.h>

void main(){
    int num1 =10, num2 =20, num3 =30, num4 =40;
    int arr2d[2][3] = {1,2,3,4,5,6};

    int *a[4]={&num1,&num2,&num3,&num4};
    int (*brr)[3] = arr2d;

    int i = 0;
    printf("포인터 배열 출력 시작\n");
    for(i=0; i<4; i++){
        printf("num%d = %d\n", i, *a[i]);
    }
    printf("배열 포인터 출력 시작\n");
    for(i=0; i<2;i++){
        printf("%d %d %d\n", brr[i][0],brr[i][1],brr[i][2]);
    }
}