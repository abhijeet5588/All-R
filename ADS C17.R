getwd()
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

dist <- read.csv("districtscensus.csv", sep = ",")
View(dist)


plot(dist$Literate, dist$Housholds_with_Electric_Lighting)

d <- lm(dist$Literate~ dist$Housholds_with_Electric_Lighting,data=dist); print(d)
summary(d)

d <- lm(dist$Literate~ dist$Housholds_with_Electric_Lighting+dist$Households_with_Computer,
        data=dist); print(d)
summary(d)
library(car)
j <- lm(dist$Literate~ dist$Housholds_with_Electric_Lighting+dist$Households_with_Computer, 
        + dist$Households_with_Internet, data=dist); print(d)
summary(d)
var(j)
vif(j)

cor(d)


d <- lm(dist$Literate~ dist$Housholds_with_Electric_Lighting+ dist$Households_with_Internet,
        data=dist); print(d)
summary(d)

d <- lm(dist$Households_with_Internet~ dist$Households_with_Computer,
        data=dist); print(d)
summary(d)

plot(dist$Literate, dist$Housholds_with_Electric_Lighting)
g <- lm(dist$Literate~ dist$Housholds_with_Electric_Lighting+dist$Households_with_Computer, 
        + dist$Households_with_Bicycle, data=dist); print(d)
abline(g)
summary(d)
vif(g)



## plot 001
## Wooohohooo I got good graph.
j <- plot(dist$Households_with_Bicycle, dist$Literate)
k <- lm(dist$Literate~ dist$Housholds_with_Electric_Lighting + dist$Households_with_Bicycle, data=dist); print(d)
summary(k)
vif(k)
f <- resid(k)
hist(f)
sum(f)
plot(f)




 ## Plot 002
k <- lm(dist$Workers~ dist$Literate, data=dist); print(k)
summary(k)

k <- lm(dist$Workers~ dist$Households_with_Scooter_Motorcycle_Moped, data=dist); print(k)
summary(k)

k <- lm(dist$Workers~ dist$, data=dist); print(k)
summary(k)
