#include <stdio.h>

typedef struct
{
    int xpos;
    int ypos;
} Point;

void main(){
    Point p1 = {10,20};
    Point p2 = p1;
    
    printf("p1.xpos = %d, p1.ypos = %d\n", p1.xpos, p1.ypos);
    printf("p2.xpos = %d, p2.ypos = %d\n", p2.xpos, p2.ypos);

    p1.xpos = 30;

    printf("p1.xpos = %d, p1.ypos = %d\n", p1.xpos, p1.ypos);
    printf("p2.xpos = %d, p2.ypos = %d\n", p2.xpos, p2.ypos);


}