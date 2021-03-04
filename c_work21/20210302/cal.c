#ifndef _MSTRUCT_H_
#define _MSTRUCT_H_
#include "mstruct.h"

int c_square(x){
    return x*x;
}

void prontMPoint(MPoint point){
    printf("point x = ", point.x);
    printf("point y = ", point.y);
}