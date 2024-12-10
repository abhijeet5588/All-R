getwd()
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")

plot(1,3)

plot(c(1,5), c(4,3))

plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))  ## plotting points 

plot(c(1:10),type = 'l') ## plotting the line

plot(c(1:10), type = 'l', lwd = 5) ## Line weadth.

plot(c(1:10), type = 'l', lwd = 3, lty = 4) ## line types

plot(c(1:10), type = 'l', lwd = 3, lty = 6) ## line types

plot(c(1:10), type = 'l', lwd = 3, lty = 0) ## removes the line.

## 0 removes the line
## 1 displays a solid line
## 2 displays a dashed line
## 3 displays a dotted line
## 4 displays a "dot dashed" line
## 5 displays a "long dashed" line
## 6 displays a "two dashed" line

## Multiple lines

line1 <- c(1,5,2,4,7)
line2 <- c(8,5,7,4,7)
plot(line1, type = "l", col = "blue")
lines(line2, type = "l", col = "red")

line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")

plot(c(1:10), main = "Graph", xlab = "X Axis", ylab = "Y Axis", type = 'l')  ## lables

plot(c(1:10), main = "Graph", xlab = "X Axis", ylab = "Y Axis", 
     type = 'l', col= "red") ## colour

plot(c(1:10), main = "Graph", xlab = "X Axis", ylab = "Y Axis", 
     col= "red", cex = 2)  ## cex =  Size of bubble

plot(c(1:10), main = "Graph", xlab = "X Axis", ylab = "Y Axis", pch = 10, 
     col= "red")  ## shape of format


## scatter plots

## comparing two plots

x1 <- c(5,2,7,8,9,9,6,8,7,7,8,5,9,6,5) ## First observation
y1 <- c(88,98,54,68,89,87,85,57,55,66,86,95,45,78,87)  ## First observation

x2 <- c(6,  1,  4,  9,  3,  2, 10,  7,  5,  8, 9,5,8,7,9) ## Second observation
y2 <- c(60, 28, 80, 95, 61, 15, 16, 24,  63, 90, 32, 71, 76, 80, 66) ## Second observation

plot(x1,y1, main = "Cars", xlab = "Cars Age", ylab = "Car Speed", 
     col = "red", cex = 2)
points(x2,y2, col = "navy", cex = 2)

## Bar Graphs
x <- c("A", "B", "C", "D", "E") # x-axis values
y <- c(5, 8, 9, 2,6) # y-axis values

barplot(y, names.arg = x)
##names.arg defines the names of each observation in the x-axis

??????????????????????????????????????????
  
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, density = 15)  ## Density / Bar Texture

## Bar width

barplot(y, names.arg = x, width = 5)

barplot(y, names.arg = x, width = c(5,4,3,2)) ## bar with different width
barplot(y, names.arg = x, width = c(5,4,3,2), horiz = T) ## Horizontal bars

## Pie chart from w3school is incomeplete.



