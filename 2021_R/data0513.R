
attributes(iris) #속성의 모든 값을 보여줌.
View(iris)
#산점도 행렬
#가운데 대각선이 속성. 아래가 x축 옆이 y축.
#선의 속성이 보이는 것은 data라고 보이지만
#난잡한 것은 data라고 하기 어려움. 즉, x변수와 y의 연관관계를 분석 - 상관분석. 
pairs(iris[iris$Species == 'virginica', 1:4]) #[행관련 정보,열관련 정보]
pairs(iris[iris$Species == 'setosa', 1:4])
View(iris)
#종에 따라 색이 바뀌어서 한꺼번에 나타남.
pairs(~Sepal.Width + Sepal.Length + Petal.Width + Petal.Length,
      data=iris, col=iris$Species)

#[상관분석]
# 두 변수가 서로 어떤 관계에 있는지 파악하는 분석 기법
#상관관계는 두변수의 관계는 입증할 수 있지만,인과관계는 입증할 수 없다. ex) 모기와 냉방비

#[공분산] : 
#각 확률 변수들이 어떻게 퍼져있는지를 나타내는 것.
#x의 편차와 y의 편차를 곱한 것의 평균 값
#산점도 데이터들이 어떻게 퍼져있는지 나타내는 것.
#극단적으로 값이 치우쳐질 수 있음.

#귀무 가설 : 두 변수는 서로 상관 관계가 없음.(r = 0)
#대립 가설 : 두 변수는 서로 상관 관계가 있음.(r ≠ 0)

#[상관계수] - 상관관계 정도를 파악
#공분산을 보완하기 위해서 나옴.
#pearson(피어슨) 상관계수 - r
# - 상관분석에서 기본 사용
# - 값의 범위 -1 ~ +1 사이의 값을 가짐
# r이 ±0.9 이상 : 매우 높은 상관관계
# r이 ±0.9 ~ ±0.7 : 높은 상관관계
# r이 ±0.7 ~ ±0.4 : 다소 높은 상관관계
# r이 ±0.4 ~ ±0.2 : 낮은 상관관계
# r이 ±0.2 미만 : 상관관계가 없음

#상관계수 식
#x바 : 표본집단의 x 평균
#y바 : 표본딥단의 y 평균
#Sx : 표본집단의 x 표준편차
#Sy : 표본집단의 Y 표준편차
#n : 표본집단의 개수


#kendall(켄달) 상관계수
#spearman(스피어만) 상관계수
# - 순위, 등급으로 변경해서 사용(학교 등급, 졸업학위 성적)


#cov 공분산
cov(mtcars$mpg, mtcars$cyl)
plot(mtcars$mpg, mtcars$cyl)

#cor 상관계수
cor(mtcars$mpg, mtcars$cyl) # -0.85
plot(mtcars$mpg, mtcars$cyl)

#cor 구하는 공식.
n <- length(mtcars$mpg)
mean_x <- mean(mtcars$mpg)
mean_y <- mean(mtcars$cyl)
s_x <- sd(mtcars$mpg)
s_y <- sd(mtcars$cyl)
z_x <- (mtcars$mpg - mean_x) / s_x
z_y <- (mtcars$cyl - mean_y) / s_y
sum(z_x * z_y) / (n-1)

#결측치가 포함된 상관관계
cor(mtcars$mpg, mtcars$cyl,
    method = 'pearson', #spearman,kendall,pearson중 선택.(피어슨이 디폴트값)
    use = 'complete.obs') #결측값 존재하는 case 제거된 상태에서 상관계수 구함.
View(mtcars)

#3차원 산점도
library(scatterplot3d)
iris$Species
iris_setosa = iris[iris$Species == 'setosa',]
iris_versicolor = iris[iris$Species == 'versicolor',]
iris_virginica = iris[iris$Species == 'virginica', ]

