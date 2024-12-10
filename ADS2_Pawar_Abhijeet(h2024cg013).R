
## to know the default working directory
getwd()

## to set new working directory
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## To check new working directory
getwd()



## Q1.a) To check NA values
is.na(calls1$UniqID)

## Importing the given data with a name "calls1"
calls1 <- read.csv("datacalls.csv", sep= ",")

## To view the imported data
View(calls1)

## To check the dimension of the given data 
dim(calls1)

## Q1.b) To summarize the data of variable LowEduc
summary(calls1$LowEduc)

## Q1.c) Range of LowEduc variable
range(calls1$LowEduc)

## Q1.c) Variance of LowEduc variable
var(calls1$LowEduc)

## Q1.c) Standard Deviation of LowEduc variable
sd(calls1$LowEduc)

## Q1.c) Plotting histogram of LowEduc variable
library(DescTools)
hist(calls1$LowEduc, ylim= c(0,60), main = "Histogram of Lowe Education", xlab = "Low Education" )
abline(v=mean(calls1$LowEduc), col = "red", lwd = 2) ## line to indicate mean of the data
abline(v=median(calls1$LowEduc), col = "green", lwd = 2) ## line to indicate median of data
abline(v=Mode(calls1$LowEduc), col = "black", lwd = 2) ## Line to indicate mode of the data
legend ("topright", c("Mean", "Median", "Mode"), fill = c("red", "green", "black")) ## legend for bargraph.
l <- Mode(calls1$LowEduc); print(l) ## to find mode of the data

## Q1.c) Plotting boxplot of variable LowEduc
boxplot(calls1$LowEduc)

## Q1.c) Inter Quartile Range
Q0 <- quantile(calls1$LowEduc, probs = 0); print(Q0) 
Q1 <- quantile(calls1$LowEduc, probs = 0.25); print(Q1)  ##First Quartile
Q2 <- quantile(calls1$LowEduc, probs = 0.50); print(Q2)  ##Second Quartile
Q3 <- quantile(calls1$LowEduc, probs = 0.75); print(Q3)  ##Third Quartile
IQR <- Q3 - Q1; print(IQR) ## Inter Quartile Range
UW <- Q3 +1.5*IQR ; print(UW) ## Upper Whisker
LW <- Q1 -1.5*IQR; print(LW)  ## Lower Whisker

## Q1.d) scatter plot of two variables and their correlation coefficient. 
plot(calls1$Pop, calls1$LowEduc, main = "Scatterplot of Population and Low Education",
     xlab = "Population", ylab = "Low Education", pch = 18, col = "red") ## scatterplot of population and lower education.
cor(calls1$Pop, calls1$LowEduc) 




##Q2) Linear regression model
cor(calls1$Calls, calls1$LowEduc) ## Correlation of between the variables
model1 <- lm(calls1$LowEduc~calls1$Calls) ## Mdoel of linear regression
summary(model1) ## Summary of The model
plot(calls1$LowEduc~calls1$Calls, main = "Linear Regression Model", 
     xlab = "Low Education", ylab = "Calls", col = "blue") ## plot of the variales in the model
abline(model1, col= "red", lwd = 2) ## regression line in the model
r <- resid(model1); print(r) ## Residual of the model
hist(r, main = "Histogram of Residual", xlab = "Residual") ## Histogram of residual.
sum(r) ## Sum of the model




## Q3) Multiple Linear Regression
model2 <- lm(calls1$Calls~calls1$LowEduc+calls1$Jobs+calls1$Pop) ## Multiple Linear Regression model
summary(model2) ## Summary of the model
library(car) ## Library to know variation inflation factor
vif(model2) 
R <- resid(model2); print(R) ## Residual of the model
sum(R) ## Sum of Residual of the model
hist(R, main = "Histogram of Residual", xlab = "Residual") ## histogram of residual of the model
plot(R) ## plotting Residual
abline(h= mean(R)) ## Plotting Mean line
text(30,5, "Mean Line") ## Text of Mean line.



## Q4) 
## probability that a participant selected at 
##random will require more than 600 hours to complete the program
1- pnorm(600, 500, 100) ## probability more than 600 hrs  

## probability that a participant selected at random will take 
## between 500 and 650 hours to complete the training program 
a <- pnorm (500, 500, 100) ## probability for 500 hr
b <- pnorm (650, 500, 100) ## probability for 650 hr
Prob <- b-a  ## required probability
print(Prob)

## probability that a candidate selected at random will require 
## fewer than 580 hours to complete the program 
pnorm(580, 500, 100) ## probability less than 580 hrs


