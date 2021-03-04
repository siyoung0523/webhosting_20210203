#include <stdio.h>

#include "cal.h"

void main(){

    int x;
    int area;

    printf("사각형의 넓이를 구합니다. 길이 입력: ");
    scanf("%d", &x);

    area = c_square(x);
    printf("넓이는 = %d", area);

}