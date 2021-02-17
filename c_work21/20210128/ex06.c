#include <stdio.h>

void doA(int *p) //주소값을 받음.
{
    printf("\n");
    printf("*p = %d\n", *p); //p는 주소값을 들고 있음. 그래서 *p로 주소값에 있는 수르 ㄹ받아 읽음.
    printf("\n");
    *p = 20; //받은 주소 해당되는 곳에 20을 넣음.
}

void main()
{
    int arr[3] = {1,2,3};
    int i = 0;

    for(; i<3 ; i++)
    {
        printf("arr[%d] = %d\n", i, arr[i]);
    }

    doA(arr); //주소값을 넘겨준 것. (주소값읅 복사시켜서 넘겨준 것. <- call by reference.)  - doA(&arr[0])과 같음.

    for(i=0; i<3 ; i++)
    {
        printf("arr[%d] = %d\n", i, arr[i]); //arr[0]=20이 들어가 있음.
    }
}