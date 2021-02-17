
//300p 13-1 포인터를 이용한 배열의 접근 (1) 선생님이 푼 1번
/*
#include <stdio.h>

void main()
{
    int arr[5]={1,2,3,4,5};
    //int *p=arr;
    int *p;
    p = arr;
    int i = 0;

    // 여기서 배열요소의 값을 각각 2씩 증가 시켜서 대입
    for(i=0; i<5; i++)
    {
        p[i] = p[i]+2; //*(p+i) = *(p+i)+2 ;; 와 같음.
        // printf("*(p+%d) = %d\n", i, *(p+i));
    }

    for(i=0;i<5;i++)
    {
        printf("p[%d] = %d\n", i, p[i]);
        printf("*(p+%d) = %d\n", i, *(p+i));
    }
}
*/

// 300p 13-1 포인터를 이용한 배열의 접근 (2) 선생님이 푼 2번

/*
#include <stdio.h>

void main()
{
    int arr[5] = {1,2,3,4,5};
    int *ptr = arr;

}
*/

// 300p 13-1 포인터를 이용한 배열의 접근 (4) 선생님이 푼 4번

#include <stdio.h>

void main()
{
    int arr[6] = {1,2,3,4,5,6};
    int *ptr1 = &arr[0];
    int *ptr2 = &arr[5];

    int i =0;
    for(; i<3 ; i++ )
    {
    //{1,2,3,4,5,6}
    //*ptr1 = *ptr2;
    //{6,2,3,4,5,6}
     int temp = *(ptr1+i);// [ <- swap ]  arr[0] 를 temp에 담아라. (그냥 바꾸면 위에 적은 주석처럼 되기에 temp를 사용)
    *(ptr1+i) = *(ptr2-i);
    *(ptr2-i) = temp;
    }

    for(i=0;i<6;i++)
    {
        printf("arr[%d] = %d\n", i, arr[i]);
    }
  
}