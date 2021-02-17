#include <stdio.h>

void main()
{
    char a[]="abc"; // a b c \0
    char *b = "abc";

    //a[1] = '\0';을 한다면 a만 나옴 왜냐하면 \0을 만나면 그만두기 때문.
    //b[1] = '\0';은 맞지 않음
    // b = "abcdefg"; 처럼 한꺼번에 바꾸는 것은 됨

    printf("%s %s", a, b); //여기서 a는 0번째의 주소값 (%s는 \0을 만날때까지 출력).
}