#1. 지도학습
#ㄱ.분류


#ㄴ.회귀
# - 연소값을 예측.
# - 선형회귀, 신경망

#2. 비지도 학습
#   - 정답없이 훈련데이터만 가지고 데이터로부터
#     숨겨진 패턴을 탐색하는 기계학습.
#   ㄱ.클러스터링: 특정기준에 따라 유사한 데이터 사ㅖ들을 하나의 
#                 세트로 그룹화하고 고유한 패턴을 찾기위해 개별 그룹
#                 차원에서 분석 수행.
#     - 연관규칙(apriori): 대규모 거래 데이터로부터 함께 구매될 규칙을
#       고객이 특정 상품구매시 이와 연관성이 높은 상품을 추천하는 것.
#     - k-평균 알고리즘(KK-means clustering algorithm):
#       주어진 데이터를 k개 클러스터로 묶고 각 클러스터와 거리 차이의
#       분산을 최소화하는 알고리즘.

#. 강화학습(Reinforcement Learning)
# - 어떤 환경에서 정의된 에이전트가 현재 상태를 인식하여 선택 가능한
#   행동들 중에서 보상을 최대화하는 행동 혹은 행동 순서를 선택하는 방법
# - 알파고
#-----------------------------------------------------------
# 1. 의사결정나무(Decision tree, tree model)
# - 의사결정규칙을 나무 구조로 나타내어 전체자료를 몇개의 소집단으로 분류
#   하거나 예측을 수행하는 분석.
# - 특정 조건을 기준으로 o/x러 나누어 분류/회귀를 진행하는 Tree구조의
#   분류/회귀 데이터 마이닝 기법.
# - 종속변수가 범주형이면 Decision Tree Classfication 으로 분류를 진행.
# - 종속변수가 연속형이면 Decision Tree Regression으로 회귀를 진행
# - 고객 구매데이터(x)를 이용해 고객 등급(y)를 분류
# - 야구 서수의 데이터(x)를 이용해 다음 해의 연봉(y)을 예측.

# - 루트 노드: 최상위 노드
# - 터미널 노드 : 자식 노드가 없는 가장 아래 노드
# - internal 노드 : 자식이 존재하는 노드
# - 의사결정나무 목표는 최대한 균일한/순수한 상태의 부분집합을 찾는 것.

# 순수도(Purity)
# - 데이터들의 동질성이 높은 정도.
# - 부모 노드 보다 더 순수도가 높은 자식 노드를 만들고 이를 반복하여
#   의사결정나무를 생성.

# 예측 의사결정 나무 모형
# - 조건에 따라 구역을 나눈 뒤 각 구역에 존재한 값들의 평균을 예측값으로 사용.

# 구역을 나누는 방법은 RSS를 최소로 만드는 구역으로 나눔.
# RSS: 잔차 제곱합
# 잔차 : 예측값과 관측한 실제값의 차이.
# - j개의 구역을 나눌수잇는 경우의 수는 무수히 많기 때문에, 우리는 구역을
#   2개씩 연속적으로 나누어 가는 방법을 사용.
#   Recursive binary splitting 방법 사용.

# 모집단 : 3, 4, 5, 7, 8, 9
# 평균: (3+4+5+7+8+9) / 6 = 6
# RSS : (6-3)^2 + (6-4)^2 + (6-5)^2 + (7-6)^2 +
#       (8-6)^2 + (9-6)^2 = 28

# 좌측노드 : 3, 4, 5 = RSS:?
# 우측노드 : 7, 8, 9 = RSS:?

# ▶ 분류후에 어떻게 예측할것인가 선택.
# - 기준에 따라서 구역을 나눈 뒤 각 구역에 존재하는 값들 중 최빈값
#   (빈도수가 높은 값)을 예측 값으로 사용.

# ▶ Gini index, Entropy
# - 의사결정나무는 하위 노드에서 Y종속변수를 가장 균일하게
#   존재하도록 만들어주는 x변수를 찾아서 반복적으로 가지를
#   뻗어 나가는 방법 -> 각 노드의 균일성을 계산.
#   노드 균일성을 계산하는 방법 : gini index, entropy

