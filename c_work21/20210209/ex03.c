#include <stdio.h>

void main(){
    char str[7];
    int i = 0;

    for(i = 0; i<3 ; i++){
        fgets(str, sizeof(7),stdin);
        printf("Read %d : %s", i, str);
    }
}