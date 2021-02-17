#include <stdio.h>

void main(){

    int arr[3][3];
    /*
        4,4,4
        4,4,4
        4,4,4 = 36
        36 / 4 = 9 //sizeof(arr) <- 전체크기. sizeof(int) <- 4 그러므로 전체크기/4 = 전체길이
    */
    
    int i = 0;
    int j = 0;
    // 2차원배열요소 입력받기
    for(i = 0; i<3; i++){ 
        for(j = 0 ; j<3 ; j++){
        printf("숫자 입력 : = \n");
        scanf("%d",&arr[i][j]);
        }
    }

    // 2차원배열요소 출력하기
    for(i = 0; i<3; i++){ 
        for(j = 0 ; j<3 ; j++){
            printf("숫자 출력 : = %d\n", arr[i][j]);
        }
    }
}