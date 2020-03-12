#Calculate current sprint developers

#Get project's sprints
sprints = sqldf("select DISTINCT sprint from completedAPSTUD")
sprints_vector <- unlist(sprints, use.names=TRUE)
values_list <- list()
k=1

#loop
for (i in 1:length(sprints_vector)) {
  issuesInSprint <-completedAPSTUD[completedAPSTUD$sprint == sprints_vector[i],]
  issues_vector <- unlist(issuesInSprint$key, use.names = TRUE)
  totalNumberOfDevsInIssue = 0
  totalNumberOfDevsInSprint = 0
  totalNameOfDevelopersInIssue = ""
  totalNameOfDevelopersInSprint = ""
  for (j in 1:length(issues_vector)) {
    issues_devs <-changelog[changelog$key == issues_vector[j],]
    nameOfDevelopersInIssue <-paste(unique(issues_devs[["author"]]), collapse = " ")
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, nameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = strsplit(totalNameOfDevelopersInIssue, " ")[[1]]
    totalNameOfDevelopersInIssue = unique(totalNameOfDevelopersInIssue)
    totalNumberOfDevsInIssue = length(totalNameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, collapse = " ")
  }
  print(totalNumberOfDevsInSprint)
  line <- paste(sprints_vector[i], paste(issues_vector, collapse = " ") , totalNumberOfDevsInIssue,  totalNameOfDevelopersInIssue, sep = " ___ ")
  values_list[[k]] <- line
  k=k+1
  
}
devs_table <- data.frame(matrix(unlist(values_list), byrow=T))
devs_table_APSTUD <- separate(devs_table, col = matrix.unlist.values_list...byrow...T., into = c("sprint", "issues","Number of Developers",  "Developers Names"), sep = " ___ ")

