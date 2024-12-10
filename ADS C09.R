getwd ()
setwd ("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## Correlation
data(mtcars); 
cor(mtcars$hp, mtcars$mpg) ## -0.77 is corelation coefficient.
plot(mtcars$hp, mtcars$mpg)
## This has negative correlation.
## We cant comapre categorical with numeric.
## We need both variables to be numeric to comapre.

data("airquality"); cor(airquality$Temp, airquality$Day)
plot(airquality$Temp, airquality$Day)


c <- cor(mtcars); print(c)
class(mtcars); dim(c)

cor(mtcars$cyl, mtcars$mpg)

## if the value of corelation coefficient is 1 its storngly corelated. 
## If the Corelation value is 0 its completely scattered.

plot(mtcars$carb, mtcars$drat)
cor(mtcars$carb, mtcars$drat)

v <- mtcars[1:11, 1:3]
cor(v)

## Dustrict Census file 
dir()
getwd()
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")
getwd()

g <- read.csv("districtscensus.csv",header = T, sep = ",")
View(g)
str(g)

h <- subset(g,State.name=="HIMACHAL PRADESH"&Population>500000); print(h)
View(h)

k <- subset(g,State.name=="HIMACHAL PRADESH"); print(k)
View(k)
summary(k)

## Give number of dist in each state.
## Convert state column into factor then factor into data frame.
j <- as.data.frame(g$State.name)
View(table(j))

## Total population of state
l <- subset(g,State.name=="HIMACHAL PRADESH" & g$Population); print(l)
View(l)
sum(l$Population)

## Incomplete. Solve the questions. 






