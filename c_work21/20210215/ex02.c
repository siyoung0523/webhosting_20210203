#include <stdio.h>
#include <math.h>

struct point
{
    int xpos;
    int ypos;
};

void main(){
    struct point pos1, pos2;

    double distance;
    fputs("pos1 pos =", stdout);
    scanf("%d %d",&pos1.xpos, &pos1.ypos);
    
    fputs("pos2 pos =", stdout);
    scanf("%d %d",&pos2.xpos, &pos2.ypos);

    distance = sqrt(
        (double) ((pos1.xpos - pos2.xpos)*(pos1.xpos - pos2.xpos))
        +
        (double) ((pos1.ypos - pos2.ypos)*(pos1.ypos - pos2.ypos))
    );
    printf("두 점의 거리는 %g 입니다", distance);

    printf("sizeof(pos1) = %d\n", sizeof(pos1));
    printf("sizeof(pos2) = %d\n", sizeof(pos2));

    printf("&pos1 = %d\n", &pos1);
    printf("&pos1.xpos = %d pos1.ypos = %d\n", &pos1.xpos, &pos1.ypos);
    printf("&pos1.xpos = %d pos2.ypos = %d\n", &pos2.xpos, &pos2.ypos);
    
}