sprints_test <- sprints_all %>% select(project,sprint.id, sprint.name)
sprints_test <- unique(sprints_test[sprints_test$project=="apstud",])
colnames(sprints_test) <- c("project", "id","sprint")
devs_table_APSTUD <- sqldf("SELECT *
              FROM sprints_test
              JOIN devs_table_APSTUD USING(sprint)")
devs_table_APSTUD <- arrange(devs_table_APSTUD, id)

write.csv(devs_table_APSTUD, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsAPSTUD.csv")
######XD###########

#Get project's sprints
sprints = sqldf("select DISTINCT sprint from completedXD")
sprints_vector <- unlist(sprints, use.names=TRUE)
values_list <- list()
k=1

#loop
for (i in 1:length(sprints_vector)) {
  issuesInSprint <-completedXD[completedXD$sprint == sprints_vector[i],]
  issues_vector <- unlist(issuesInSprint$key, use.names = TRUE)
  totalNumberOfDevsInIssue = 0
  totalNumberOfDevsInSprint = 0
  totalNameOfDevelopersInIssue = ""
  totalNameOfDevelopersInSprint = ""
  for (j in 1:length(issues_vector)) {
    issues_devs <-changelog[changelog$key == issues_vector[j],]
    nameOfDevelopersInIssue <-paste(unique(issues_devs[["author"]]), collapse = " ")
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, nameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = strsplit(totalNameOfDevelopersInIssue, " ")[[1]]
    totalNameOfDevelopersInIssue = unique(totalNameOfDevelopersInIssue)
    totalNumberOfDevsInIssue = length(totalNameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, collapse = " ")
  }
  line <- paste(sprints_vector[i], paste(issues_vector, collapse = " ") , totalNumberOfDevsInIssue,  totalNameOfDevelopersInIssue, sep = " ___ ")
  values_list[[k]] <- line
  k=k+1
  
}
devs_table <- data.frame(matrix(unlist(values_list), byrow=T))
devs_table_XD <- separate(devs_table, col = matrix.unlist.values_list...byrow...T., into = c("sprint", "issues","Number of Developers",  "Developers Names"), sep = " ___ ")

sprints_test <- sprints_all %>% select(project,sprint.id, sprint.name)
sprints_test <- unique(sprints_test[sprints_test$project=="xd",])
colnames(sprints_test) <- c("project", "id","sprint")
devs_table_XD <- sqldf("SELECT *
              FROM sprints_test
              JOIN devs_table_XD USING(sprint)")
devs_table_XD <- arrange(devs_table_XD, id)

write.csv(devs_table_XD, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsXD.csv")

######NEXUS#############

#Get project's sprints
sprints = sqldf("select DISTINCT sprint from completedNEXUS")
sprints_vector <- unlist(sprints, use.names=TRUE)
values_list <- list()
k=1

#loop
for (i in 1:length(sprints_vector)) {
  issuesInSprint <-completedNEXUS[completedNEXUS$sprint == sprints_vector[i],]
  issues_vector <- unlist(issuesInSprint$key, use.names = TRUE)
  totalNumberOfDevsInIssue = 0
  totalNumberOfDevsInSprint = 0
  totalNameOfDevelopersInIssue = ""
  totalNameOfDevelopersInSprint = ""
  for (j in 1:length(issues_vector)) {
    issues_devs <-changelog[changelog$key == issues_vector[j],]
    nameOfDevelopersInIssue <-paste(unique(issues_devs[["author"]]), collapse = " ")
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, nameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = strsplit(totalNameOfDevelopersInIssue, " ")[[1]]
    totalNameOfDevelopersInIssue = unique(totalNameOfDevelopersInIssue)
    totalNumberOfDevsInIssue = length(totalNameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, collapse = " ")
  }
  print(totalNumberOfDevsInSprint)
  line <- paste(sprints_vector[i], paste(issues_vector, collapse = " ") , totalNumberOfDevsInIssue,  totalNameOfDevelopersInIssue, sep = " ___ ")
  values_list[[k]] <- line
  k=k+1
  
}
devs_table <- data.frame(matrix(unlist(values_list), byrow=T))
devs_table_NEXUS <- separate(devs_table, col = matrix.unlist.values_list...byrow...T., into = c("sprint", "issues","Number of Developers",  "Developers Names"), sep = " ___ ")

sprints_test <- sprints_all %>% select(project,sprint.id, sprint.name)
sprints_test <- unique(sprints_test[sprints_test$project=="nexus",])
colnames(sprints_test) <- c("project", "id","sprint")
devs_table_NEXUS <- sqldf("SELECT *
              FROM sprints_test
              JOIN devs_table_NEXUS USING(sprint)")
devs_table_NEXUS <- arrange(devs_table_NEXUS, id)

write.csv(devs_table_NEXUS, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsNEXUS.csv")

####TISTUD#####


#Get project's sprints
sprints = sqldf("select DISTINCT sprint from completedTISTUD")
sprints_vector <- unlist(sprints, use.names=TRUE)
values_list <- list()
k=1

#loop
for (i in 1:length(sprints_vector)) {
  issuesInSprint <-completedTISTUD[completedTISTUD$sprint == sprints_vector[i],]
  issues_vector <- unlist(issuesInSprint$key, use.names = TRUE)
  totalNumberOfDevsInIssue = 0
  totalNumberOfDevsInSprint = 0
  totalNameOfDevelopersInIssue = ""
  totalNameOfDevelopersInSprint = ""
  for (j in 1:length(issues_vector)) {
    issues_devs <-changelog[changelog$key == issues_vector[j],]
    nameOfDevelopersInIssue <-paste(unique(issues_devs[["author"]]), collapse = " ")
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, nameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = strsplit(totalNameOfDevelopersInIssue, " ")[[1]]
    totalNameOfDevelopersInIssue = unique(totalNameOfDevelopersInIssue)
    totalNumberOfDevsInIssue = length(totalNameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, collapse = " ")
  }
  print(totalNumberOfDevsInSprint)
  line <- paste(sprints_vector[i], paste(issues_vector, collapse = " ") , totalNumberOfDevsInIssue,  totalNameOfDevelopersInIssue, sep = " ___ ")
  values_list[[k]] <- line
  k=k+1
  
}
devs_table <- data.frame(matrix(unlist(values_list), byrow=T))
devs_table_TISTUD <- separate(devs_table, col = matrix.unlist.values_list...byrow...T., into = c("sprint", "issues","Number of Developers",  "Developers Names"), sep = " ___ ")


sprints_test <- sprints_all %>% select(project,sprint.id, sprint.name)
sprints_test <- unique(sprints_test[sprints_test$project=="tistud",])
colnames(sprints_test) <- c("project", "id","sprint")
devs_table_TISTUD <- sqldf("SELECT *
              FROM sprints_test
              JOIN devs_table_TISTUD USING(sprint)")
devs_table_TISTUD <- arrange(devs_table_TISTUD, id)

write.csv(devs_table_TISTUD, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsTISTUD.csv")

####MESOS#####

#Get project's sprints
sprints = sqldf("select DISTINCT sprint from completedMESOS")
sprints_vector <- unlist(sprints, use.names=TRUE)
values_list <- list()
k=1

#loop
for (i in 1:length(sprints_vector)) {
  issuesInSprint <-completedMESOS[completedMESOS$sprint == sprints_vector[i],]
  issues_vector <- unlist(issuesInSprint$key, use.names = TRUE)
  totalNumberOfDevsInIssue = 0
  totalNumberOfDevsInSprint = 0
  totalNameOfDevelopersInIssue = ""
  totalNameOfDevelopersInSprint = ""
  for (j in 1:length(issues_vector)) {
    issues_devs <-changelog[changelog$key == issues_vector[j],]
    nameOfDevelopersInIssue <-paste(unique(issues_devs[["author"]]), collapse = " ")
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, nameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = strsplit(totalNameOfDevelopersInIssue, " ")[[1]]
    totalNameOfDevelopersInIssue = unique(totalNameOfDevelopersInIssue)
    totalNumberOfDevsInIssue = length(totalNameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, collapse = " ")
  }
  print(totalNumberOfDevsInSprint)
  line <- paste(sprints_vector[i], paste(issues_vector, collapse = " ") , totalNumberOfDevsInIssue,  totalNameOfDevelopersInIssue, sep = " ___ ")
  values_list[[k]] <- line
  k=k+1
  
}
devs_table <- data.frame(matrix(unlist(values_list), byrow=T))
devs_table_MESOS <- separate(devs_table, col = matrix.unlist.values_list...byrow...T., into = c("sprint", "issues","Number of Developers",  "Developers Names"), sep = " ___ ")

sprints_test <- sprints_all %>% select(project,sprint.id, sprint.name)
sprints_test <- unique(sprints_test[sprints_test$project=="mesos",])
colnames(sprints_test) <- c("project", "id","sprint")
devs_table_MESOS <- sqldf("SELECT *
              FROM sprints_test
              JOIN devs_table_MESOS USING(sprint)")
devs_table_MESOS <- arrange(devs_table_MESOS, id)

df_mesos_p1 <- devs_table_MESOS [1:10,]

df_mesos_p2 <- sqldf("SELECT *
                      FROM devs_table_MESOS
                      WHERE Sprint LIKE 'Twitter %'")
df_mesos_p2 <- arrange(df_mesos_p2, id)

df_mesos_1 <- rbind(df_mesos_p1,df_mesos_p2)

df_mesos_2 <- sqldf("SELECT *
                      FROM devs_table_MESOS
                      WHERE Sprint LIKE 'Mesosphere %'")
df_mesos_2 <- arrange(df_mesos_2, id)
write.csv(df_mesos_1, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsMESOS1.csv")
write.csv(df_mesos_2, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsMESOS2.csv")


####DNN#####

#Get project's sprints
sprints = sqldf("select DISTINCT sprint from completedDNN")
sprints_vector <- unlist(sprints, use.names=TRUE)
values_list <- list()
k=1

#loop
for (i in 1:length(sprints_vector)) {
  issuesInSprint <-completedDNN[completedDNN$sprint == sprints_vector[i],]
  issues_vector <- unlist(issuesInSprint$key, use.names = TRUE)
  totalNumberOfDevsInIssue = 0
  totalNumberOfDevsInSprint = 0
  totalNameOfDevelopersInIssue = ""
  totalNameOfDevelopersInSprint = ""
  for (j in 1:length(issues_vector)) {
    issues_devs <-changelog[changelog$key == issues_vector[j],]
    nameOfDevelopersInIssue <-paste(unique(issues_devs[["author"]]), collapse = " ")
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, nameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = strsplit(totalNameOfDevelopersInIssue, " ")[[1]]
    totalNameOfDevelopersInIssue = unique(totalNameOfDevelopersInIssue)
    totalNumberOfDevsInIssue = length(totalNameOfDevelopersInIssue)
    totalNameOfDevelopersInIssue = paste(totalNameOfDevelopersInIssue, collapse = " ")
  }
  print(totalNumberOfDevsInSprint)
  line <- paste(sprints_vector[i], paste(issues_vector, collapse = " ") , totalNumberOfDevsInIssue,  totalNameOfDevelopersInIssue, sep = " ___ ")
  values_list[[k]] <- line
  k=k+1
  
}
devs_table <- data.frame(matrix(unlist(values_list), byrow=T))
devs_table_DNN <- separate(devs_table, col = matrix.unlist.values_list...byrow...T., into = c("sprint", "issues","Number of Developers",  "Developers Names"), sep = " ___ ")


sprints_test <- sprints_all %>% select(project,sprint.id, sprint.name)
sprints_test <- unique(sprints_test[sprints_test$project=="dnn",])
colnames(sprints_test) <- c("project", "id","sprint")
devs_table_DNN <- sqldf("SELECT *
              FROM sprints_test
              JOIN devs_table_DNN USING(sprint)")
devs_table_DNN <- arrange(devs_table_DNN, id)


df_dnn_p1 <- sqldf("SELECT *
                      FROM devs_table_DNN
                      WHERE Sprint LIKE '7%' ")

df_dnn_p1a <- df_dnn_p1[21:21,]

df_dnn_p1 <-  df_dnn_p1[-nrow(df_dnn_p1),]


df_dnn_p2 <- sqldf("SELECT *
                      FROM devs_table_DNN
                      WHERE Sprint LIKE '8%' ")

df_dnn_p2_group1 <- rbind(df_dnn_p1, df_dnn_p2)

df_dnn_p3 <- sqldf("SELECT *
                      FROM devs_table_DNN
                      WHERE Sprint LIKE '2%' ")

df_dnn_p4 <- sqldf("SELECT *
                      FROM devs_table_DNN
                      WHERE Sprint LIKE '3%' ")

df_dnn_p2_group2 <- rbind(df_dnn_p3, df_dnn_p4)

df_dnn_p2_group3 <- sqldf("SELECT *
                      FROM devs_table_DNN
                      WHERE Sprint LIKE 'Content%' ")

df_dnn_p2_group4 <- sqldf("SELECT *
                      FROM devs_table_DNN
                      WHERE Sprint LIKE 'Platform%' ")

df_dnn_p2_group4 <- rbind(df_dnn_p1a,df_dnn_p2_group4)

df_dnn_p2_group5 <- sqldf("SELECT *
                      FROM devs_table_DNN
                      WHERE Sprint LIKE 'Engage%' ")

write.csv(df_dnn_p2_group1, file = "C:/Users/Khaled/Documents/thesis/ds/jiradataset2/newData/metrics/nbrOfDevsLOG/devsDNN1.csv")
write.csv(df_dnn_p2_group2, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsDNN2.csv")
write.csv(df_dnn_p2_group3, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsDNN3.csv")
write.csv(df_dnn_p2_group4, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsDNN4.csv")
write.csv(df_dnn_p2_group5, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/devsDNN5.csv")




#devs variation

k=1
values_list <- list()
#for loop to filter project
devsVariation <- function(project){
  for (i in 1:nrow(project)) {
    if(i>1){
      issuesInPreviousSprint <-project[i-1,]
      issuesInSprint <- project[i,]
      sprints1 <- toString(issuesInPreviousSprint$`Developers Names`)
      sprints2 <- toString(issuesInSprint$`Developers Names`)
      developersInPreviousSprint <-unlist(strsplit(sprints1, split = " "))
      developersInCurrentSprint <-unlist(strsplit(sprints2, split = " "))
      newDevs  <- length(setdiff(developersInCurrentSprint, intersect(developersInPreviousSprint, developersInCurrentSprint)))
      line <- paste(i, newDevs, sep = " ___ ")
    }
    else{
      newDevs <- 0
      line <- paste(i, newDevs, sep = " ___ ")
    }
    
    
    #add it to a list
    values_list[[k]] <- line
    k=k+1
    
  }
  
  sprints_table <- data.frame(matrix(unlist(values_list), byrow=T))
  devsVar <- separate(sprints_table, col = matrix.unlist.values_list...byrow...T., into = c("sprint","New Devs"), sep = " ___ ")
  return(devsVar)
}

developersVariationXD <- devsVariation(devs_table_XD)
developersVariationNEXUS <- devsVariation(devs_table_NEXUS)
developersVariationTISTUD <- devsVariation(devs_table_TISTUD)
developersVariationAPSTUD <- devsVariation(devs_table_APSTUD)
developersVariationMESOS1 <- devsVariation(df_mesos_1)
developersVariationMESOS2 <- devsVariation(df_mesos_2)
developersVariationDNN1 <- devsVariation(df_dnn_p2_group1)
developersVariationDNN3 <- devsVariation(df_dnn_p2_group3)
developersVariationDNN4 <- devsVariation(df_dnn_p2_group4)

write.csv(developersVariationXD, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/developersVariationXD.csv")
write.csv(developersVariationNEXUS, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/developersVariationNEXUS.csv")
write.csv(developersVariationTISTUD, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/developersVariationTISTUD.csv")
write.csv(developersVariationAPSTUD, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/developersVariationAPSTUD.csv")
write.csv(developersVariationMESOS1, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/developersVariationMESOS1.csv")
write.csv(developersVariationMESOS2, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/developersVariationMESOS2.csv")
write.csv(developersVariationDNN1, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/developersVariationDNN1.csv")
write.csv(developersVariationDNN3, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/developersVariationDNN3.csv")
write.csv(developersVariationDNN4, file = "../jiradataset2/newData/metrics/nbrOfDevsLOG/developersVariationDNN4.csv")





