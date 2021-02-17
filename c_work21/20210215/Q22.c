#include <stdio.h>

struct employee{
    char name[20];
    char num[13];
    int pay;
};

void p458_22_1(){
    struct employee man;

    printf("이름 :");
    scanf("%s", man.name);

    printf("\n주민등록번호 :");
    scanf("%s", man.num);


    printf("\n급여 :");
    scanf("%d", &man.pay);

    printf("이름은 %s \n", man.name);
    printf("주민등록번호는 %s \n", man.num);
    printf("급여는 %d" ,man.pay);
}



void main(){
    struct employee arr[3];
    int i = 0;

    for(i=0;i<3;i++){
        printf("이름 =");
        scanf("%s", arr[i].name);

        printf("주민등록번호 =");
        scanf("%s", arr[i].num);

        printf("급여 =");
        scanf("%d", &arr[i].pay);
    }
        for(i=0;i<2;i++){
            printf("이름 : %s\n",arr[i].name);
            printf("주민번호 : %s\n",arr[i].num);
            printf("급여 : %d\n",arr[i].pay);
        } 
        
        
    }

