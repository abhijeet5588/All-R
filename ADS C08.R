## Date 04/10/2024
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files/R Zip")
getwd()
dir()

## IQR - Inter Quartile Range

data(mtcars)
boxplot(mtcars$hp, ylim=c(0,350))
median(mtcars$hp)
quantile(mtcars$hp, probs = 0.5)

##IQR, Upper & Lower Whisker
data(mtcars)
boxplot(mtcars$hp, ylim=c(0,350))
Q0 <- quantile(mtcars$hp, probs = 0); print(Q0)  ## Min
Q1 <- quantile(mtcars$hp, probs = 0.25); print(Q1)
Q2 <- quantile(mtcars$hp, probs = 0.5); print(Q2)
Q3 <- quantile(mtcars$hp, probs = 0.75); print(Q3)
IQR <- Q3 - Q1; print(IQR)
UW <- Q3 + (1.5*IQR); print(UW)
LW <- Q1 - (1.5*IQR); print(LW)
range(mtcars$hp)

data(mtcars)
boxplot(mtcars$mpg, ylim = c(-10,40))
Q0 <- quantile(mtcars$mpg, probs = 0); print(Q1)
Q1 <- quantile(mtcars$mpg, probs = 0.25); print(Q2)
Q2 <- quantile(mtcars$mpg, probs = 0.5); print(Q2)
Q3 <- quantile(mtcars$mpg, probs = 0.75); print(Q3)
IQR <- Q3 - Q2; print(IQR)
UW <- Q3 + (1.5*IQR); print(UW)
LW <- Q1 - (1.5*IQR); print(LW)


## Box plot will take values of dataset within max whisker reach.
## values outside max Whisker reach will not be displayed.(photograph)
## values outside upper and lower whisker are potential outliers.

## Range
v<- c(2,5,9,6,3,7,4,1)
Ra <- max(v)- min(v); print(Ra)

range(airquality$Ozone, na.rm = T)
Re <- max(airquality$Ozone, na.rm = T) - min(airquality$Ozone, 
          na.rm = T);print(Re)

## Variance
v <- c(2,4,5,12,15,18,21); var(v)
var(mtcars$mpg)
var(airquality$Ozone,na.rm = T)
range(airquality$Ozone,na.rm=T)
mean(airquality$Ozone, na.rm = T)

## std deviation
v <- c(2,4,5,12,15,18,21); sd(v)
sd(mtcars$mpg) ## std deviation command

## Measures of variations
v <- c(2,4,5,12,15,18,21); var(v); range(v);sd(v)
range(airquality$Temp)
var(airquality$Temp)
sd(airquality$Temp)

range(mtcars$mpg)
var(mtcars$hp)
sd(mtcars$mpg)
var(mtcars$mpg)
sd(mtcars$hp)
var(mtcars$hp)

## Sumamry Statistics


