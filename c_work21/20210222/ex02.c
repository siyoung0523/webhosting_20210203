#include <stdio.h>



void main(){
    FILE *fp1 = fopen("aaa.txt", "wt");

    fputc('A',fp1);
    fputc('A',fp1);
    fputc('A',fp1);

    fclose(fp1);
}