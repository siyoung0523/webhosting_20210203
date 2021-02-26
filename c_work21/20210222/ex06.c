/*
프로그램상에서 mystory.txt라는 이름의 파일을 생성하여
본인의 이름, 주민번호, 전화번호를 저장하는
프로그램을 작성하자
단 저장의 형태는 다음과 같아야한다.(#문자도 함께 저장해야한다)
#이름:윤성우
#주민번호:900208-1012589
#전화번호:010-9946-2222
그리고 저장이 완료되면 메모장으로 확인이 가능해야 한다.
*/

#include <stdio.h>
void main(){
    FILE * fp = fopen("mystroy.txt","wt");
    char a[40];
    printf("이름 입력 하세요\n");
    fgets(a,sizeof(a),stdin);
    printf("a = %s",a);
    fputs("#이름 : ", fp);
    fputs(a,fp);

    printf("주민번호 입력 하세요\n");
    fgets(a,sizeof(a),stdin);
    printf("a = %s",a);
    fputs("#주민번호 : ", fp);
    fputs(a,fp);

    printf("전화번호 입력 하세요\n");
    fgets(a,sizeof(a),stdin);
    printf("a = %s",a);
    fputs("#전화번호 : ", fp);
    fputs(a,fp);
    fclose(fp);
}