#include <stdio.h>

void main()
{
    int a[3] = {1,2,3};
    int *p = a;

    printf("*p=%d\n",*p);
    printf("*(p+1)=%d\n",*(p+1));
    printf("*(p+2)=%d\n",*(p+2));

    printf("*p[0]=%d\n",p[0]);
    printf("*p[1]=%d\n",p[1]);
    printf("*p[2]=%d\n",p[2]);

}