#include <stdio.h>

void main(){
    int ch;
    while(1){
        ch = getchar();
        if(ch==EOF)
            break;
        putchar(ch);
    }
}