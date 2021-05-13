install.packages('readxl')
library(readxl)
exdata1 <- read_excel('res/sample1.xlsx')
View(exdata1)

#빈도수 분석석
install.packages('descr')
library(descr)
freq(exdata1$AREA, plot=T) #AREA를 x축으로 해서 빈도수를 보여줌.
#T로 하면 데이터, 차트 나오고, F하면 데이터만 나옴

#Stem and Leaf Plot
#통계적 자료를 줄기, 잎, 도수(분포된 횟수)로 표현
exdata1$AGE # [1] 50 40 28 50 27 23 56 47 20 38
stem(exdata1$AGE, scale=2)
#  2 | 0378
#  3 | 8
#  4 | 07
#  5 | 006 이렇게 나오는데, 십의자리 일의자리 나눠서 표현

# histogram : 구간별 빈도수 [차트가 아니고 빈도수임.]
hist(exdata1$AGE) # 구간은 ~이상, ~미만임.
hist(exdata1$AGE, xlim=c(0,100), 
     ylim=c(0,10), 
     main='나이 분포') #xlim은 x축 범위를 나타냄

hist(exdata1$AGE, main='계좌이용 나이분포', 
     xlab='나이 구간',
     ylab='나이 빈도',
     xlim=c(1,100),
     col='darkgreen',
     probability=T) #probability는 %, default는 빈도수임.

hist(exdata1$AGE, main='계좌이용 나이분포', 
     xlab='나이 구간',
     ylab='나이 빈도',
     col='darkgreen',
     freq=T,
     breaks=3) #breaks는 구간 갯수를 설정.
#------------------------------------------------------------------
# whisker : 상자의 좌우, 상하로 뻗어나간 선
# 박스내의 가로선 : 중앙값
# lower whisker : 최소값
# -> 중앙값 - 1.5 x IQR보다 큰 데이터중 가장 작은 값
# upper whisker : 최대값
# -> 중앙값 + 1.5 x IQR보다 작은 데이터 중 가장 큰 값
# IQR (Inter Quartile Range)
# -> Q3(3사분위수) - Q1(1사분위수) = IQR
# 점: 이상값(outlier) - 특이점
# -> lower whisker보다 작은 데이터 또는
#    upper whisker 보다 큰 데이터
#------------------------------------------------------------------
boxplot(exdata1$Y17_CNT, exdata1$Y16_CNT)
quantile(exdata1$Y17_CNT) #범위수
quantile(exdata1$Y16_CNT)

boxplot(exdata1$Y17_CNT, exdata1$Y16_CNT,
        ylim=c(0,60), main='BoxPlot',
        names=c('17년 계좌건수', '16년 계좌건수'),
        col=c('green', 'yellow'))

chart_data <- c(305, 450, 320, 460, 330, 480, 380, 520)
names(chart_data) <-c('2018 1분기', '2019 1분기',
                      '2018 2분기', '2019 2분기',
                      '2018 3분기', '2019 3분기',
                      '2018 4분기', '2019 4분기')

barplot(chart_data, ylim=c(0,600),
        col=rainbow(8), main='2018년 vs 2019년 매출현황 비교')

#세로바 차트
barplot(chart_data, ylim=c(0,600),
        ylab='매출액(단위: 백만원)',
        xlab='연도별 분기 현황',
        col=rainbow(8), 
        main='2018년 vs 2019년 매출현황 비교')

#가로바 차트
barplot(chart_data, xlim=c(0,600), horiz=T,
        xlab='매출액(단위: 백만원)',
        ylab='연도별 분기 현황',
        col=rainbow(8), 
        main='2018년 vs 2019년 매출현황 비교')

#차트 간격 및 막대 별 이름 크기조절
barplot(chart_data, xlim=c(0,600), horiz=T,
        xlab='매출액(단위: 백만원)',
        ylab='연도별 분기 현황',
        col=rainbow(8),
        space=0.1, cex.names=0.53124,
        main='2018년 vs 2019년 매출현황 비교')

#막대 색깔 반복
barplot(chart_data, xlim=c(0,600), horiz=T,
        xlab='매출액(단위: 백만원)',
        ylab='연도별 분기 현황',
        col=rep(c(1,2),4), #1번과 2번(이름 적어도 됨) 색상 4회 반복
        space=0.1, cex.names=0.53124,
        main='2018년 vs 2019년 매출현황 비교')

data() #R의 내장된 데이터 보기
data('VADeaths') #버지니아주 사망비율
View(VADeaths)

