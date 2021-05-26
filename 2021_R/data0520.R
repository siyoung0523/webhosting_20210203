#회귀분석
#회귀분석 : 독립변수와 종속변수의 인과관계를 파악하여, 종속변수를
#           독립변수로부터 설명하고 예측하는 분석.
#상관변수는 두 변수의 관계를 나타내는 것
#회귀분석은 독립변수와 종속변수가 있음
#독립변수 : 다른변수에 영향을 받지 않는 변수, 종속변수에 영향을 줌.
#종속변수 : 독립변수에 영향을 받아서 값이 변하는 변수.

#단순회귀분석 : 독립변수가 1개일 때
#독립변수가 1단위의 증감에 따라 종속변수가 어느 정도 변하는지를 예측.
#회귀식 : 독립변수에 의한 종속변수의 값을 예측해주는
#선형함수식 : Y = aX + b [Y:종속변수, X:독립변수, a:독립변수의 증감정도
#                         b: 독립변수로부터 영향을 받지 않는 값]
#산점도에서 데이터를 가장 잘 설명할 수 있는 선을 찾는 분석

library(ggplot2)
str(diamonds)
dia <- lm(price~carat, data=diamonds) #[종속변수:price~독립변수:carat,모집단]
# lm:회귀분석 함수, 결과 (Intercept 절편:-2256, carat 기울기:7756)
#                   -> carat이 증가할 수록 가격 증가한다.
View(diamonds)
dia
# 결정계수: 약85%, Adjusted R-squared:0.8493 [종속변수의 변화량이 85%예측]
#독립변수가 만약 2개 이상인 경우엔 더 많은 변화량을 설명하기에,
#결정계수가 커지는 경향이 있음.
#Residual standard error: 1549 on 53938 degrees of freedom
#Multiple R-squared:  0.8493,	Adjusted R-squared:  0.8493 
#F-statistic: 3.041e+05 on 1 and 53938 DF,  p-value: < 2.2e-16
# p < 0.05 때 신뢰도 95%이상. 오차±5% <- 통계적으로 유의미하다고 판단

#잔차 : 예상치와 실제 관측치의 차이
#1. 잔차분포 그래프:y축을 0을 기준으로 고르게 분포하는게 좋음.
#2. 정규화 관련:해당 점선에 잔차들이 놓여있으면 정규성을 만족.
#3. 잔차를 표준화해서 제곱:x축은 선형회귀로 예측된 관측치, y측은 표준화 잔차
#   기울기가 0인 직선형태, 점들도 고르게 분포가 좋음.
#4. 영향점 판별 그래프 x축 : Leverage, Y축: 표준화된 잔차
#                      x축 : 변수가 얼마나 벗어나있는지 의미
# outlier : 주어진 회귀모델에서 잘 설명되지 않는 데이터
summary(dia)
par(mfrow=c(2,2))
plot(dia)

library(car)
outlierTest(dia) #이상치값

#다중회귀분석
#종속변수1개, 독립변수가 2개 이상인 회귀분석
#ex) 맛집(종속변수), 음식맛, 분위기, 청결, 가격, 위치..
library(readxl)
csvIns <- read.csv('res/insurance.csv')
#범주형(분류목적) : sex, smoker, region [수치가 아니기에 최대/최소 안나옴]
#수치형(일정기간, 연속적인 수치) : age, bmi, children, charges
summary(csvIns)

hist(csvIns$charges)
hist(csvIns$bmi)
table(csvIns$region)#범주형을 보기에 좋음.

#psych - 산점도 그래프 더 보기좋게 가공하는 라이브러리
library(psych)
scaMatrix <- csvIns[c("age","bmi","children","charges")]
#기존의 산점모 매트릭스보다 잘 되어 있음
pairs.panels(scaMatrix)

#상관계수는 -1 ~ +1 사이값
cor(scaMatrix)

lmins <- lm(charges~age+children+bmi+sex+smoker+region,data=csvIns)
#(종속변수:charge, 독립변수:age,children,bmi,sex,smoker,region,charges)
#범주형 변수는 자동으로 수치화 시켜줌.
lmins
summary(lmins)

#모델 성능 개선
#1. 의료비 지출에 대한 연령의 영향은 전 연령에 걸쳐 일정하지 않다.
#2. 20->30대 비용증가폭보다 60->70대 비용증가폭이 크다.
# y = a + b1x + b2x^2

csvIns$age2 <- csvIns$age^2 #새로운 변수 추가.

#2. 비만인 사람들은 의료비가 많이 발생하지만,
#정상체중인 사람들은 상대적으로 적게 발생한다.

csvIns$bmi30 <- ifelse(csvIns$bmi >= 30, 1, 0) #30이상부터 비만, 고도비만.

View(csvIns)
#3. bmi30 x smoker 이 경우 의료비 지출에 크게 영향을 미친다.
lmins2 <- lm(charges ~ age+age2+children+bmi+sex+(bmi30*smoker)+region, data=csvIns)
summary(lmins2)
#결과적으로 R-squared가 0.7에서 0.86으로 증가 됨.

#추가 개선 모델
#후진소거법, 전진선택법, 부분집합선택법 [주로 후진소거법 많이 씀]
#step() - 의미없는 독립변수 제거
# 후진소거법 : 회귀모델에서 AIC가 큰 변수를 삭제하면서
#              AIC가 작은 변수를 찾아 적용하는 방법.
lmins3 <- step(lmins2,direction = "backward" )#step(기존회귀분석,방향)
summary(lmins3)#독립변수 age가 없어짐.