#비어있는 틀 만듦
d3 <- scatterplot3d(iris$Petal.Length,
                    iris$Sepal.Length,
                    iris$Sepal.Width, type='n')

d3$points3d(iris_setosa$Petal.Length,
            iris_setosa$Sepal.Length,
            iris_setosa$Sepal.Width,
            bg='orange', pch=21)

d3$points3d(iris_versicolor$Petal.Length,
            iris_versicolor$Sepal.Length,
            iris_versicolor$Sepal.Width,
            bg='blue', pch=23)

d3$points3d(iris_virginica$Petal.Length,
            iris_virginica$Sepal.Length,
            iris_virginica$Sepal.Width,
            bg='green', pch=25)

#막대
str(trees)
scatterplot3d(trees, type='h', highlight.3d = T,
              angle = 55, scale.y=0.9, pch=1,
              main='3차원 산점도 Trees')

#원형그래프
exdata <- c(18, 12, 4, 16, 8, 9, 12)
lab <- c('미국', '영국', '호주', '독일','캐나다','인도','한국')
library(plotrix)
pie3D(exdata, labels =exdata, explode = 0.05, cex=0.5,
      main='3D Pie 차트') #explode:영역별 간격
legend('topright', legend = lab, cex=0.5, fill=rainbow(length(exdata)))

#화산자료 투시도
library(lattice)
wireframe(volcano, shade=T, aspect=c(61/87, 0.4),
          light.source = c(10, 0, 10))
#aspect 각도, light.source 색상
wireframe(volcano, shade=T, aspect=c(10, 10),
          light.source = c(1, 10, 100))


# ggplot2 라이브러리
library(ggplot2)
str(airquality)
names(airquality) <- tolower(names(airquality))
ggplot(airquality, aes(x=day, y=temp)) #x축 day, y축 temp

#산점도
ggplot(airquality, aes(x=day, y=temp)) + 
  geom_point(size=3, color='red') #점의 크기 및 색상 지정
ggplot(airquality, aes(x=day, y=temp)) + 
  geom_line()
ggplot(airquality, aes(x=day, y=temp)) + 
  geom_line() + geom_point()
ggplot(airquality, aes(x=day, y=temp)) + 
  geom_line(color='red', size=1) +
  geom_point(size=3)

#실린더 빈도수
ggplot(mtcars, aes(x=cyl)) + geom_bar(width =0.5)
ggplot(mtcars, aes(x=factor(cyl))) + geom_bar(width=0.5)
ggplot(mtcars, aes(x=factor(cyl))) + geom_bar(aes(fill=factor(gear)))

#선버스트 차트
#1. 평면위의 위치를 각도와 거리를 사용하여 표시
#2. 두 점 사이의 관계를 각이나 거리로 표현
#3. 계층 구조 표현하기에 유리
View(mtcars)
ggplot(mtcars, aes(x=factor(cyl))) + # cyl를 x축 변수수
  geom_bar(aes(fill=factor(gear))) + # cyl종류별 gear 빈도도
  coord_polar()                      # 선버스트 차트

ggplot(mtcars, aes(x=factor(cyl))) +
  geom_bar(aes(fill=factor(gear))) +
  # 원그래프 변환
  coord_polar(theta ='y')

ggplot(airquality, aes(x=day, y=temp, group=day))+
  geom_boxplot()

# histogram
ggplot(airquality, aes(x=temp)) + geom_histogram(binwidth = 1)

library(googleVis)
motion <- gvisMotionChart(Fruits, idvar = 'Fruit',
                          timevar ='Year')
plot(motion)

mydf <- data.frame(country=c('US','GB','BR'),
                   val1 = c(10,13,14),
                   val2 = c(23,12,32))
line <- gvisLineChart(mydf)
plot(line)

line2 <- gvisLineChart(mydf, 'country', c('val1','val2'),
                       options =list(series='[{targetAxisIndex:0},
                                    {targetAxisIndex:1}]',
                                    vAxes="[{title:'val1'},{title:'val2'}]"
                                    ))
