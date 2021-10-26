library(dplyr)
c<-Tweets%>%
  group_by(airline)%>%
  summarise(count=n())

Tweets$text<-tolower(Tweets$name)

Tweets$text1<-sub("[[:punct:]]","",Tweets$text)
Tweets$text1<-gsub('.','',Tweets$text)
Tweets$text1<-gsub("https://","",Tweets$text)




