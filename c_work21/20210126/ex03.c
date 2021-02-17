#include <stdio.h>

void main()
{
    int num = 8; //num의 선언
    int *pnum; // pointer pnum선언
    pnum = &num; // num의 주소를  pnum에 넣음.
    //6번과 7번을 한줄에 적고 싶으면 'int *pnum = &num;' 으로 적어야함. why? 선언할땐 주소값을 바로 할당할 수 있기 때문.
    printf("pnum value is \n");
    printf("*pnum = %d\n",*pnum);
    printf("pnum address value is \n");
    printf("*pnum = %d\n",pnum); //주소 7572 

    printf("*&num = %d",&num); //주소 7572

}