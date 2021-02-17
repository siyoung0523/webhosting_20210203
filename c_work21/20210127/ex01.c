
/*
#include <stdio.h>

void doA(int a)
{
	a=20;
}
void main()
{
	int a = 10;
	int num1=0, num2=0;

	print("%d",a); //10
	doA(a);
	print("%d",a); //10
}
*/

/*
#include <stdio.h>

void doA(int *a) //주소값을 받기 위해서 포인터를 사용함
{
	*a=20;
}
void main()
{
	int a = 10;
	int num1=0, num2=0;

	print("%d",a); //10
	doA(&a); //a의 주소값을 넘겨주는 것. 주소값은 10을 가르킴
	print("%d",a); //20
}
*/

#include <stdio.h>

void doA(int *a) //주소값을 받기 위해서 포인터를 사용함
{
	*a=20;
    printf("doA a value a = %d\n", a);
    printf("doA a point value *a = %d\n", a);
     }
void main()
{
	int a = 10;
	int num1=0, num2=0;

    printf("main address is\n");
    printf("&a = %d\n", &a);
    printf("main address is\n");
    printf("a = %d\n",a);

	doA(&a); //a의 주소값을 넘겨주는 것. 주소값은 10을 가르킴
}