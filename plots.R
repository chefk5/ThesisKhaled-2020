#plots which were not used

projectsHor <- read.csv("C:/Users/Khaled/Documents/thesis/ds/jiradataset2/mergedProjectsHorizontal.csv")
tistud_hp_hor <- projectsHor[,3]
xd_hp_hor <- projectsHor[,6]
apstud_hp_hor <- projectsHor[,9]
nexus_hp_hor <- projectsHor[,12]
print(nexus_hp_hor)

tistud_hp_hor <- na.omit(tistud_hp_hor)
xd_hp_hor <- na.omit(xd_hp_hor)
apstud_hp_hor <- na.omit(apstud_hp_hor)
nexus_hp_hor <- na.omit(nexus_hp_hor)

x1 <- c(1:70)
x2 <- c(1:66)
y1 <- nexus_hp_hor
y2 <- xd_hp_hor
df1 <- data.frame(x1,y1 )
df2 <- data.frame(x2,y2 )
par(mfrow=c(1,2))
a <- plot_ly(df1, x=~x1, y=~y1, type = 'scatter', mode = 'lines')

b <- plot_ly(df2, x=~x2, y=~y2, type = 'scatter', mode = 'lines')
c <- plot_ly(df2, x=~x2, y=~y2, type = 'scatter', mode = 'lines')


d <- plot_ly(df1, x=~x1, y=~y1, type = 'scatter', mode = 'lines')

e <- plot_ly(df2, x=~x2, y=~y2, type = 'scatter', mode = 'lines')
f <- plot_ly(df2, x=~x2, y=~y2, type = 'scatter', mode = 'lines')
subplot(a, b, c, d, e,f)