library(readxl)
exdata1 <- read_excel('res/sample1.xlsx') #res폴더의 파일 읽어오기
View(exdata1) #R에서 테이블 보여줌
str(exdata1) # data set에 대한 변수 정보
dim(exdata1) #차원 즉, 행과 열
ls(exdata1) #list 

library('dplyr') #테이블을 쉽게 수정할 수 있는 라이브러리
exdata1 <- rename(exdata1, Y17_AMT=AMT17, Y16_AMT=AMT16)
#Y17_AMT 를 AMT로 바꿈, 여기 메모리상에서만 바뀌고 엑셀은 안바뀜;
View(exdata1)

exdata1$AMT_NEW <- exdata1$Y17_AMT + exdata1$Y16_AMT #새로운 변수 AMT_NEW를 만듦
exdata1$CNT_NEW <- exdata1$Y17_CNT + exdata1$Y16_CNT #새로운 변수 CNT_NEW를 만듦
View(exdata1)

exdata1$AVG_AMT <- exdata1$AMT_NEW / exdata1$CNT_NEW #평균값을 구함
View(exdata1)

exdata1$AVG_GR <-
  ifelse(exdata1$AGE >= 50, 'A1',
         ifelse(exdata1$AGE >= 40, 'A2',
                ifelse(exdata1$AGE >= 30, 'A3',
                       ifelse(exdata1$AGE >= 20, 'A4', 'A5'))))
#새로운 속성값을 만들어서 50이상이면 A1, 50미만 40이상 A2 ... 나머지 A5
View(exdata1)

#특정 속성값을 가져올때 쓰는 것 select 쿼리랑 비슷
exdata1 %>% select(ID)
exdata1 %>% select(ID, AREA, Y17_CNT)

exdata1 %>% select(-AREA) #AREA정보 빼고 불러옴
exdata1 %>% select(-ID, -SEX, -AGE)

exdata1 %>% filter(AREA == '서울') #AREA가 서울인 정보면 출력
exdata1 %>% filter(AREA == '서울' & Y17_CNT >= 10) # 조건 2개

exdata1 %>% arrange(AGE) #정렬 - 나이 오름차순으로
exdata1 %>% arrange(desc(AGE)) # 정렬 -나이 내림차순

exdata1 %>% summarise(TOT_Y17_AMT=sum(Y17_AMT)) #합계
exdata1 %>% group_by(AREA) %>%
  summarise(SUM_AMT17_BY_AREA=sum(Y17_AMT)) # 그룹별 합계 - 지역별 합계



# [엑셀 데이터를 합치는 방법]

#합칠 엑셀
mData <- read_excel('res/sample1_m.xlsx')
View(mData)#남자만 있는 엑셀
fData <- read_excel('res/sample1_f.xlsx')
View(fData)#여자만 있는 엑셀

exdata1_bindjoin <- bind_rows(mData, fData) # 행을 합침
View(exdata1_bindjoin)#두 엑셀을 합침

#합칠 엑셀
jeju_y17 <- read_excel('res/sample1_jeju_17.xlsx')
View(jeju_y17) # 16년 자료 없는 엑셀
jeju_y16 <- read_excel('res/sample1_16.xlsx')
View(jeju_y16) # 16년 자료만 있는 엑셀

#left
bind_col <- left_join(jeju_y17, jeju_y16, by='ID')#ID를 기준으로 열을 합침
#by ='ID'는 참조키, jeju_y17의 ID가 jeju_y16의 참조키
View(bind_col)

#right
bind_col2 <- right_join(jeju_y17, jeju_y16, by='ID')
View(bind_col2)

#inner
bind_col_inner <- inner_join(jeju_y17, jeju_y16, by='ID')#내부 조인
#위와 다른 것 안보임
View(bind_col_inner)

#full
bind_col_full <- full_join(jeju_y17, jeju_y16, by='ID')
View(bind_col_full)



x1 <- c(1, 2, 3, 4, 5, 6, 100)
avg <- x1/7
avg
# 평균을 구하는 함수
mean(x1) 

