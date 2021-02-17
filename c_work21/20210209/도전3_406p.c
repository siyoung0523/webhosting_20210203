/* 
1 2 3 4
5 6 7 8
9 10 11 12
13 14 15 16

13 9 5 1
14 10 6 2
15 11 7 3
16 12 8 4

16 15 14 13
12 11 10 9
8 7 6 5
4 3 2 1
*/
#include <stdio.h>
void doPrint(int (*p)[4]);
void doChage(int (*arr)[4], int (*brr)[4] );
void main(){
    int arr[4][4] = {
        {1,2,3,4},
        {5,6,7,8},
        {9,10,11,12},
        {13,14,15,16}
    };
    int brr[4][4];
    
    printf("========arr==========\n");
    doPrint(arr);

    doChage(arr,brr);

    printf("========brr==========\n");
    doPrint(brr);

    doChage(brr,arr);

    printf("========arr==========\n");
    doPrint(arr);

    doChage(arr,brr);

    printf("========brr==========\n");
    doPrint(brr);
}

void doChage(int (*arr)[4], int (*brr)[4]){
    int k = 3;
    for(int i =0; i<4;i++){
        for(int j=0; j<4;j++){
            brr[j][k] = arr[i][j];
        }
        k--;
    }
}
// 출력하는 함수
void doPrint(int (*p)[4]){
    for(int i =0; i<4;i++){
        for(int j=0; j<4;j++){
            printf("%d\t",p[i][j]);
        }
        printf("\n");
    }
}