#차트 가로1, 세로1 사이즈에 그리겠다
par(mfrow=c(1,1))
barplot(VADeaths, beside=T, col=rainbow(5),
        main='버지니아주 하위계층 사망비율율')

#범례
legend(19, 71, c('50-40','55-59','60-64','65-69','70-74'),
       cex=0.8, fill=rainbow(5))

barplot(VADeaths, beside=T,col=rainbow(5))
title(main='버지니아주 하위계층 사망비율',
      font.main=4)
legend(20, 70, c('50-40','55-59','60-64','65-69','70-74'),
       cex=0.5, fill=rainbow(5))

#차트를 그리기 위한 공간확보
par(mfrow=c(1,1))
chart_data <- c(305, 450, 320, 460, 330, 480, 380, 520)
names(chart_data) <-c('2018 1분기', '2019 1분기',
                      '2018 2분기', '2019 2분기',
                      '2018 3분기', '2019 3분기',
                      '2018 4분기', '2019 4분기')

#점 그래프
dotchart(chart_data, color=c('blue','red'),
         lcolor='black', pch=1:2, #pc2 점에대한 모양
         labels=names(chart_data),
         xlab='매출액',
         main='분기별 판매현황: Dot chart',
         cex=1.2)

#원형 그래프
par(mfrow=c(1,1))
pie(chart_data, labels=names(chart_data),
    col=rainbow(8), cex=1.2)
title('2018~2019년도 분기별 애출현황')


boxplot(VADeaths, range=0)
boxplot(VADeaths, range=0, notch=T)#notch 표시를 더 명확하게 함

#꽃 받침 길이 등 꽃에대한 정보
View(iris)
data(iris)
str(iris)
summary(iris$Sepal.Length)
hist(iris$Sepal.Length, xlab='꽃받침 길이',
     col='magenta',
     main='iris 꽃받침 길이 Histogram',
     xlim=c(4.3,7.9))

summary(iris$Sepal.Width)
hist(iris$Sepal.Width, xlab='꽃받침 너비',
     col="yellow",
     main='iris 꽃받침 너비 Histogram',
     xlim=c(2.0, 4.5))

#1행에 2열 즉, 총 2개 차트 넣을 수 있음.
par(mfrow=c(1,2))
hist(iris$Sepal.Width, xlab='꽃받침 너비',
     col='yellow',
     main='iris 꽃받침 너비 빈도수',
     xlim=c(2.0, 4.5))

hist(iris$Sepal.Width, xlab='꽃받침 너비',
     col='blue', freq=F,
     main='iris 꽃받침 너비 확률 밀도',
     xlim=c(2.0, 4.5))

#밀도
lines(density(iris$Sepal.Width), col='red')
x <- seq(2.0, 4.5, 0.1) #0.1간격으로 2.0부터 4.5까지
#히스토그램에 정규분포 곡선 추가
curve(dnorm(x, mean=mean(iris$Sepal.Width),
      sd=sd(iris$Sepal.Width)),
      col='orange', add=T)

#산점도 : 좌표상에서 각각의 관찰값들을 점, 특정문자로 표시하는 그래프.
par(mfrow=c(1,1))
price <- runif(10, min=1, max=100) #1부터 100사이 랜덤값 10개 뽑음
price
plot(price, col='red')
par(new=T)#기존 형태에 덮어씀
line_chart = 1:100
# type종류 p:point, l:lines, b:both(점+선)
#          o: 점+선 중첩, h:histogram, s:왼쪽값을 기초로 계단모양 연결
plot(line_chart, type='l', col='blue',
     axes=F, ann=F) #axes=F, ann=F[x,y축 제목 사용x]
text(70, 80, '대각선 추가', col='magenta') # 문자삽입

#4가지 type 그래프 표시
par(mfrow=c(2,2))
plot(price, type='l')
plot(price, type='o')
plot(price, type='h')
plot(price, type='s')

#cex는 점 or문자 크기, lwd는 선 굵기
plot(price, type='o', pch=5)
plot(price, type='o', pch=15, col='red')
plot(price, type='o', pch='*', col='blue', cex=1.5)
plot(price, type='o', pch='*', col='blue', cex=1.5, lwd=3)

#시계열 데이터 : 시간의 흐름에 따라 관찰된 데이터
data("WWWusage") #전세계 인터넷 사용량
str(WWWusage)
plot(WWWusage)

#1월부터 12월까지 전기 사용량
kwData <- c(200, 230, 220, 200, 180, 270,
            340, 400, 380, 300, 260, 230)
plot(kwData)

#ts 시계열 함수 time series
tskwData <- ts(kwData, start=1)
plot(tskwData)
