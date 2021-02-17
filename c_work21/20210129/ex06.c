#include <stdio.h>



int question_348p_1st(){
    printf("\n348p 1st\n\n");
    int arr[3][9];
    int i=0;
    int j=0;

    for(i=2; i<5; i++){
        for(j=1; j<10; j++){
            arr[i-2][j-1] = i*j;
        }
    }

    for(i=0; i<3; i++){
        printf("\n");
        for(j=0; j<9; j++){
            printf("[%d][%d]=%d ", i, j, (i+2)*(j+1));
        }
    }
}



int question_349p_2nd(){
    printf("\n349p 2st\n\n");
    int i = 0;
    int j = 0;
    int A[2][4]={{1,2,3,4},{5,6,7,8}};
    int B[4][2];

    for(i=0; i<2; i++){
        for(j=0; j<4; j++){
            B[j][i] = A[i][j];
        }
    }
    
     for(i=0; i<4; i++){
        for(j=0; j<2; j++){
            printf("B[%d][%d] = %d\n",i, j, B[i][j]);
        }
     }
}

int question_349p_3rd(){
    printf("\n349p 3rd\n\n");

    int arr[5][5];
    int i = 0, j = 0, k = 0, s=0;
    int vsum = 0, hsum = 0;

    for(i=0 ; i<4 ; i++){
        for(j=0; j<4 ; j++){
            printf("Press grade\n");
            scanf("%d", &k );
            arr[i][j] = k;
        }
    }

    for(j=0; j<4; j++){
        for(i=0; i<4 ; i++){
            hsum += arr[j][i];
        }
        arr[j][4]=hsum;
        hsum = 0;
    }

    for(j=0; j<4; j++){
        for(i=0; i<4; i++){
            vsum += arr[i][j];
        }
        arr[4][j]=vsum;
        vsum = 0;
    }


    for(i=0; i<5 ; i++){
        printf("\n");
        for(j=0; j<5 ; j++){
            printf("[%d][%d]=%d ", i, j, arr[i][j]);
        }
    }
}
