#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void _407p_3(){
    printf("난수 출력 %d\n ", RAND_MAX); //RAND_MAX 랜덤 최댓값

    // 0 < rand() < 32767 기존범위
    // 100으로 나누면
    // 100으로 나누었을 때 나머지는 ..
    // 0 < rand() < 32699

    // 0 < rand() < 99
    // 0 < rand() < 67
    for(int i =0; i<10;i++){
    printf("%d\n",rand()%100);
    }
}

void _408p_4_1(){
    // UTC시간
    printf("=1970년 1월 1일 부터 초의 변화 =\n");
    printf("%d \n", (int)time(NULL)); //1초단위로 변경됨. 이걸 srand에 넣기

    printf("난수 출력 %d\n",RAND_MAX);

    //srand(1); srand에 숫자를 다르게 넣으면 나오는 난수도 달라짐
    srand((int)time(NULL));
    for (int i = 0; i < 10; i++)
    {
        printf("%d\n",rand()%100);
    }
    
}


void _408p_4_2(){
 
    //srand(1); srand에 숫자를 다르게 넣으면 나오는 난수도 달라짐
    //1초 단위로 시간을 가져오는게 c언어
    // 1/1000초 단위로 시간을 가져오는 millsSecond()
    srand((int)time(NULL));
        //printf("%d\n",rand()%6);
        // rand()%6 0~5까지 숫자가 나온다.
        // +1       1~6까지 숫자가 나온다.
        printf("주사위 1의 결과 %d\n",(rand()%6)+1);
        printf("주사위 2의 결과 %d\n",(rand()%6)+1);
}

void _410p_5(){
    // 사용자가 가위바위보 게임 질때까지..
    // c언어는 값이 0 false
    // 0이 아닌 모든 값이 true
    int seo = 1;
    // 1가위 2 바위 3 보
    int select = 0;
    int compu_select = 0;

    int win = 0;
    int lose = 0;
    int draw = 0;

    while(seo){
        printf("뭘 낼래?");
        scanf("%d",&select);

        srand((int)time(NULL));
        compu_select = (rand()%3) + 1;
        //1번 가위를 내면
        //컴퓨터 1 2 3 랜덤
        if(select == 1){
            // 비김
            if(compu_select ==1){
                draw ++;
                printf("당신의 선택은 가위 선택, 컴퓨터도 가위 선택\n");
            //졌음
            }else if(compu_select ==2){
                lose ++;
                seo = 0;
                printf("당신의 선택은 가위 선택, 컴퓨터는 바위 선택\n");
            //비김
            }else if(compu_select ==3){
                win++;
                printf("당신의 선택은 가위 선택, 컴퓨터는 보자기 선택\n");
            }
        }
        
    }
    printf("게임의 결과 %d승 %d무 %d패", win, draw, lose);  

}

void main(){
    _410p_5();
}