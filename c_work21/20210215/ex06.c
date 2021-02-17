#include <stdio.h>

struct point
{
    int xpos;
    int ypos;
    struct point *ptr;
};

void main(){
    struct point pos1 = {1,1};
    struct point pos2 = {2,2};
    struct point pos3 = {3,3};

    pos1.ptr = &pos2;
    pos2.ptr = &pos3;
    pos3.ptr = &pos1;

    printf("점들 연결관계\n");
    printf("pos1.xpos = %d pos1.ypos = %d \n",pos1.xpos,pos1.ypos);
    printf("(pos1.ptr)->xpos = %d (pos1.ptr)->ypos = %d \n\n",
        (pos1.ptr)->xpos,(pos1.ptr)->ypos);
        
    printf("pos2.xpos = %d pos2.ypos = %d \n",pos2.xpos,pos2.ypos);
    printf("(pos1.ptr)->xpos = %d (pos1.ptr)->ypos = %d \n\n",
        (pos2.ptr)->xpos,(pos2.ptr)->ypos);
        
    printf("pos3.xpos = %d pos3.ypos = %d \n",pos3.xpos,pos3.ypos);
    printf("(pos3.ptr)->xpos = %d (pos3.ptr)->ypos = %d \n\n",
        (pos3.ptr)->xpos,(pos3.ptr)->ypos);
}