plot(line2)

bar <- gvisBarChart(mydf)
plot(bar)

column <- gvisColumnChart(mydf)
plot(column)

# 뉴욕대기오염 dataset사용
#     - 산점도, 상관계수, 결측치 제거

# R함수, ggplot2, google chart

View(airquality)

names(airquality) <- tolower(names(airquality))
library(dplyr, warn.conflicts = FALSE)
library(ggplot2)

# 1. 특정달의 정보 추출 (5~9월)
month5 = filter(na.omit(airquality), month ==5)
month6 = filter(na.omit(airquality), month ==6)
month7 = filter(na.omit(airquality), month ==7)
month8 = filter(na.omit(airquality), month ==8)
month9 = filter(na.omit(airquality), month ==9)
  
# 2. x변수, y변수를 사용하여 상관분석
air=na.omit(airquality)
cor(air)

ggplot(month5, aes(x=ozone, y=solar.r)) + geom_point()
ggplot(month5, aes(x=ozone, y=wind)) + geom_point()
ggplot(month5, aes(x=ozone, y=temp)) + geom_point()
ggplot(month5, aes(x=solar.r, y=wind)) + geom_point()
ggplot(month5, aes(x=solar.r, y=temp)) + geom_point()
ggplot(month5, aes(x=wind, y=temp)) + geom_point()

ggplot(month6, aes(x=ozone, y=solar.r)) + geom_point()
ggplot(month6, aes(x=ozone, y=wind)) + geom_point()
ggplot(month6, aes(x=ozone, y=temp)) + geom_point()
ggplot(month6, aes(x=solar.r, y=wind)) + geom_point()
ggplot(month6, aes(x=solar.r, y=temp)) + geom_point()
ggplot(month6, aes(x=wind, y=temp)) + geom_point()

ggplot(month7, aes(x=ozone, y=solar.r), na.rm=T) + geom_point()
ggplot(month7, aes(x=ozone, y=wind)) + geom_point()
ggplot(month7, aes(x=ozone, y=temp)) + geom_point()
ggplot(month7, aes(x=solar.r, y=wind)) + geom_point()
ggplot(month7, aes(x=solar.r, y=temp)) + geom_point()
ggplot(month7, aes(x=wind, y=temp)) + geom_point()

ggplot(month8, aes(x=ozone, y=solar.r)) + geom_point()
ggplot(month8, aes(x=ozone, y=wind)) + geom_point()
ggplot(month8, aes(x=ozone, y=temp)) + geom_point()
ggplot(month8, aes(x=solar.r, y=wind)) + geom_point()
ggplot(month8, aes(x=solar.r, y=temp)) + geom_point()
ggplot(month8, aes(x=wind, y=temp)) + geom_point()

ggplot(month9, aes(x=ozone, y=solar.r)) + geom_point()
ggplot(month9, aes(x=ozone, y=wind)) + geom_point()
ggplot(month9, aes(x=ozone, y=temp)) + geom_point()
ggplot(month9, aes(x=solar.r, y=wind)) + geom_point()
ggplot(month9, aes(x=solar.r, y=temp)) + geom_point()
ggplot(month9, aes(x=wind, y=temp)) + geom_point()


cor(air$ozone, air$solar.r)
cor(air$ozone, air$wind)
cor(air$ozone, air$temp)
cor(air$solar.r, air$wind)

ggplot(air, aes(x=wind, y=temp)) + geom_point()

# 3. 변수 4개를 사용하여 상관분석
#     - 산점도행렬
pairs(airquality[airquality$month == 5, 1:4])
pairs(airquality[airquality$month == 6, 1:4])
pairs(airquality[airquality$month == 7, 1:4])
pairs(airquality[airquality$month == 8, 1:4])
pairs(airquality[airquality$month == 9, 1:4])
View(airquality)