#na발생
data <- c(10, 20, 5, 4, 40, 7, NA, 2, NA) #NA는 null값. 

na <- function(x) {
  #방법1. na를 제거하는
  print(x)
  print(mean(x, na.rm=T))#na정보를 remove하겠다. (제거 하지 않으면 정확한 정보 x)

  #방법2. na를 0으로 대체 (가장 안좋은 방법 )
  data = ifelse(!is.na(x), x, 0) # na인지 아닌지 판단해서 아니면 x, 맞으면 0
  #na를 0으로 대체함->(NA는 0이 아님 !) [3항 연산자와 비슷함]
  print(data)
  print(mean(data))
  #NA를 0으로 한다는 것은 데이터를 왜곡시킴. 가장 안좋은 방법임.
  
  #방법3. na를 주어진 값의 평균으로 대체
  data2 = ifelse(!is.na(x),x, round(mean(x, na.rm=T),2)) 
  #누락된 정보인지 아닌지 판단해서 아니면x, 맞으면 평균을 구해서 그 값을 대체
  print(data2)
  print(mean(data2))
  }
na(data)

#중앙값(중위수)
#짝수의 경우) 가운데 2개의 값을 더해서 2로 나눈 값
#홀수의 경우) 중앙값
x2 <- c(1, 2, 3, 4, 5, 100)
median(x2)
max(x2) #최댓값
min(x2) #최솟값
range(x2) #해당 데이터의 범위

# 분위수(변위값)
# 1사분위수(Q1), 2사분위(Q2), 3사분위(Q3)
quantile(x2) # 4구간으로 나누는 지점 값을 구함.
quantile(x2, probs = 0.25)
quantile(x2, probs = 0.5)
quantile(x2, probs = 0.75)
quantile(x2, probs = 0.8) #원하는 지점의 분위수 볼 수 있음.

#표준편차 - 평균에 대한 오류
#실제 데이터값이 평균을 기준으로 할때의 분포값
#기준 값을 두고 '-''+'영역 오차범위 산정
#편차가 크면 클수록 분포도가 넓게 퍼짐.
sd(x2)

#분산 - 편차 제곱의 합
var(x2)

x <- c(10, 20, 30, 40, 50, 60)
var_sd <- function(x){
  # 데이터가 평균으로부터 퍼져있는 정도
  n <- length(x)
  var <- sum((x-mean(x))^2) / (n-1)
  sd <- sqrt(var)
  cat('분산: ', var, '\n')
  cat('표준편차: ', sd)
}
var_sd(x)

#정규분포 - 동일한 확률을 가진 변수들이 적당히 크면,
#해당 변수들의 평균은 일정한 패턴을 가지는 분포.
#fBasics 라이브러리


library(fBasics)
#x 변수 첨도 - 데이터 분포가 뾰족한 정도. [뾰족한 것 - 모여져 있다, 둥근 - 흩어져있다]
# 통계량이 0보다 크면 정규분포 대비 뾰족한 형태.
# 0보다 작으면 정규분포 대비 편평한 형태.
kurtosis(x)

#x 변수 왜도 - 데이터 분포의 비대칭성
#통계량의 절대값이 클수록 비대칭이 심함.
# '+'값이면 오른쪽으로 꼬리가 길고,
# '-'값이면 왼쪽으로 꼬리가 긴 형태.
skewness(x)

library(reshape2)
airquality# 'airquality'는 R안에 내장된 정보
head(airquality) 
#names(airquality) <- tolower(names(airquality)
#melt_test <- melt(airquality)
#head(melt_test)
str(airquality)

#melt - 열의 정보를 보기 편하게 가공
melt_test2 <- melt(airquality,
                   id.vars = c('Month', 'Wind'), #id.vars는 기준열
                   measure.vars ='Ozone') #measute.vars는 변환열
#month와 wind를 기준으로 놓고, Ozone값 출력
melt_test2

melt_test3 <- melt(airquality,
                   id.vars = c("Month","Day"),
                   variable.name = "climate_variable",
                   value.name = "climate_value")

head(melt_test3)
