
/* 내가 푼 것
#include <stdio.h>
int i = 0, j = 0;


int bubble()
{	
	int temp = 0;

	if (i > j)
	{
		temp = i;
		i = j;
		j = temp;
	}
	return 0;
}

int main(void)
{
	int dan = 0, num = 0;
	printf("어디서 부터 어디까지 구구단을 출력할 지 입력하시오.\n");
	scanf_s("%d  %d", &i, &j);

	bubble();

	printf("%d, %d\n", i, j);

	for ( ; i <= j; i++)
	{
		for (num = 2; num < 10; num++)
		{
			printf("%d * %d = %d\n", i, num, i * num);
		}
	}

	return 0;
}
*/

//재귀함수

/*
#include <stdio.h>

int doA(int a)
{	printf("a = %d",a);

	if(a>0)
		doa(a-1);

	else{
		return a;
	}
}

void main()
{
	doA(3);
}
*/

/* 재귀함수 문제 2번 풀이
#include <stdio.h>

int doA(int a)
{	printf("a = %d",a);

	if(a>0)
	{
		/*
		 2* doA(2)
		2*2*doA(1)
		2*2*2*doA(0)
		
		return 2*doa(a-1);
	}
	else{
		return 1;
	}
}

void main()
{
	doA(3);
}
*/

/*
#include <stdio.h>
int main(void)
{
	int num1 = 10;
	int num2 = 20;
	int temp = 0;

	int* ptr1 = &num1;
	int* ptr2 = &num2;
	(*ptr1) += 10;
	(*ptr2) -= 10;

	temp = ptr1;
	ptr1 = ptr2;
	ptr2 = temp;

	printf("%d, %d", *ptr1, *ptr2);

	return 0;


}
*/

/* 선생님 풀이
#include <stdio.h>
void main()
{
	int num1 = 10, num2 = 20;
	int* ptr1 = &num1, * ptr2 = &num2;

	printf("num1=%d \n", num1);
	printf("*ptr1=%d \n", *ptr1);
	printf("num2=%d \n", num1);
	printf("*ptr2=%d \n", *ptr2);

	*ptr1 = *ptr1 + 10; //num1 = 20 *ptr1 = 20
	*ptr2 = *ptr2 - 10; //num2 = 10 *ptr2 = 10

	ptr1 = &num2;
	ptr2 = &num1;
	printf("\n");
	printf("num1=%d \n", num1); //20
	printf("*ptr1=%d \n", *ptr1); //10
	printf("num2=%d \n", num1); //10
	printf("*ptr2=%d \n", *ptr2); //20
	*/