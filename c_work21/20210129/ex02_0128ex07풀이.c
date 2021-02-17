/* 내가 푼 320p 문제 2
#include <stdio.h>

void Swap3(int *num1, int *num2, int *num3)
{
    int temp = *num1;
    *num1 = *num2;
    *num2 = *num3;
    *num3 = temp;
}

int main()
{
    int num1 = 1, num2 = 2, num3 = 3;
    Swap3(&num1, &num2, &num3);
    printf("%d %d %d\n", num1, num2, num3);
    return 0;

}
*/

//선생님이 푼 것

#include <stdio.h>

void main(){
    int num1 = 10;
    int num2 = 20;
    int num3 = 30;

    printf("num1 = %d\n", num1);
    printf("num2 = %d\n", num2);
    printf("num3 = %d\n", num3);

    //num1 = 10, num2 = 20
    int l_num2 = num2;
    num2= num1;

    int l_num3 = num3;
    num3 = l_num2;
    num1 = l_num3;

}