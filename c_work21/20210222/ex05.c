#include<stdio.h>

void main(){
    char str[30];
    int ch;

    FILE * fp = fopen("simple.txt","rt");
    if(fp == NULL){
        puts("파일오픈 실패");
        return;
    }

    ch=fgetc(fp);
    printf("ch = %c\n",ch);
    ch=fgetc(fp);
    printf("ch = %c\n",ch);
    ch=fgetc(fp);
    printf("ch = %c\n",ch);

    fgets(str, sizeof(str),fp);
    printf("%s",str);
    fgets(str, sizeof(str),fp);
    printf("%s",str);
    fclose(fp);
    return;
}