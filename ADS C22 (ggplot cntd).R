getwd() ## 19/11/2024
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

library(ggplot2)
g <- ggplot(mtcars, aes(x=hp, y=mpg))
g+ geom_point(col="red", pch=5)

## Change the chape
g + geom_point(col="blue", shape = 5)

g + geom_point(col="blue", shape = 10)

g + geom_point(col="blue", shape = 18)

## Histogram
ggplot(mtcars, aes(x = hp)) + geom_histogram(bins=5)
## Why the bars are not aligned with values on x axis??
##Solution
ggplot(mtcars, aes(x = hp)) + geom_histogram(bins=5)+
  scale_x_continuous(breaks = seq(0, 350, by = 50))
## not working



## Using colour as third variable
f <- ggplot(mtcars, aes (x = mpg, y= hp, color =  factor(cyl)))
f + geom_point() ## Interprete the graph.

f <- ggplot(mtcars, aes (x = mpg, y= hp, shape = factor(cyl), color =  factor(cyl)))
f + geom_point()+ labs(x= "Mileage", y = "Power") ## Changing the shape of points.
## shape = factor(cyl) - changing the shape of cyl based on frequencies.

## Scatter plot of large number of points (Over plotting)
xy <- data.frame(x = rnorm(10000), y = rnorm(10000))
ggplot(xy, aes(x,y))+geom_point(col = "skyblue")

xy <- data.frame(x = rnorm(10000), y = rnorm(10000))
ggplot(xy, aes(x,y))+geom_point(alpha = 0.05, col = "blue")
## alpha = 0.05: This sets the transparency of the points. 
## The value 0.05 means the points will be highly transparent, 
## allowing overlapping points to be visible. 
## The lower the value of alpha, the more transparent the points are.


## Working with facets in ggplots
p <- ggplot(mtcars, aes (x = mpg, y= hp)) + geom_point()
p+ facet_grid(.~cyl) ## segregating in different panels.

p <- ggplot(mtcars, aes (x = mpg, y= hp)) + geom_point()
p+ facet_grid(cyl~.) ## segregating in different panels.


## 4 variables
p <- ggplot(mtcars, aes(x = mpg, y = hp)) + geom_point()
p+facet_grid(gear~cyl) ## y~x
View(mtcars)

## Arranging plots
data(mpg)
View(mpg)
?mpg
p1 <- ggplot(mpg) + geom_point(aes(x = displ, y = hwy))
p1

p2 <- ggplot(mpg)+ geom_bar(aes(x = as.character(year), fill = drv),
      position = "dodge")+ labs(x = "gear")
p2

p3 <- ggplot(mpg) + geom_density(aes (x = hwy, fill = drv), colour= NA)+ 
  facet_grid(rows = vars(drv))
p3

library(patchwork)
p1+p2
p1/p2
p1+p2/p3

ggplot(mtcars, aes(hp, mpg)) + 
  geom_point() + geom_smooth(method = "lm")
## The shaded area if confidence interval.
## For a given point in shaded area the confidence level is 95%
## Ask again

ggplot(mtcars, aes(hp, mpg)) + 
  geom_point() + geom_smooth()











