
library(ggplot2)

data(OrchardSprays)

p<- ggplot(data=OrchardSprays,aes(x=colpos ,y= decrease,fill=as.integer(treatment) ))+
  geom_bar(stat="identity")+
  coord_polar()+
  scale_fill_gradient(low="violet", high="red4")+ 
  theme(axis.title.x=element_blank(), axis.text.x=element_blank(),
        axis.ticks.x=element_blank(), axis.title.y=element_blank(), 
        axis.text.y=element_blank(),axis.ticks.y=element_blank())+
  guides(fill=FALSE)

Orchards2 <- OrchardSprays
Orchards2$colpos<- Orchards2$colpos+0.5
Orchards2$decrease <- Orchards2$decrease*runif(1)*2

p <- p + geom_bar(data=Orchards2,aes(x=colpos ,y= decrease,fill=as.integer(treatment) ), stat="identity")

Orchards3 <- OrchardSprays
Orchards3$colpos<- Orchards3$colpos-0.25
Orchards3$decrease <- Orchards3$decrease*runif(1)*1.4

p <- p + geom_bar(data=Orchards3,aes(x=colpos ,y= decrease,fill=as.integer(treatment) ), stat="identity")
