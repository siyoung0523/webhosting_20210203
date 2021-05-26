library(googleVis)
library(ggplot2)


str(women)
gScatter <- gvisScatterChart(women,
                            option = list(
                              legend='none',
                              lineWidth=2, pointSize=0,
                              title='women',
                              vAxis="{title:'weight(lbs)'}",
                              hAxis="{title:'height(in)'}",
                              width=300, weight=300))
plot(gScatter)

#
str(OpenClose)
gCandle <- gvisCandlestickChart(OpenClose,
                                options = list(legend='none'))
plot(gCandle)

#도시별 인구 차트
gPie <- gvisPieChart(CityPopularity)
plot(gPie)

View(CityPopularity)
str(CityPopularity)
gauge <- gvisGauge(CityPopularity,
                   option=list(min=0, max=1000))
plot(gauge)

#구간별로 색을 넣음
gauge <- gvisGauge(CityPopularity,
                   option=list(min=0, max=1000,
                               greenFrom=800, greenTo=1000,
                               yellowFrom=500, yellowTo=800,
                               redFrom=0, redTo=500,
                               width=400, height=300))
plot(gauge)

#지도 차트
View(Exports)
str(Exports)
gla <- gvisGeoChart(Exports, 
                    locationvar = 'Country',
                    colorvar='Profit')
plot(gla)

glb <- gvisGeoChart(Exports, 
                    locationvar = 'Country',
                    colorvar='Profit',
                    options = list(projection='kavrayskiy-vii')) #지도 투영옵션
plot(glb)

g2b <- gvisGeoChart(Exports, 'Country', 'Profit',
                    option = list(region='150')) #특정지역(유럽)만 보이게하기.
plot(g2b)

city <- c('Seoul','Taegu','Pusan','Gwangju')
val <- c(12,8,10,6)
kor <- data.frame(city, val)
View(kor) 
g3b <- gvisGeoChart(kor, 'city', 'val',
                    option = list(region='KR',
                                  displayMode='regions',
                                  resolution='provinces', #지역
                                  width=600, height=400))
plot(g3b)


#미국 각 주의 문맹률
state.x77
library(datasets)
states <- data.frame(state.name, state.x77)
View(states)

gStates <- gvisGeoChart(states, 'state.name', 'Illiteracy',
                        option=list(region='US',
                                    displayMode='regions',
                                    resolution='provinces',
                                    width=600, height=400))
plot(gStates)


#지진정보
library(readxl)
eq <- read.csv('http://earthquake.usgs.gob/earthquakes/feed/v1.0/summary/2.5_week.csv')
str(eq)
eq$loc=paste(eq$latitude, eq$longitude, sep=':')
eq$loc
str(eq)
g3 <- gvisGeoChart(eq,'loc','depth','mag',
                   options = list(gvis.editor='EQ',
                                  width='800', height='600',
                                  displayMode='Markers',
                                  colorAxis="{color:[['purple','red','orange','blue']}",
                                  )) 


# airquality 에서 특정 달의 날짜와 온도 정보를 추출하여
# 온도>= 75인 정보만 gauge 차트 출력
#온도 범위 0 ~ 100
# 색상 범위 : yellow : 25%, green : 50%, red : 25%
library(dplyr)
library(googleVis)
air <- airquality%>%select(Month, Day,Temp)
airdata <- filter(airquality, airquality$Temp>=75 & airquality$Temp<=100 & airquality$Month==5)
air <- airdata%>%select(Temp, Month)

str(air)
airgauge <- gvisGauge(air,
                   option=list(min=0, max=100,
                               greenFrom=0, greenTo=50,
                               yellowFrom=50, yellowTo=75,
                               redFrom=75, redTo=100,
                               width=1000, height=1000))
plot(airgauge)

#1. data.go.kr에서 임의의 정보를 추출하여 gvisGeoChart 출력
#2. 행정구역_시군구별_성별_인구수 csv or excel 데이터 사용가능
#3. 주민등록 인구 및 세대현황  csv or excel 데이터 사용가능

korpop<-read.csv(file="C:/Users/KB/Desktop/webhosting_20210203/2021_R/res/ppp.csv",header=T)
View(korpop)
g3b <- gvisGeoChart(korpop, 'city', 'valman', 'valwoman',
                    option = list(region='KR',
                                  displayMode='regions',
                                  resolution='provinces', #지역
                                  width=600, height=400))
plot(g3b)