# ▶ Gini Index(지니 계수)
# - 어떤 노드의 구성이 얼마나 순수한지를 계산한 값.
# - 값이 0이면 모든 데이터가 균일한(동일한) 데이터.

# ▶ Entropy
# - 데이터가 얼마나 무질서한지 나타냄.
# L노드 : 파랑3, 빨강3 => 빨강 : 50%, 파랑 50%
# - (0.5 x log0.5 + 0.5 x log0.5) = 1

# R노드 : 빨강6, 파랑0 => 빨강 : 100%, 파랑 : 0%
# = (1.0xlog1 + 0xlog0) = 0
# 값들의 개수가 같으면 엔트로피가 가장 높은 1
# 동일한 값들로 구성되어 있으면 엔트로피가 0

# ▶ IG(Information Gain) - 정보이득
# 엔트로피를 이용해서 특정 x변수에 의해서 분화가 될 경우 얻게되는 정보의 양
# 가장 높은 IG값을 주는 x변수로 분화시켜서 tree model를 만드는게 목표

# ▶ 과적합(Ovserfitting)
# - 머신러닝에서 학습 데이터를 너무 과하게 학습하는 것.
# - 가지치기

# ▶ Tree Pruning(가지치기)
# - 최대한으로 학습된 의사결정 나무는 leaf노드에서
#   항상 100% 균일성을 가짐 -> 과적합(overfitting) 발생

# ▶ Pre-pruning
# - 트리 생성을 사전에 중단하는 방법.
# - tree의 최대 깊이를 제한하여 leaf node의 최대 갯수를 제한하는 방법.

# ▶ Post-pruning
# - 트리를 만든 후 하위 노드를 제거하거나 병합하여 데이터의 개수가
#   적은 노드를 삭제.

library(readxl)
library(caret)

creditData <- read.csv("res/credit.csv", stringsAsFactors = T)

View(creditData)

#대출기간
summary(creditData$months_loan_duration)
#대출액
summary(creditData$amount)

#default = no: 미상환, yes: 상환
table(creditData$default)

set.seed(12345)
# order(): 오름차순으로 정렬, 결측치 제거.
creditRandData <- creditData[order(runif(1000)),]
summary(creditData$amount)
summary(creditRandData$amount)
head(creditData$amount)
head(creditRandData$amount)

creditTrain <- creditRandData[1:900]

# 학습용 :900, 테스트 :100
creditTrain <- creditRandData[1:900, ] # 학습용
creditTest <- creditRandData[901:1000, ] #테스트용


prop.table(table(creditTrain$default)) #prop:비율, table:빈도수
prop.table(table(creditTest$default))

library(C50)
creditModel <- C5.0(creditTrain[-17],
                    creditTrain$default)
summary(creditModel)

creditPred <- predict(creditModel, creditTest)
table(creditPred)

library(gmodels)
#교차분석은 두개 이상의 범주형 변수를 대상으로
#교차분할표를 작성, 변수 상호 간의 관련성 여부를
#분석.
CrossTable(creditTest$default, creditPred,
           dnn=c("Actual","Predict"))#creditTest$default:정답,creditPred:예측값

#chi-square검정: 교차분석으로 얻어진 교차 분할표를
#대상으로 유의 확률(p값)을 적용하여 변수들 간의 독립성
#및 관련성 여부등을 검정하는 분석.

#앙상블 기법
# 단독 모델로 예측하는 것이 아닌 여러 모델을 생성하여
# 예측을 하고 평균을 통해 이 결과를 예측.
# 1. Boosting: 가중치를 이용하여 약한 학습기를 강한 학습기로 만드는 방법.
# 2. bagging: 부트스트랩을 집계하는 것.
# 부트스트랩: random sampling을 적용하는 방법.
# - 학습 데이터가 충분하지 않더라도 부트스트랩을 집계하여 충분한 학습효과를 주는 것
# 3. 랜덤 포레스트 분석.

creditBosst10 <- C5.0(creditTrain[-17],
                      creditTrain$default,
                      trials =10)
summary(creditBosst10)
creditBosst10Pred <- predict(creditBosst10,
                             creditTest)
CrossTable(creditTest$default,creditBosst10Pred,dnn=c("Actual","Predict"))















