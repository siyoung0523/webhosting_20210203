/*
    달팽이 배열..
*/
#include <stdio.h>

int len = 5;
int cur = 0;

void doPrint(int (*arr)[100]){
    for(int i =0; i<len ; i++){
        for(int j=0; j<len ; j++){
            printf("%d\t",arr[i][j]);
        }
        printf("\n");
    }
}

void main(){
    printf("배열 크기 입력");
    scanf("%d",&len);
    
    int arr[100][100] ={0,};
    int drec = 1;   // 1 오른쪽 , 2 아래, 3 왼쪽, 4 위
    /*
        1  2  3  4  5
        16 17 18 19 6
        15 24 25 20 7
        14 23 22 21 8
        13 12 11 10 9
    */
    int value = 1;
    int i =0,j=0;
    while(1){
        if(arr[i][j] != 0){
            // printf("되나");
            break;
        }
        if(drec == 1){
            arr[i][j] = value++;
            j++;
            if((len-cur) == j){
                drec = 2; // 지금 좌표는 0,5
                i = i+1;    // i = 1
                j = j-1;    // j = 4
            }
        }
        else if(drec == 2){ // 1,4 -> 2,3 ->3,3 -> 4,3
             arr[i][j] = value++;
             i++;
             if((len-cur) == i){
                 // 5 4 -> 4 3
                // printf("\narr[%d][%d] = %d\n",i,j,arr[i][j]);
                drec = 3;
                i--;
                j--;
                // printf("\narr[%d][%d] = %d\n",i,j,arr[i][j]);
             }
        }
        else if(drec == 3){
            arr[i][j] = value++;
            j--;
            if( j == (-1+cur) ){  // 4, -1
                drec=4;
                i--;
                j++;
            }
        }
        else if(drec == 4){
            arr[i][j] = value++;
            i--;
            if(i == (0+cur)){
                printf("\narr[%d][%d] = %d\n",i,j,arr[i][j]);
                drec = 1;
                cur = cur + 1;
                i = cur, j = cur;
            }
        }
    }

     doPrint(arr);
}