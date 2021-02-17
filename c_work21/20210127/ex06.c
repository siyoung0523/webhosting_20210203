
/* 300p 13-1 포인터를 이용한 배열의 접근 (1)
#include <stdio.h>

void main()
{
    int i=0, j=0;
    int arr[5]={1,2,3,4,5};
    int *ptr = &arr[0];
    for(;j<6;j++)
    {
        ptr+j;
        arr[j]+=2;
    }
    for(i=0;i<5;i++)
    {
    printf("%d, ", arr[i]);
    }
}
*/


/* 300p 13-1 포인터를 이용한 배열의 접근 (2)
#include <stdio.h>

void main()
{
    int i=0;
    int arr[5]={1,2,3,4,5};
    int *ptr = &arr[0];
    for(i=0;i<6;i++)
    {
        *(ptr+i)+=2;
    }
    for(i=0;i<5;i++)
    {
    printf("%d, ", arr[i]);
    }
}
*/

//선생님이 푼 2번




/* 300p 13-1 포인터를 이용한 배열의 접근 (3)
#include <stdio.h>

void main()
{
    int arr[5]={1,2,3,4,5};
    int *ptr=&arr[4];
    int i=0, j=0, sum=0;

    for(i=0;i<5;i++)
    {
        j=*(ptr-i);
        sum+=j;
    }
    printf("%d", sum);
}
*/

/* 300p 13-1 포인터를 이용한 배열의 접근 (4)
#include <stdio.h>

void main()
{
    int arr[6]={1,2,3,4,5,6};
    int *ptr1 = &arr[0];
    int *ptr2 = &arr[5];
    int i=0, temp=0;

    for(i=0;i<3;i++)
    {
        temp=*(ptr2-i);
        *(ptr2-i)=*(ptr1+i);
        *(ptr1+i)=temp;
    }

    for(i=0;i<6;i++)
    {
    printf("%d, ", arr[i]);
    }
    return 0;
}
*/