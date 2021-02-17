#include <stdio.h>

void main()
{
    int a[5]={1,2,3,4,5};
    double b[5]={1.1,2.2,3.3,4.4,5.5};

    printf("&a=%d\n",&a);
    printf("*a=%d\n",*a);

    printf("&b=%d\n",&b);
    printf("*b=%f\n",*b);

    printf("b+1=%d\n",b+1);

}