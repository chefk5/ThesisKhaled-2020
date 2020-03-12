#old scripts used for determining descriptive stats. Ended using a software called JASP for that.


nexus <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/metricsFinal/metrics_nexus.csv")
xd <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/metricsFinal/metrics_xd.csv")
apstud <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/metricsFinal/metrics_apstud.csv")
tistud <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/metricsFinal/metrics_tistud.csv")
dnn3 <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/metricsFinal/metrics_dnn3.csv")
mesos2 <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/metricsFinal/metrics_mesos2.csv")
dnn1 <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/metricsFinal/metrics_dnn1.csv")
mesos1 <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/metricsFinal/metrics_mesos1.csv")
dnn4 <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/metricsFinal/metrics_dnn4.csv")

mergedProjects <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/mergedProjects.csv")
mergedProjects$New.Devs


library(dplyr)
library(sqldf)

Pnexus <- sqldf("select * from mergedProjects where project = 'nexus'")
Ptistud <- sqldf("select * from mergedProjects where project = 'tistud'")
Pxd <- sqldf("select * from mergedProjects where project = 'xd'")
Pmesos2 <- sqldf("select * from mergedProjects where project = 'mesos2'")
Pdnn1 <- sqldf("select * from mergedProjects where project = 'dnn1'")
Pmesos1 <- sqldf("select * from mergedProjects where project = 'mesos1'")
Papstud <- sqldf("select * from mergedProjects where project = 'apstud'")
Pdnn4 <- sqldf("select * from mergedProjects where project = 'dnn4'")
Pdnn3 <- sqldf("select * from mergedProjects where project = 'dnn3'")


Ptistud$sprint.length[1]

mySummary <- function(x){
  total <- sum(x)
  minimum <- min(x)
  maximum <- max(x)
  avg <- mean(x)
  medn <- median(x)
  standardDev <- sd(x)
  return (sprintf("sum is %f ... min is %f .....max is %f .... avg is %f ...medn is %f..... std is %f ....",total, minimum, maximum, avg, medn ,standardDev))

}

hyper <- function(x){
  minimum <- min(x)
  maximum <- max(x)
  avg <- mean(x)
  standardDev <- sd(x)
  return (sprintf(" min is %f .....max is %f .... avg is %f ..... std is %f ....", minimum, maximum, avg, standardDev))
  
  
}





xd <- na.omit(xd)

hyper(nexus$hyper)
hyper(xd$hyper)
hyper(apstud$Hyperproductivity)
hyper(tistud$TISTUD)
hyper(dnn3$hyper)
hyper(mesos2$hyper)
hyper(dnn1$Hyperproductivity)
hyper(mesos1$hyper)
hyper(dnn4$hyper)


mySummary(nexus$Number.of.Devs)
mySummary(xd$Number.of.Devs)
mySummary(apstud$Number.of.Devs)
mySummary(tistud$Number.of.Devs)
mySummary(dnn3$Number.of.Devs)
mySummary(mesos2$Number.of.Devs)
mySummary(dnn1$Number.of.Devs)
mySummary(mesos1$Number.of.Devs)
mySummary(dnn4$Number.of.Devs)

#new devs
mySummary(Pnexus$New.Devs)
mySummary(Pxd$New.Devs)
mySummary(Papstud$New.Devs)
mySummary(Ptistud$New.Devs)
mySummary(Pdnn3$New.Devs)
mySummary(Pmesos2$New.Devs)
mySummary(Pdnn1$New.Devs)
mySummary(Pmesos1$New.Devs)
mySummary(Pdnn4$New.Devs)


#sprint length
mySummary(Pnexus$sprint.length)
mySummary(Ptistud$sprint.length)
mySummary(Pxd$sprint.length)
mySummary(Pmesos2$sprint.length)
mySummary(Pdnn1$sprint.length)
mySummary(Pmesos1$sprint.length)
mySummary(Papstud$sprint.length)
mySummary(Pdnn4$sprint.length)
mySummary(Pdnn3$sprint.length)

write.csv(df_timob, "C:/Users/Khaled/Documents/thesis/ds/jiradataset2/df_timob.csv")

