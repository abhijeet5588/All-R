getwd()
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

data("mtcars");print(mtcars)
model1 <- lm(mpg~hp, data=mtcars); print(model1)

## here we are getting intercept in the equation y=mx+c (intercept is c = 30.09 in this equation)
## slope is -0.06823 = m in the equation

model2 <- lm(mpg~hp+wt, data = mtcars) ; print(model2)
## here we are getting intercept in the equation y=mx+c (intercept is c = 37.2272 in this equation)
## slope is -0.03177 = m in the equation for hp variable
## slope is -3.8778 = m in the equation for wt variable

## We are correlating hp with mpg and we are getting R2 = 0.60, but there are other variables impacting mpg like wt.
## so if we consider wt variable also we can get better value of R2.as both hp and wt are affecting mpg.
model2 <- lm(mpg~wt+hp, data = mtcars) ; print(model2)


dist <- read.csv("districtscensus.csv", sep = ",")
View(dist)


plot(dist$Male_Literate, dist$Male_Workers)
d <- lm(dist$Male_Literate~ dist$Male_Workers+dist$Households_with_Computer, data=dist); print(d)
summary(d)











