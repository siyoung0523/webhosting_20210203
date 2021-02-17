#include <stdio.h>

struct point
{
    int xpos;
    int ypos;
};


void main(){
    struct point arr[3];
    //입력받기
    for(int i = 0; i<3; i++){
        printf("arr[%d].xpos = ",i);
        scanf("%d", &(arr[i].xpos));
        printf("arr[%d].ypos = ",i);
        scanf("%d", &(arr[i].ypos));
    }
    printf("\n");
    //출력

    for(int i=0; i<3;i++){
        printf("arr[%d].xpos = %d", i, arr[i].xpos);
        printf("arr[%d].ypos = %d", i, arr[i].ypos);

    }
}