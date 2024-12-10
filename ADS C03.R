getwd()
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## Grouped Plot

x <- 1:4; y <- 2:5; yx <- rbind(x,y)
barplot(yx,beside=T, col = c("red", "green"),
        names.arg= c("2001","2002","2003","2004"),
        xlab= "Year", ylab = "Percentage increase in lacs Metric Tons")
legend("topleft", c("rice","Wheat"), fill = c("red", "green"), cex = 1.5)

## Scatter Plot

data(mtcars)
plot(mtcars$hp, mtcars$mpg, pch = 2, col= "red")

## Adding horizontal & Vertical line
## adding annotation

data(mtcars); plot(mtcars$hp, mtcars$mpg, pch = 2, col = "blue")
abline(v = 146.6875, col = "green", lty = 5)
abline(h = 20.09, col = "blue", lty = 1)
abline(v = 123, col = "orange", lty = 5, lwd = 2)
abline(h = 19.2, col = "gray", lty = 1, lwd = 2)
text(250,18, "Median", cex = 1.2, col = "Red")
text (250,21, "Meanline", cex = 1.2, col = "black")


## Scatter Plot (Conditional Plotting)

library(datasets)
class(airquality)
str(airquality)
head(airquality)
dim(airquality)

with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in NY City", type = "n"))
with(subset(airquality, Month==5),points(Wind, Ozone, col = "red", pch = 19,))
with(subset(airquality, Month!=5),points(Wind, Ozone, col = "blue", pch = 19))
legend("topright", c("May", "Other Month"), pch = c(19,1), col = c("red", "blue"))

## Multi Frame Plot

x <- rnorm(100)
par(mfcol = c(2,2))
hist(x, main = "Left plot")
boxplot(x, main = "Right Plot")
barplot(x, main = "Bottom Left")
plot(x, main = "Bottom Right")

x <- rnorm(100)
par(mfrow = c(2,2))
hist(x, main = "Left plot", col = "green")
boxplot(x, main = "Right Plot", col = "red")
barplot(x, main = "Bottom Left", col = "magenta")
plot(x, main = "Bottom Right", col = "blue")


## Matrix plot in R
## Explore Plots

