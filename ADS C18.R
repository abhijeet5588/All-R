getwd() ## 11/11/2024
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

dist <- read.csv("districtscensus.csv", sep = ",")
View(dist)

library(car)
j <- lm(dist$Literate~ dist$Housholds_with_Electric_Lighting+dist$Households_with_Computer 
        + dist$Households_with_Internet, data=dist); print(d)
summary(d)
vif(j)
plot(dist$Literate, dist$Housholds_with_Electric_Lighting)


d <- lm(dist$Households_with_Internet~ dist$Households_with_Computer,
        data=dist); print(d)
summary(d)
