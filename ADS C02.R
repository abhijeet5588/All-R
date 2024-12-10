getwd()
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## Pie Chart
x <- c(85,75,26,95,84,26,34);pie(x)

x <- c(58,65,50,65,85)
labels <- c("Maharashtra", "Rajasthan", "Gujarat", "W Bengal", "Telangana");
pie(x, labels)
pie (x, c("Maharashtra", "Rajasthan", "Gujarat", "W Bengal", "Telangana"))

x <- c(95,25,65,85,98)
label <- c("Raju", "Aman", "Sukhi", "Sushi", "Talpade")
piepercent <- round(100*x/sum(x),2) ## here 2 is number of digits after decimal 
pie(x, labels = piepercent, main = "Sem Marks", col = heat.colors(length(x)))
legend("topleft", c("Raju","Aman","Sukhi","Sushi","Talpade"), cex = 0.8,
       fill = heat.colors(length(x)))

## Color Palette  (https://r-charts.com/colur-palettes/)
library(paletteer)
paletteer_c("grDevices::rainbow", 5)

paletteer_c("grDevices::rainbow",7)

paletteer_c("grDevices::heat.colors",7)

paletteer_c("grDevices::terrain.colors",7)

## Line Chart
x <- c(4,5,6,3,7); y <- c(2,3,6,7,8); plot(x,y,type = "o", lwd=2)
lines(y,type = "o", col= "blue")

## Line Chart with Legend
rain_2001 <- c(7,12,28,3,41);rain_2002 <- c(14,7,6,19,3)

plot(rain_2001, type = "o", col = "green", xlab = "Month", ylab = "Rainfall in Month",
     main = "Rainfall Chart", lwd = 2, lty = c(4), pch = 4)

lines(rain_2002, type = "o", col= "blue", lwd = 2, lty = c(3), pch = 6)

legend ("topleft", c("Year 2001", "Year 2002"), col = c("green", "blue"), 
        lty = c(4,3), pch = c(4,6)) 

## To define the limit of axis use ylim or xlim

## Line Chart with Legend
rain_2001 <- c(7,12,28,3,41);rain_2002 <- c(14,7,6,19,3)

months <- c("Jan", "Feb", "Mar","Apr","May")

plot(rain_2001, type = "o", col = "green", xlab = "Month", ylab = "Rainfall in Month",
     main = "Rainfall Chart", lwd = 2, lty = c(4), pch = 4, xaxt = "n")

lines(rain_2002, type = "o", col= "blue", lwd = 2, lty = c(3), pch = 6)

axis(1, labels= months, at = 1:5)  ## here 1 is x axis, 2 is y axis

legend ("topleft", c("Year 2001", "Year 2002"), col = c("green", "blue"), 
        lty = c(4,3), pch = c(4,6)) 

## xaxt = n command to remove default numbers on axis.

x <- 1:10; y <- x^2; z <- y/2; xy <- y/1.5
plot(x,y, type = 'l', col = "blue"); 
points(y, pch = 15, col = "blue")
points(z, pch = 10, col = "red"); 
lines(z, col = "red")
lines(xy, col = "green"); 
points(xy, pch = 12, col = "green")

## you can write lty and pch commands in lines command. SO no need of points commands.

## Grouped Barplots
x<- 1:4; y <- 2:5; xy <- cbind(x,y)
class(xy)  ## its matrix, array
print(xy) ## this is the matrix

barplot(xy, beside = T, col = rainbow(4), names.arg = c("2010","2020"),
        xlab = "Year", ylab = "Percentage increase in Migration")

legend ("topleft", fill = rainbow(4), c("Del", "Hyd", "Mum", "Che"), cex = 1.5)

