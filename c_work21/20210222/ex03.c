#include <stdio.h>

int main(){
    int ch;
    FILE *fp = fopen("aaa.txt", "rt");
    if(fp==NULL){
        puts("그런파일 읽을 수 없음");
        return -1;
    }

    for(int i = 0; i<3 ; i++){
        ch = fgetc(fp);
        printf("ch = %c \n", ch);
    }
    fclose(fp);
    return 0;
}