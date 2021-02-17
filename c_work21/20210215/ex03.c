#include <stdio.h>
#include <string.h>

struct person
{
    char name[30];
    char phoneNum[20];
    int age;

};

void main(){
    struct person man1, man2;
    //struct person man1={"이승기","010",37}, man2; strcpy 안쓰고 이렇게 해도 됨.
    strcpy(man1.name,"이승기");
    strcpy(man1.phoneNum,"010-9946-2662");
    man1.age = 37;

    printf("이름 ="); scanf("%s", man2.name);
    printf("번호 ="); scanf("%s", man2.phoneNum);
    printf("나이 ="); scanf("%d", &man2.age);
    
    printf("man1 이름 ="); printf("%s\n", man1.name);
    printf("man1 번호 ="); printf("%s\n", man1.phoneNum);
    printf("man1 나이 ="); printf("%d\n", man1.age);

    printf("man2 이름 ="); printf("%s\n", man2.name);
    printf("man2 번호 ="); printf("%s\n", man2.phoneNum);
    printf("man2 나이 ="); printf("%d\n", man2.age);
}