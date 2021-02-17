#include <stdio.h>

typedef int INT;
typedef int * PTR_INT;
typedef unsigned int UINT;
typedef unsigned int* PTR_UINT;

typedef unsigned char UCHAR;
typedef unsigned char* PTR_UCHAR;

void main(){
    INT num = 10;
    PTR_INT pNum = &num;

    UINT unum = 20;
    PTR_UINT pUnum = &unum;

    UCHAR ch = 'A';
    PTR_UCHAR pCh = &ch;

    printf("num=%d\n",num);
    printf("pNum=%d\n",*pNum);
    
    printf("unum=%d\n",unum);
    printf("pUnum=%d\n",*pUnum);
    
    printf("ch=%c\n",ch);
    printf("pCh=%d\n",*pCh);
}

