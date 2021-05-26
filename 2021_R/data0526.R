#로지스틱 회귀분석
#종속변수와 독립변수간의 관계를 구체적인 함수로 나타내어 향후 예측모델에 사용.
#종속변수(범주형) - 독립변수(연속형)
#지도학습 분류되며, 특정 결과의 분류 및 예측 가능.

# mtcars dataset
# mpg : 갤런당 마일(연비) - 수치형
# cyl : 실린더 갯수 - 수치형
# disp : 배기량 - 수치형
# hp : 마력 - 수치형
# drat : 리어액슬(후륜제어기술) 비율 - 수치형
# vs : 엔진 종류(0=V-shaped, 1=straight) - 범주형
# am : 변속기 종류(0=automatic, 1=manual) - 범주형
# gear : 전진기어 개수 - 수치형
# carb : 기화기 개수 - 수치형
# wt : 무게 - 수치형

summary(mtcars)


#로지스틱 회귀분석의 종속변수는 이항 변수이므로
#이항 분포 옵션 사용.
#-------------------------------------------------
#family 옵션 분류
#정규분포:gaussian
#이항분포(항이 2개):binomial
#포아송분포:poisson, 역정규분포:inverse.gaussian
#감마분포:gamma
#응답분포가 확실하지 않은 경우:quasi
View(mtcars)
vsGlm <- glm(vs ~ mpg+am, data=mtcars,
             family = binomial) #vs는 종속, mpg+am은 독립

#회귀분석 결과는 오즈(odds)로 해석
#mpg(연비)의 회귀계수가 0.6809,  mpg가 한 단위 증가하면
#vs=1일때 오즈가 exp(0.6809)증가. -> e^0.6809 = 1.98 즉, 198%증가
#am(변속기 종류)의 회귀계수가 -3.0073, am의 1단위가 증가하면
#vs=1일때 오즈가 exp(-3.0073) 감소. -> e^(-3.0073)=0.05 즉, 5%감소.

#선형회귀분석:Y(-∞ ~ ∞) = aX+b 범위.(-∞ ~ ∞)
#로지스틱 회귀분석:P(0~1) = aX + b (-∞ ~ ∞) 이걸 성립시켜주는 과정이 로짓임.
#P의 성공범위(1:성공 ~ 0:실패)와 aX+b의 범위가 다름.
#P의 성공범위를 (-∞ ~ ∞)로 변환 -> Logit (Log odds)오즈에 로그를 붙임.
#오즈(odds):성공할 확률 / 실패할 확률 = P / 1-P
#오즈비(odds ratio):성공확률이 실패확률에 비해서 몇 배더 높은지를 나타내는 수식.
#Log odds ∈ (-∞ ~ ∞) 로짓은 (-∞ ~ ∞) 원소에 속한다.
summary(vsGlm)

vsGlm2 <- glm(vs ~ mpg + am + wt, data=mtcars,
              family = binomial)
#p-value가 다 0.05이상으로 나와서 유의한 값들이 아님.
#독립변수에 wt추가한 것 뿐인데 분석자체가 틀어져버림.
summary(vsGlm2)

#유의하지 않은 독립변수 제거(후진소거법)
stepVs <- step(vsGlm2, direction = "backward") #AIC가장 작은값 뺌

#통계검정방법
#위약을 먹은 집단과 치료제를 먹은 집단간의 혈압차이.
#T-test
#비교그룹이 2개, 표본(샘플)이 독립적이고, 데이터가 정규분포

#분산분석(ANOVA)
#10대, 20대, 30대, 40대, 50대 간의 혈압 차이
#3개이상의 다수 집단을 비교할 때 사용.

#연속형 자료 검정: T-test(이항), anova(다항)
# --> 수치화가 가능한 자료: 키, 몸무게
#범주형 자료 검정: 카이제곱(Chisquare)검정, 피셔의 정확검정법
# --> 수치화가 불가능한 자료: 성별, 혈액형
anova(vsGlm2, test="Chisq")
#사전 확률: 특정 사건이 발생하기전의 확률
#사후 확률: 특정 사건이 이미 발생하였는데, 이 사건의 근본원인이 무엇인지 불확실한 상황
#기준설정을 0.5로 설정.
#사후확률이 0.5초과이면 stright 엔진으로 예측.
#사후확률이 0.5이하이면 V-shaped 엔진으로 예측.
rawData <- mtcars
predict_prob <- predict(stepVs, newdata=rawData,
                        type="response")
#vs 예측값
predictVs <- ifelse(predict_prob > 0.5, 1, 0)
result <- data.frame(actual = rawData$vs,
                     predicted=predictVs,
                     pred_prob=predict_prob)
head(result)

#혼동행렬(confusion matrix)
#특정 분류 모델의 성능을 평가하는 지표.
#실제값과 모델이 예측한 예측값을 한눈에 알아볼수있게 배열한 행렬.
library(caret)
library(e1071)
confusionMatrix(as.factor(rawData$vs), #예측값
                as.factor(result$predicted)) #결과값
#             reference:실제값
#Prediction     0     1
# (예측값)  0   15    3
#           1   4     10
# P = 19(실제 성공)/32(전체) = 0.59375 이것보다 Accuracy가 커야함.
#





