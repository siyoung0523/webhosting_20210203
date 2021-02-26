/*
문자열 형태의 종업원 이름과 문자열 형태의 주민번호
그리고 정수형태의 급여정보를 저장 할 수  있는 employee라는 이름의 구조체를
정의해보자 그리고 나서 emplyess 구조체 변수를 하나 선언한 다음, 프로그램
사용자가 입력하는 정보로 이 변수를 채우자
그리고 마지막으로 구조체 변수에 채워진 데이터를 출력해보자*/

//p458_22_1

#include <stdio.h>
void p458_22_1() {
typedef struct //typedef: 새로운 구조체를 정의하겠다
{
    char name[30];
    char jumin[14];
 } Employee; // 그 구조체 이름은 Emplyee 대문자로 쓰는게 관례

 void main(){
     Employee emp;
     printf("이름 입력하세요.");
     scanf("%s", emp.name);
     printf("주민번호 입력하세요.");
     scanf("%s", emp.jumin);
 

 printf("입력한 이름 = %s", emp.name);
 printf("입력한 이름 = %s", emp.jumin);
 }
}


typedef struct //typedef: 새로운 구조체를 정의하겠다
{
    char name[30];
    char jumin[14];
 } Employee; // 그 구조체 이름은 Emplyee 대문자로 쓰는게 관례

 void main(){
     Employee emp[3];

    for(int i = 0; i<sizeof(emp)/sizeof(Employee); i++)
    {
        printf("이름 입력하세요.");
        scanf("%s", emp[i].name);
        printf("주민번호 입력하세요.");
        scanf("%s", emp[i].jumin);
 

 printf("입력한 이름 = %s", emp[i].name);
 printf("입력한 이름 = %s", emp[i].jumin);
    }
 }
