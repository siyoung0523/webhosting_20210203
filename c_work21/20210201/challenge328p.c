/*도전프로그래밍 문제 2


10진수 정수 입력 : 12
12 % 2 = 0 제일 끝자리수
6 % 2 = 0
3 % 2 = 1
1

*/


#include <stdio.h>


void _328p_question2_needchange()
{
    // 이 풀이는 이진수가 반대로 나옴.
   // 12 
    // arr[0] arr[1] arr[2] arr[3] 
    // 1      1      0      0
    // arr[0] = 0;
    // arr[0] == 0 -> arr[1] = 0
    // arr[0] == 0
    int input_number = 0;
    int rema_number = 0;

    printf("press number");
    scanf("%d", &input_number);

    printf("input_number = %d\n", input_number);
    while(input_number > 1){
        rema_number = input_number % 2;
        printf("rema_number %d", rema_number);
        input_number = input_number/2;
    }
    printf("input_number = %d", input_number);

}

void _328p_question2()
{
    int arr[100];
    int cnt = 0;

    int input_number = 0;
    int rema_number = 0;

    printf("press number");
    scanf("%d", &input_number);

    printf("input_number = %d\n", input_number);
    while(input_number > 1){
        rema_number = input_number % 2;

        arr[cnt] = rema_number;
        cnt++;

        int temp_value = input_number/2;
        if(temp_value<2){
            arr[cnt] = temp_value;
            cnt++
            break;
        }
        input_number = temp_value;
    }
    arr[cnt] = input_number;
    
    //arr[0] = 0 , arr[1] = 0, aqrr[2] = 1, arr[3] = 1
    int i=0;
    // i--, i-=1, i = i-1
    for(i=cnt-1;i>-1;i--){
        printf("%d",arr[i]);
    }
}

void _329p_question3()
{
    int arr[10];

    //[ 100, 104, 108, 112, 116, 120, 124, 128, 132, 136] <- 예를 든 주소

    int *fip = &arr[0]; //한 줄에 입력할떈 이렇게 입력
    /* 두 줄에 입력할땐
        int* fip;
        fip = &arr[0];
    */
    int *eip = &arr[9];
    // fip = 100
    // eip = 136
    int i = 0;


    while(i<10){
        printf("%d",i);
        int temp = 0;
        printf("정수 입력 ");
        scanf("%d", &temp);
        //홀수
        if(temp%2==1){
            *fip = temp; // 100번지에 4바이트 공간에 temp 값을 넣어라
            fip = fip+1; // 100 + 4 = 104 (int형 공간이 1 늘어났기에 4byte 증가)
        }
        //짝수
        else{
            *eip = temp; //9번째 주소값에 temp 넣는 것
            eip = eip-1; // 5792 -> 5788 으로 주소값 변경
        }
        i++;
    }

for(i=0; i<10;i++){
    printf("%d\n", arr[i]);
}
}