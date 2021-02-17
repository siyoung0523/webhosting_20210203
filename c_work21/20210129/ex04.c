#include <stdio.h>

void main(){
    int arr[4][3];

    printf("arr size = %d\n", sizeof(arr)); //arr의 주소값
    printf("arr[0] size = %d\n", sizeof(arr[0])); //arr[0]의 주소값
    printf("arr[1] size = %d\n", sizeof(arr[1]));
    printf("arr[2] size = %d\n", sizeof(arr[2]));
    printf("arr[3] size = %d\n", sizeof(arr[3]));

    printf("arr 주소값 = %d\n", arr);//6487536
    printf("arr[0] 주소값 = %d\n", arr[0]);//6487536
    printf("arr[1] 주소값 = %d\n", arr[1]);//6487548
    printf("arr[2] 주소값 = %d\n", arr[2]);// 12씩 증가
    printf("arr[3] 주소값 = %d\n", arr[3]);
    //우리 눈엔 4행 3열로 보이지만 컴퓨터는 사실 한줄로 나열해 놓음.


//1씩 증가하면 4씩 증가.
    printf("arr 주소값 = %d\n", arr);//6487548 얘만 12증가
    printf("arr[0]+1 주소값 = %d\n", arr[0]+1);//6487540 -> 4증가
    printf("arr[1]+1 주소값 = %d\n", arr[1]+1);//6487552 -> 4증가
    printf("arr[2]+1 주소값 = %d\n", arr[2]+1);
    printf("arr[3]+1 주소값 = %d\n", arr[3]+1);
}