#include <stdio.h>

struct point
{
    int xpos;
    int ypos;
};

void main(){
    struct point pos1 = {10,20},
                pos2 = {100, 200};

    struct point *pptr = &pos1;

    (*pptr).xpos += 4;
    (*pptr).ypos += 5;

    printf("(*pptr).xpos = %d", pptr->xpos);
    printf("(*pptr).ypos = %d\n", pptr->ypos);

    pptr = &pos2;

    pptr->xpos += 1;
    pptr->ypos += 2;

    printf("(*pptr).xpos = %d", (*pptr).xpos);
    printf("(*pptr).ypos = %d\n", (*pptr).ypos);


}