# KoNLP - 사전을 통해 문서에 포함된 단어의 품사를 분석.
install.packages("wordcloud2") #단어 빈도 시각화
install.packages("Sejong") #세종사전
install.packages("hash") #MD5 
install.packages("rJava")
install.packages("tau") #테스트 분석
install.packages("tm") #텍스트 가공
install.packages("devtools")
remotes::install_github('haven-jeon/KoNLP'
                        ,upgrade="never",
                        INSTALL_opts=c("--no-multiarch"))

library(KoNLP)
#시스템 사전
##useSystemDic()
#세종사전
useSejongDic()
#NIA 사전
useNIADic()

docData <-"롯데마트가 판매하고 있는 흑마늘 양념치킨이 논란이 되고 있다."

#명사추출
extractNoun(docData)

#KAIST tag 9개 품사로 분류
SimplePos09(docData)


