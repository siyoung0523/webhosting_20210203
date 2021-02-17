//1번 선생니밍 푼 것 뭔가 문제 발생.

#include <stdio.h>
//홀수 출력
void odd(int *p)
{   
    printf("홀수 출력");
    int i = 0;
    for (i = 0; i < 10; i++){
        if(p[i]%2==1);
            printf("p[%d] = %d\n",i, p[i]);
    }

    //짝수 출력
    void even(int *p){
        printf("짝수 출력");
        int i = 0;
        for (i = 0; i < 10; i++)
        {   
            if(p[i]%2==0);
                printf("p[%d] = %d\n",i, p[i]);
        }
    }

        void main()
        {
            int arr[10];
            int i = 0;
            for (i = 0; i < 10; i++)
            {
                printf("%d 숫자 입력\n", i);
                scanf("%d", &arr[i]);
            }
            odd(arr);
            even(arr);
        }