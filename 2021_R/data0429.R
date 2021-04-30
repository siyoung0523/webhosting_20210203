#Excel을 쓰기위한 라이브러리
library(readxl)
library(xlsx)

#엑셀 불러오기
excelData <-read_excel('res/data_ex.xlsx') #상대경로임. 내 파일 기준
View(excelData)

#엑셀 콘솔에서 출력
studentx <- read.xlsx(file.choose(),
                      sheetIndex = 1,
                      encoding ='UTF-8')
studentx

View(studentx)

#연습문제
#1. "2021-04-29 수입 3000원",
#   "2021-04-30 수입 4500원",
#   "2021-05-01 수입 5500원"
# 1번의 문자열을 이용하여 아래와 같이 출력
# 출력 형태 > "3000원" "4500원" "5500원"

library(stringr)

exam1 <- c('2021-04-29 수입3124원','2021-04-30 수입450023453원','2021-05-01 수입5500원')
str_extract_all(exam1, '[1-9]{4}')



#2. 1번에서 '-'를 '/'로 변경
# --> str_replace_all()

str_replace_all(exam1, '-', '/')


#3. 임의의 국어, 영어, 수학점수를 가지는 벡터 3개 생성
#   ex) kir <- c(90, 85, 90)
exam3 <- list(kor=c(80, 70, 90),
              eng=c(75, 85, 80),
              math=c(90, 95,90))
exam3

#4. 3번 벡터를 가지는 data frame 생성

exam4 <- data.frame(
  kor <- c(80, 70, 90),
  eng <- c(75, 85, 80),
  math <- c(90, 95,90))
exam4

#5. 국,영,수 data frame에서 최대값 구하기
#   --> apply(object, 1, max) : 가로방향
#   --> apply(object, 2, max) : 세로방향

apply(exam4, 1, max)
apply(exam4, 2, max)










