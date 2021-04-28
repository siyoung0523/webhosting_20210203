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
