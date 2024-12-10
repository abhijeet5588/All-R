getwd() ## (22/11/2024)
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

install.packages('caret')
## SUpervised Learning
library(caret)
library(lattice)
library(dplyr)
index <- createDataPartition(iris$Species, p=0.50, list= FALSE) ## Earlier it was 30:70 ratio)
testset <- iris[-index,]
trainset <- iris[index,]
dim(testset)
dim(trainset)

length(index)
View(iris)
View(index)
dim(iris)
head(trainset)
class(trainset)
## Vertical or horizontal?
##What if there are same values in tow classes?
## Will it identify the class of we give it a data outside the dataset in consideration?

## Random Forest 
rftrain <- train(Species~., data=trainset, method = "rf") 
## Species~., is all variables except species)
  

pred<- predict(rftrain, testset[,1:4])
acu <- confusionMatrix(pred, testset$Species)
acu$table
f <- table(factor(testset$Species))
print(f)

## out of 15 times of test the model has predicted 15 times correctly. One can get 14 crct predictions
## and 1 incorrect prediction)

## to check random test sample from the full data
View(testset)
pred <- predict(rftrain, testset[1,1:4])
pred

pred <- predict(rftrain, iris[63,1:4])
pred

acu # to know accuracy.

q()
y

