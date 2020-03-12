allProjects <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/mergedProjectsFinal-oneCol.csv")

library("sqldf")
xd <- sqldf("select * from allProjects where project ='xd' ")
tistud <- sqldf("select * from allProjects where project ='tistud' ")
apstud <- sqldf("select * from allProjects where project ='apstud' ")
nexus <- sqldf("select * from allProjects where project ='nexus' ")
mesos1 <- sqldf("select * from allProjects where project ='mesos1' ")
mesos2 <- sqldf("select * from allProjects where project ='mesos2' ")
dnn1 <- sqldf("select * from allProjects where project ='dnn1' ")
dnn3 <- sqldf("select * from allProjects where project ='dnn3' ")
dnn4 <- sqldf("select * from allProjects where project ='dnn4' ")


write.csv(xd, file = "../jiradataset2/FinalDataForProjects/xd.csv")
write.csv(tistud, file = "../jiradataset2/FinalDataForProjects/tistud.csv")
write.csv(apstud, file = "../jiradataset2/FinalDataForProjects/apstud.csv")
write.csv(nexus, file = "../jiradataset2/FinalDataForProjects/nexus.csv")
write.csv(mesos1, file = "../jiradataset2/FinalDataForProjects/mesos1.csv")
write.csv(mesos2, file = "../jiradataset2/FinalDataForProjects/mesos2.csv")
write.csv(dnn1, file = "../jiradataset2/FinalDataForProjects/dnn1.csv")
write.csv(dnn3, file = "../jiradataset2/FinalDataForProjects/dnn3.csv")
write.csv(dnn4, file = "../jiradataset2/FinalDataForProjects/dnn4.csv")




writerFunction("xd")


write.csv(xd, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsAPSTUD.csv")
