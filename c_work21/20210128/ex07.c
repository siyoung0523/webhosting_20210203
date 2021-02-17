/* 320p 문제1
#include <stdio.h>

int SquareByValue(int i)
{
    return i*i;
}

void SquareByReference(int *ptr)
{
    int num = *ptr;
    *ptr = num*num;
}

int main()
{
    int i = 10;
    printf("SquareByValue : %d\n", SquareByValue(i));
    int num = 10;
    SquareByReference(&num);
    printf("SquareBuReference : %d\n", num);
    return 0;
}
*/

/* 320p 문제2
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


/*
#include <stdio.h>

void odd(int *arr)
{
    int i=0;
    for(;i<10;i++)
    {
        if(*(arr+i)%2==1)
        {
            printf("%d, ",*(arr+i));
        }
    }

}

void even(int *arr)
{
    int i=0;
    for(i=0;i<10;i++)
    {
        if(*(arr+i)%2==0)
        {
            printf("%d, ",*(arr+i));
        }
    }
}

int main()
{
    int a = 0, b = 0;
    int arr[10];
    
    for(;a<10;a++)
    {   
        printf("press number : ");
        scanf("%d", &b);
        arr[a] = b;
        printf("%d", b);
    }
  
    
    printf("odd number :");
    odd(arr);
    printf("\n");
    printf("even number :");
    even(arr);
}
*/

/*
#include <stdio.h>

int main()
{
    int a = 0;
    int count = 0;
    printf("2진수로 변환할 10진수 값을 입력하시오.");
    scanf("%d", &a);
    
    while(count==0)
    {
        if(a/2!=1)
        printf("1")
        else if(a%2==0)
        printf("0")
        count++;
    }
    
    
}
*/