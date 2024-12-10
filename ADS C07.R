## Date 03/10/2024
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files/R Zip")
getwd()
dir()

## Measures of Central Tendency
x<- c(1,5,8,6,9,1,2,5)
mean <- sum(x)/length(x); print(mean)
mean(x) 
u <- x - mean(x); print(u)
x<- c(1,5,8,6,9,1,2,5, 100)
mean(x)

set.seed(10)  ## To keep the numbers in population size same all the time.
pop <- rnorm(10000)
c <- sample(pop, 100)
mean(c)

## Law of large numbers (Read it)

## Median (Positional mean)
median(mtcars$hp)
## Percentile concept
m <- c(2,5,7,8,6,2,12)
median(m)
quantile(m, probs = 0.5)
replace(m, m ==max(m), 50)

## Mode
d <- c(5,4,8,8,6,9,9,9,9,9,2)
library(DescTools)  ## package for mode.
Mode(d)
table(d) ## It will give frequency of repeated number in data

f <- c(5,4,8,8,6,9,9,9,9,9,2,2,2,2,2)
library(DescTools)  ## package for mode.
Mode(f)
barplot(f, col = "red")

## Data distrubution

## Class assignment
## Using own data set, produce three types of distribution, 
## add mean, median and mode line.
f <- c(10,10,10,10,10,10,13,14,14,14,16,16,18,19,14,12,11)
hist(f)
mean(f)
abline(v=mean(f), col = "red", lwd= 2)
abline(v=Mode(f), col = "green", lwd= 2)
abline(v=median(f), col = "pink", lwd= 2)


k <- c(2,4,4,4,5,5,5,5,6,6,6,6,6,6,7,7,7,7,8,8,8,9)
hist(k)
abline(v=mean(k), col = "red", lwd= 2)
abline(v=Mode(k), col = "green", lwd= 2)
abline(v=median(k), col = "pink", lwd= 2)
mean(k)
Mode(k)
median(k)

l <- c(4,5,5,6,6,6,7,7,7,7,8,8,8,8,8,9,9,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,11,11,12)
hist(l)
abline(v=mean(l), col = "red", lwd= 2)
abline(v=Mode(l), col = "green", lwd= 2)
abline(v=median(l), col = "pink", lwd= 2)

## prodcue unimodal, bimodal, multi modal histogram (incompelte) 

## Break to have control over data
set.seed(20)
f <- rnorm(100)
summary(f)
hist(f, breaks=8)
hist(f, breaks = c(-3,-2,-1,0,1,2,3), col = "blue")
