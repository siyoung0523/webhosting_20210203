#include <stdio.h>

void main(){
    int ch1,ch2;

    ch1 = getchar(); //getchar에서 한문자 받음
    ch2 = fgetc(stdin); //여긴 엔터키가 받음

    putchar(ch1); //문자 하나가 나옴
    fputc(ch2,stdout); //엔터키가 나옴


}