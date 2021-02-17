#include <stdio.h>

struct point
{
    int xpos;
    int ypos;
};
typedef struct point Point;
typedef struct person
{
    char name[20];
    char phone[20];
    int age;

} Person;

void main(){
    Point pos = {10,20};
    Person man = {"이승기","010-1111-1111",37};
    printf("pos.xpos = %d pos.ypos = %d\n",pos.xpos,pos.ypos);
    printf("man.name = %s man.phone = %s\n",man.name,man.phone);
    printf("man.age = %d \n", man.age); 
}