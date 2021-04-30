#벡터는 동일한 스칼라로 이루어진 1차원 배열
#r은 인덱스가 0이 아닌, 1부터 시작함.
ex_vector <- c(1, 2, 3, 4, 5, 6)
ex_vector
print(ex_vector)
ex_vector[c(1,5)] #1번째, 5번째 인덱스 가져오기
ex_vector[1:3] # 1~3 인덱스 가져오기

ex_vector <- c('홍길동', '김길동', '박길동')
ex_vector[c(1,3)]
ex_vector[1:2]

#동일한 벡터들의 2차원 형태 메트릭스라고 함.
ex_vector <- c(1:6)
matrix(ex_vector, nrow=2, ncol=3) #2행 3열로 표시하라. [열에 먼저 들어감]
matrix(ex_vector, nrow=3, ncol=2) #3행 2열로 표시하라.
matrix(ex_vector, nrow=3, ncol=2, byrow=T) # 3행 2열 [행에 먼저 들어감]


#r에서 arr은 3차원을 말함
arr <- c(1:9)
array(arr, dim=c(2, 2, 3)) #2x2행렬을 3개로 정리해라
array(arr, dim=c(2, 2, 3),
      dimnames = list(c('1행','2행'),
                      c('1열','2열'),
                      c('1페이지', '2페이지', '3페이지')))


#[연습문제]
#1. 'R' 문자가 5회 반복 처리되는 벡터
# ----> rep() 함수 사용
vec1 <- rep('R', 5)
vec1

#2. 1~10까지 3간격으로 연속되는 벡터
# ----> seq() 함수
vec2 <- seq(1, 10, by=3)
vec2

#3. 1~10까지 3간격으로 연속된 정수가 3회 반복
# ---> rep() 함수
vec3 <- rep(vec2, 3)
vec3

#4. 2번, 3번이 모두 포함되는 벡터
vec4 <- c(vec2, vec3)
vec4

#5. 4번에서 홀수번째 값들만 저장하는 벡터
vec5 <- vec4[seq(1, 16, by=2)]
vec5

#======================list=========================================

# list는 다양한 데이터 타입을 수용할 수 있다.
list1 <- list(c(1,2,3),c('홍길동','이길동'),c(TRUE,12.5))
list1

list2 <- list(c('홍길동','김길동','고길동'),
              c(20, 30, 40))
names(list2) <- c('NAME', 'AGE') #컬럼에 대한 이름 첫번째 벡터 name, 두번째 나이
list2
print(list2[1])
#list는 2차원 배열과 비슷하지만, 2차원 배열은 같은 타입만 저장가능하지만,
#list는 다른 타입도 저장 가능.
#r에서 같은 타입으로 이루어져 있다면 matrix, 다른타입이면 list
print(list2$NAME[1]) #이름에 접근하기. $는 '.'과 비슷함.
print(list2$AGE[3])

#list의 다른 선언법
member <- list(name=c('홍길동','전우치'),
               age=c(200,300),
               address=c('한양','강원'),
               gender=c('남자','남자'),
               home=c('홍대감댁','두메산골'))

member$name #name만 출력
member$name[1] #name중 첫번째 값 출력

member$age[1] <- 100 # 값 변경
member$address[1] <- '경기'
member$home[1] <- '기와집'
member


#=============== data frame ================================

id <- c(1, 2, 3, 4, 5)
gender <- c('M', 'F', 'M', 'F', 'F')
age <- c(25, 32 ,45, 51, 12)
addr <- c('대구시 동구 신암1동', '대구시 동수 신암 2동', '대구시 동구 신암3동',
          '대구시 동구 신암4동', '대구시 동구 신암 5동')
dataValue <- data.frame(id, gender, age, addr)
dataValue

mode(dataValue) # 속성을 보여줌, list 서로다른 타입으로 이뤄진 것
class(dataValue) # 
View(dataValue) # dataframe 을 시트 형태로 띄움

dataVal <- edit(data.frame())
dataVal


#데이터 프레임 만드는법 1.
id_r1 <- c('a1', 'a2', 'a3', 'a4')
name_r1 <- c('김길동', '이길동', '홍길동', '박길동')
stu_r1 <- data.frame(id_r1, name_r1)
stu_r1

#데이터 프레임 만드는법 2.
stu_r2 <- data.frame(
  id_r2 = c('j1', 'j2', 'j3', 'j4'),
  name_r2 = c('전우치', '김우치', '이우치', '박우치'))
stu_r2


