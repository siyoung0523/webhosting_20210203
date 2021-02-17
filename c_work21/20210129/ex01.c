#include <stdio.h>
// ctrl + k + f 자동 정렬
// shift + delete 한줄 삭제
//ctrl + k + c 주석 설정 ctrl + k + u 주석 설정 해제

void doA(int a){
    printf("doA() start\na = %d\n", a);
    a=20; //doA함수 안에서만 바뀐 것 main에 영향 안줌
    printf("a = %d \ndoA() end \n", a);

}

void doB(int *b){ //(int b)이렇게 입력하면 안됨. 포인터를 받아야함.
    printf("b = %d\n", b); //주소값나옴 -> 6487536
    printf("*b = %d\n", *b); //포인터 b,(*b)의 값이 나옴 -> 1
    *b = 10; //포인터는 b배열 자릿값에 영향을 주기에 main에도 영향을 줌.
    *(b+1) = 20;
    
    int i=0;
    for(i=0 ; i<10; i++){
        printf("*(b+%d) = %d\n", i, *(b+i)); // *b=10, *(b+1)=20, *(b+2)=3 .... 이렇게 나옴

    }
}

int doC(){
    return 5;
}

void main(){
    int i=0;
    int a = 10;
    int b[10] = {1,2,3,4,5,6,7,8,9,10};
    doA(a);
    printf("main a = %d\n", a);
    
    doB(&b[0]); //doB(b)만 적어도 됨. 주소값을 받기 때문
     for(i=0 ; i<10; i++){
        printf("*(b+%d) = %d\n", i, *(b+i));
    } // *b=10, *(b+1)=20, *(b+2)=3 .... 이렇게 또 나옴 (doB에서 한 번, 여기서 한 번)
    
    printf("a = %d\n", a);
    a = doC();
    printf("a = %d", a); // doC가 return 5를 반환하기에 5로 바뀜

}