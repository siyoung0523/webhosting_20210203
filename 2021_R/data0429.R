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

exam1 <- c('2021-04-29 수입3000원','2021-04-30 수입4500원','2021-05-01 수입5500원')
str_extract_all(exam1, '[0-9]{4}[가-힣]{1}')



#2. 1번에서 '-'를 '/'로 변경
# --> str_replace_all()

str_replace_all(exam1, '-', '/')


#3. 임의의 국어, 영어, 수학점수를 가지는 벡터 3개 생성
#   ex) kor <- c(90, 85, 90)
kor=c(80, 70, 90)
eng=c(75, 85, 80)
mat=c(90, 95,90)


#4. 3번 벡터를 가지는 data frame 생성

exam4 <- data.frame(
  kore <- kor,
  engl <- eng,
  math <- mat)
exam4

#5. 국,영,수 data frame에서 최대값 구하기
#   --> apply(object, 1, max) : 가로방향
#   --> apply(object, 2, max) : 세로방향

apply(exam4, 1, max) #행 기준. 행 중 가장 큰 수 찾음.
apply(exam4, 2, max) #열 기준. 열 중 가장 큰 수 찾음.



txtData <- read.table('res/data_ex.txt')
View(txtData)

#header : 데이터에서 1행이 변수인지 판별
# ex) 1행이 변수명이면 header = TRUE

# skip : 특정행까지 제외하고 데이터 가져오기
# ex) 3행부터 데이터 가져오기 --> skip = 2

# nrows : 특정 행까지 데이터 가져오기
# ex) 7행까지 데이터 가져오기 --> nrow = 7

# sep : 데이터 구분자 지정
# ex) 쉼표로 구분된 데이터 집합 --> ','

txtData1 <- read.table('res/data_ex1.txt', header = TRUE, sep = ',')
View(txtData1)
varName <-  c('ID', '성별', '나이', '지역')
txtVar <- read.table('res/data_ex2.txt',
                     sep = ',',
                     col.names = varName)
View(txtVar)

# .rda(통계용 파일)
id <- c(1, 2, 3, 4, 5)
name <- c('홍길동', '김길동', '이길동', '박길동', '최길동')
rdaData <- data.frame(ID=id, NAME=name)

#rad file 저장
save(rdaData, file='res/data_ex.rda')
load('res/data_ex.rda')
View(rdaData)

#csv는 텍스트 파일(엑셀로도 열리긴 함)
id <- c(1, 2, 3, 4, 5)
name <- c('홍길동', '김길동', '이길동', '박길동', '최길동')
dataCsv <- data.frame(ID = id, NAME = name)
write.csv(dataCsv, file='res/data_ex.csv')

dataTxt <- data.frame(ID = id, NAME = name)
write.table(dataTxt, file='res/data_ex_sav.txt')

titanic <- read.csv('https://vincentarelbundock.github.io/Rdatasets/csv/COUNT/titanic.csv')
titanic #titanic.csv 파일을 인터넷으로 부터 가져옴

dim(titanic) # 행 열 갯수
str(titanic) # 열 별 속성

table(titanic$age)
table(titanic$sex)
table(titanic$survived)

head(titanic)
tail(titanic)

# 교차 분할표
tab <- table(titanic$survived, titanic$sex)
tab

plot(tab, col=c('gray', 'blue'),
     main = '성별에 따른 생존 여부')
barplot(tab, col=c('gray', 'blue'),
        main = '성별에 따른 생존 여부')

#titanic.txt 파일 생성
write.table(titanic, 'res/titanic.txt',
            row.names = FALSE)

View(titanic)

titanicDf <- read.table(file='res/titanic.txt',
                        sep='', header = TRUE)
View(titanicDf)

#titanic.csv 파일 만들기 row.names과 quote는 F로 많이 씀.
write.csv(titanicDf,'res/titanic.csv',
          row.names = F,
          quote = F)

library(writexl)

write_xlsx(x=titanicDf, 
           path='res/titanic.xlsx', 
           col_names = T)

# 1. 동전 앞면과 뒷면에 대한 확률 분포 함수 구현
# 랜덤 생성 : runif() -> runif(5, min=Φ, max=1)

runif(5, min = 0, max = 1)
#선생님이 한 것
coinTest <- function(n){
  r <- runif(n, min=0, max=1)
  res <- c() #벡터 생성
  for(i in 1:n){
    if(r[i] <= 0.5){
      res[i] <- 0
    }
    else {
      res[i] <-1
    }
  }
  return(res)
}

res <- coinTest(5)
res
hist(res) # 정확한 수량을 가리키는게 아니라 분포임.

monteTest <- function(n){
  cnt <- 0
  for ( i in 1:n){
    cnt <- cnt + coinTest(1)
  }
  result <- cnt / n
  return(result)
}
#앞면 나오면 1이 나오는 횟수 / 전체 시도한 횟수
monteTest(2) # 2번 했을 때 앞이 나올 확률
monteTest(10000)
monteTest(1000000)
  

#내가 한 것
coinTest <- function(c){
  x <- 0
  while ( x < c){
  a = runif(1, 0, 1)
  if(a>0.5){
  a=1
  }else{
  a=0
  }
  x<-x+1
  print(a)
}
}
coinTest(20)

# 2. 동전 20회 던졌을 때 앞, 뒤를 출력
# 출력 형태 -> 1 0 1 0 1

#