names(stu_r1) <- c('ID', '이름')# dataframe의 열 이름 설정
names(stu_r2) <-names(stu_r1) #두 dataframe의 열 이름을 갖게 해야 결합 가능

#행결합
studRbind <- rbind(stu_r1, stu_r2)
studRbind 


#열 결합할 데이터 프레임 생성
stu_c1 <- data.frame(
  id = c('i1', 'i2', 'i3'),
  name = c('홍길동', '김길동', '박길동'))
names(stu_c1) <- c('ID', '이름')
stu_c1

stu_c2 <- data.frame(
  age = c(20, 30, 40),
  gender = c('M', 'F', 'M'))
names(stu_c2) <- c('나이', '성별')
stu_c2

#열 결합
studCbind <- cbind(stu_c1, stu_c2)
studCbind


#join 할 데이터 프레임 생성
stu_j1 <- data.frame(
  id = c('i1', 'i2', 'i3'),
  name = c('홍길동', '김길동', '박길동'))
names(stu_j1) <- c('ID', '이름')
stu_j1

stu_j2 <- data.frame(
  id = c('i2', 'i3', 'i4'),
  gender = c('M', 'F', 'M'))
names(stu_j2) <- c('ID', '성별')
stu_j2

studJoin <- merge(
  x = stu_j1, y = stu_j2, by ='ID') #ID가 일치하는 값들을 병합해라
studJoin


#====================라이브러리==============================

#install.packages('stringr') #필요한 라이브러리 설치
library(stringr)

strData <- c('홍길동35이순신45유관순25')
#extract - 라이브러리의 함수
str_extract(strData, '[1-9]{2}') # '1~9'로 만들어진 숫자중 연속으로 2개 붙어있는 처음 수 추출 
str_extract_all(strData, '[1-9]{2}') # '1~9'로 만들어진 숫자중 연속으로 2개 붙어있는 모든 수 추출


strData1 <- 'hongkd105leess1002you25강감찬2005'
str_extract_all(strData1, '[a-z]{3}') # 알파벳으로 시작하는 3개의 문자열을 잘라서 가져옴.
str_extract_all(strData1, '[a-z]{3,}') # 알파벳 3자도 가지고 오면서, 만족하지 않는 문자도 가져옴
str_extract_all(strData1, '[a-z]{3,5}') #3자 또는 5자 가져옴


str_extract_all(strData1, 'hong') # hong 추출
str_extract_all(strData1, '25') # 25 추출
str_extract_all(strData1, '[가-힣]{3}') #한글 추출
str_extract_all(strData1, '[a-z]{3}') #영어 추출
str_extract_all(strData1, '[0-9]{4}') #숫자 추출


str_extract_all(strData1, '[^a-z]') #알파벳을 제외한 정보들 [^는 제외를 의미]
str_extract_all(strData1, '[^a-z]{4}') #알파벳을 제외한 정보들을 4자로 구성해서 추출
str_extract_all(strData1, '[^가-힣]{5}')
str_extract_all(strData1, '[^0-9]{3}')

name <- '홍길동1234,이순신5678,김길동1011'
str_extract_all(name,'\\w{7,}') #'7자'or','로 구분해서 문자열을 추출하라.
str_extract_all(name,'\\d') # d(decimal)- 10진수
str_match_all(name,'\\d')

size <- str_length(name) #길이 표시
size

str_locate(strData1, '강감찬') #특정 데이터가 들어간 인덱스 위치 정보
strDataSub <- str_sub(strData1, 1, str_length(strData1)-10)
#1 - start position, 'str_length(strData1)-10' - final position
#즉 처음부터 strData 총 인덱스의 '-10'만큼 출력해라.
strDataSub

upstr <- str_to_upper(strDataSub); #소문자를 대문자로 바꿔줌.
upstr

str_to_lower(upstr) #대문자를 소문자로 바꿔줌.

jumin <- '123456-2234567'
str_extract(jumin, '[0-9]{6}-[1-4]{1}[0-9]{6}') #올바른 주민등록 번호인지 확인하는 것

# 1974년 미국 자동차 잡지 data frame
mtcars
# 구조 [column별로 수치를 보여줌.]
str(mtcars)
# 상위 6개 추출
head(mtcars)
# 하위 6개 추출
tail(mtcars)
# 데이터 프레임 크기 [행과 열의 갯수 보여줌] 
dim(mtcars) 
# 열의 갯수 (속성의 갯수 보여줌)
length(mtcars)
# 행의 갯수 
length(mtcars$cyl)
# 속성 정보들 출력
names(mtcars)
# 데이터 프레임의 종류
mode(mtcars)
# 속성의 타입
sapply(mtcars, class)
