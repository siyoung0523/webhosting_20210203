
library(XML)
library(ggplot2)

api <-"http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getMinuDustFrcstDspth"
apiKey <- "34MCI1v1B3mJKNN3fxRUYwxe2VVdUIC9WFArsieiRAf%2BODmi5iqbks6e5YQgk16jmoyyno1879Pm17n8LERX1g%3D%3D"
returnType <- "xml"
numOfRows <- 100
pageNo <- 1
InformCode <- "PM10"

url <- paste(api, "?serviceKey=", apiKey, 
             "&returnType=", returnType,
             "&numOfRows=",numOfRows,
             "&pageNo=",pageNo,
             "&InformCode=",InformCode,
             sep ="")
url
xmlFile <- xmlParse(url)
xmlRoot(xmlFile)
df <- xmlToDataFrame(getNodeSet(xmlFile,"//items/item"))
df

ggplot(data=df, aes(x=dataTime, y=informCode)) +
  geom_bar(stat = "identity", fill="green")#identity는 데이터를 숫자크기로 출력하라

ggplot(data=df, aes(x=dataTime, y=informCode)) +
  geom_bar(stat = "identity") +
  #x축 눈급 라벨 90도 회전
  theme(axis.text.x=element_text(angle=90)) +
  labs(title="대기실 예보통보 조회",x="통보날짜", y="통보코드") +
  scale_fill_manual(values=rainbow(10))
