#include <stdio.h>

void main()
{
    int a = 10;
    int *b = &a; // &a는 a가 가리키는 값을 의미

    //printf("b = %d\n",b); //6487572인 a의 주소값이 나옴.
    //printf("b+1 = %d\n",b+1);//6487576나옴. 1을 더해서 4(byte)가 증가한 76이 나옴. 만약 double형으로 선언됐었다면 8이 증가함
    //printf("*(b)+1 = %d\n",*(b+1));//
    //printf("*(b)+1 = %d\n",*(b)+1);//pointer변수 b에 1을 더하면 10+1인 11이 나옴.
    //괄호에 따라서 무언가 다르게 나옴을 알고 있으면 됨.

    *b +=30; //원래 값이 10이기에 30이 더해져 40이 나옴
    printf("*b = %d\n",*b);
    *b = *b +30; // 14번 줄이랑 같은 말임. 40+30=70
    printf("*b = %d", *b);
}