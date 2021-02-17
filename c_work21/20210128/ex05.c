#include <stdio.h>

void doA(int copya)
{
    printf("copya = %d\n", copya);
    copya = 20;
    printf("copya = %d\n", copya);

}

void main()
{
    int a = 10;
    printf("a = %d\n", a);
    doA(a);
    printf("a = %d\n", a);
}