getwd()
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## Applied Data Science C001

x <- rnorm(100);plot(x)
class(x)
summary(x)
length(x)

## rnorm generates random numbers that follow a normal distribution
## rnorm(100,50,5) here 100 is number of observations
## 50 is mean of the data
## 5 is std deviation

## rnorm is Random variable
x <- rnorm(100);plot(x,pch=1)
x <- rnorm(100);plot(x,pch=15)

## par is parameter which gives arguments inside R

par("pch")  ## pch is point character   
par("col")  ## default colour
?par  ## to know all parameters 

par("lty")  ##Line type
par("lwd")  ##Line weadth
par("col")  ##colour
par("bg")   ##background 
par("mar")   ## Margin of plot
par("mfrow") ## Multi frame row. to arrange multiple plots row-wise
par("mfcol") ## Multi frame row. to arrange multiple plots column-wise

## changing colour (Default is black)
x <- rnorm(100);plot(x, pch = 19, col = "red")
x <- rnorm(100);plot(x, pch = 19, col = "magenta")
x <- rnorm(100);plot(x, pch = 19, col = "gold")
x <- rnorm(100);plot(x, pch = 19, col = "yellow")
x <- rnorm(100);plot(x, pch = 19, col = "green")
x <- rnorm(100);plot(x, pch = 19, col = "skyblue")
x <- rnorm(100);plot(x, pch = 19, col = "maroon")
x <- rnorm(100);plot(x, pch = 19, col = "orange")
x <- rnorm(100);plot(x, pch = 19, col = "seagreen")

## cex function = changing size of symbol (default is 1)

x <- rnorm(100);plot(x, pch = 19, col = "red", cex = 1)

## changing X & Y labels & changing the title.

x <- rnorm(100);plot(x, pch = 19, col = "skyblue", cex = 2, xlab = "Items", 
                     ylab = "Change in %", main = "Export Data")

## plot for uni variate data

hist(mtcars$disp, pch = 19, col = "skyblue", cex = 1.5, xlab = "Items", 
     ylab = "Disp", main = "MT Cars Data")

plot(mtcars$disp, pch = 19, col = "skyblue", cex = 1.5, xlab = "Items", 
  ylab = "Disp", main = "MT Cars Data")

## plot for bivariate data

plot(mtcars$mpg,mtcars$drat, pch = 19, col = "skyblue", 
     cex = 1.5, xlab = "Mpg", ylab = "Drat", main = "MT Cars Data")

## Type plot to be drawn (for lines = 'l')

x <- rnorm(100);plot(x, type = 'l')  ## only lines
x <- rnorm(100);plot(x, type = 'b')  ## Line and point Both over-plotted
x <- rnorm(100);plot(x, type = 'o')  ## over-plot
x <- rnorm(100);plot(x, type = 'h')  ## histogram like vertical lines
x <- rnorm(100);plot(x, type = 's')  ## staircase

## linetype

x <- rnorm(100);plot(x, type = 'l',lty=1) 
x <- rnorm(100);plot(x, type = 'l',lty=2) 
x <- rnorm(100);plot(x, type = 'l',lty=3) 
x <- rnorm(100);plot(x, type = 'l',lty=4) 
x <- rnorm(100);plot(x, type = 'l',lty=5) 
x <- rnorm(100);plot(x, type = 'l',lty=6) 

## Histogram

x <- rnorm(100); hist(x, col= "skyblue", main = "Temperature", xlab ="Range",
                      ylab = "Freq")

## Bar plot
x <- c(7,12,35,41);class(x);barplot(x)

x <- data.frame(marks = c(45,75,84,26,56,75,82),
                names = c("Rajesh", "Niranjan", "Swapnil","Prajwal", "Ravi","Rani","Kavi"))
barplot(x$marks, names.arg = x$names, 
        xlab = "Names", ylab = "Revenue", col= "skyblue") 



barplot(x$marks, names.arg = x$names, 
        xlab = "Names", ylab = "Revenue", col= "skyblue") 

## las is level orientation
barplot(x$marks, names.arg = x$names, 
        xlab = "Names", ylab = "Revenue", col= "skyblue", las = 1) 

## Box Plot
data(mtcars)
boxplot(mtcars$mpg, xlab = "Milage", ylab = "Miles per gallon", col = "green")
summary(mtcars$mpg)

## meaning of this ~ is Y Vs X

data(mtcars)
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab = "Miles Per Gallon",
        main = "Milage Data")

boxplot(mpg ~ gear, data = mtcars, xlab = "Gear", ylab = "Miles Per Gallon",
        main = "Milage Data")
str(mtcars)
 ## for box plot we need categorical data on x axis.





