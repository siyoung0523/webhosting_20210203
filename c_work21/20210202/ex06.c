#include <stdio.h>

int question_387p_1(void){

    int* arr1[5];
    int* arr2[3][5];

    int* *ptr1 = arr1;
    int* (*ptr2)[5]=arr2;
}

/* 387p_2

void SimpleFuncOne(int* ptr1, int* ptr2){

}

void SimpleFuncTwo(int (*ptr3)[4], int (*ptr4)[4]){

}

int main(void){
    int arr1[3];
    int arr2[4];
    int arr3[3][4];
    int arr4[2][4];
}

SimpleFuncOne(arr1, arr2);
SimpleFuncTwo(arr3, arr4);
*/

/* 388p_3

void ComplexFuncOne(int** ptr1, int *(*ptr2)[5]){

}

void ComplexFuncTwo(int*** ptr3, int** (*ptr4)[5]){

}

int main(void){
    int* arr1[3];
    int* arr2[3][5];
    int** arr3[5];
    int*** arr4[3][5];
}

ComplexFuncOne(arr1, arr2);
ComplexFuncTwo(arr3, arr4);
*/

