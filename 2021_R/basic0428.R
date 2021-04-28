# Ctrl + Enter : 1라인 또는 선택 영역 실행
# Ctrl + Alt + R : 전체 실행
# Ctrl + Alt + B : 처음에서 현재 행까지 실행
# Ctrl + Alt + E : 현재 행에서 마지막까지 실행
# 주석처리 : Ctrl + shift + c

n = 100 #이것 또한 많이씀
n <- 90 #이걸 가장 많이 씀
n <<-80 #전역변수 개념임
n
print(n)
sprintf("점수 : %d", n)
cat("점수: ",n)

x<- 10
y <- 20
z <- x * y
cat('x * y의 결과는', z, '입니다\n') #개행문자 쓸 땐 cat사용.
sprintf('%d * %d = %d', x, y, z)

x <- 3.5
x
print(x)
sprintf('x:%.2f', x) # %f는 실수타입

y <- 'string'
print(y)
y <- "문자열"
y

z <- FALSE # (FALSE, F, TRUE, T)
z <- TRUE
z

#============연산자=====================================

10 + 3
10 - 5
2 * 3
4 / 3
4 %/% 3 # 정수값 나머지 소숫점 절삭
4 %% 3 #나머지 연산자
2^3    # 거듭제곱

#=============data 입력============================
print('숫자를 입력하세요') 
num <- scan() #한개의 값 입력하면 스칼라개념 but, 여러개 값 넣으면 배열개념[배열 0이 아닌, 1부터 시작]
num           #함수까지도 넣을 수 있음.


print('문자열을 입력하세요')
str <- scan(what='')#what이란 매개변수를 사용
str

df <- data.frame() #data frame 배열과 비슷하긴 한데 좀 더 추상적임.
df <- edit(df) #데이터 입력할 스프레드 시트 띄움
df


#===========제어문과 논리연산자=======
x <- 8
if (x > 0 && x < 10){
  print('1~10 사이의 숫자입니다.')
} else {
  printf('1~10사이의 숫자가 아닙니다.')
}

x <- 8
if ( x== 1 || x== 10){
  print('1이거나 10입니다.')
} else if ( x != 8) {
  print('8이 아닙니다.')
} else {
  sprintf('정보는 %d 입니다.', x)
}

num <- 30L #그냥 30으로 하면 문자로 인식 but 'L'붙이면 숫자로 인식
if (is.integer(num)){ #is.integer(num) <- num이 정수이면.
  print('x는 숫자')
} else {
  print('x는 문자열')
}


#===============vector=============================
data <- c('홍길동', '김길동', '박길동','이길동') #c는 문자열 벡터-동일한 타입의 정보 담은 것(문자열 배열개념과 동일)
if('박길동' %in% data) {
  print('박길동이 존재합니다.')
}else{
  print('박길동이 존재하지 않습니다.')
}


#자료구조 종류 : 스칼라(흔히 변수의 값), 벡터(배열과 같음), 데이터 프레임(배열과 비슷하지만 추상적 의미 부여)

i <- 0
while ( i < 10) {
  i <- i+1
  print(i)
}
  
sum <- 0
num <- c(1, 4, 7)
for(i in num) {
  print(sum <- sum + i)
}


sum <- 0
for (i in 1:10){#1에서 10까지 1씩 증가
  if(i %% 2 == 0){
    next #continue와 같음 - for문으로 다시 올라가는 기능.
  }
  
  if (i == 7){
    break
  }
  sum <- sum + i
}
print(sum)


index <- seq(1, 10, by=2) #1부터 10까지 2씩 증가.
for (i in index) {
  print(i)
}


func1 <- function(start, end){ #func1는 함수 포인터라고 봐도 됨.
  sum <- 0
  for (i in start:end){
    sum <- sum + i
  }
  return(sum) #return을 쓰느냐 안쓰느냐에 따라 리턴을 쓰는 함수, 안쓰는 함수 
              #나뉨. [괄호주의]
}              #기본엔 void 라던가 그것에 따라 맞춰 썼었음.

sprintf('합계: %d',func1(1,10))


func2 <- function(num1, num2, op){
  if (op == '+') {
    return (num1 + num2)
  }else {
   return (num1 - num2)
  }
}

func2_2 <-function(num1, num2){
  return(num1 + num2)
} 

func2_1 <- function(...) {
  res <- func2(...)
  # val <- func2_2(...)
  return (res)
}

func2_1(10, 5, '+')
func2_1(20, 10, '-')

func_var <- function(...){ # ... <- 가변인자 [들어노는 갯수가 정해지지 않음]
  var <- c(...)
  for ( i in var) {
    cat(i, '\t')
  }
}
func_var(1, 2, 3, 4, 5, 6)
func_var(1, 2, 3, 4, 100)


x <- 3 #전역변수
func1 <- function(){
  x <- 5 #지역변수
  print(x)
}
func1()
print(x)
#중괄호 밖 - 전역변수 , 중괄호 안 - 지역변수 [전역변수(데이터) 지역변수(스텍영역) 데이터 영역이 다름]

func2 <- function(){
  x <<- 100 # x<-100 이면 지역변수, but x <<-100 은 전역변수가 됨. 즉, 174라인의 x를 사용
  print(x)
}
func2() # func2의 x값 100출력
print(x) # func2에서 '<<-'을 사용하여 지역변수 지정을 했기에, 100출력


#클로저
add_x <- function(x){
  function(y) {
    return(x + y)
  }
}

addx <- add_x(3) #3가 매개 변수로 먼저 들어가고,
addx(2)          #2가 매개 변수로 들어감










