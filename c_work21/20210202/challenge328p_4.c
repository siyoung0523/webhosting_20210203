#include <stdio.h>

void main(){
    /*
    arr[0] = a
    arr[1] = b
    arr[2] = c
    arr[3] = d
    arr[4] = e
    arr[5] = '\0'
    */
    char arr[100];// abcde\0
    char brr[100]; // edcba\0
    int input_len=0;
    int i = 0;
    int chk=1;

    printf("글자입력 : \n");
    scanf("%s",arr);

    printf("arr = %s\n", arr);
    while(1){
        // arr[0] = a, arr[1] = b, arr[2] = c, arr[3] =d, arr[4] = '\0'
        if(arr[i]=='\0'){
            input_len = i;
            break;
        }
        i++;
    }
    printf("입력한 물자열 길이 input_len = %d\n", input_len);

    //edcba\0
    brr[input_len]='\0';
    int j = input_len-1;
    for(i=0; i<input_len;i++,j--){
        brr[j]=arr[i];
    }

    // printf("%s",brr);


   for(i=0;i<input_len;i++){
        if(arr[i] != brr[i]){
            chk = 0;
            printf("회문이 아닙니다.");
            break; //가장 가까운 반복구문을 빠져나가는 거지, if문을 빠져나가는게 아님.
        }
    }
    if(chk){
        printf("회문입니다.");
    }
    



}