getwd()
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")
getwd()


## Lect 03 Practice ##
a <- c(1.1:5.1);print(a)
b <- c(1.5:6.9)
length(a)
d <- ("Dragon" "Banana" "Ramesh" "Rajani")


m <- matrix(c(1:25), nrow = 5, ncol = 5); print(m)

n <- matrix(c(1:25), nrow = 5, ncol = 5,byrow = n); print(n)

a <- array(c(1:500), dim = c(10,10,5));print(a)


## Data Frames

x <- data.frame(name = c("John", "Harry", "Ramesh", "Isha"), 
                marks = c(59,60,80,90));print(x)
class(x);nrow(x);ncol(x);names(x);str(x)

y <- data.frame(Training = c("Strength", "Stamina", "Other"),
                Pulse = c(100, 150, 200),
                Duration = c(60, 30, 15) ); print(y);plot(y)


a <- data.frame(name = c("Abhijeet", "Omkar", "Sandeep", "Nilesh", "Sunil"), 
                Marks = c(90, 60, 45, 80, 60));print(a)
c <- cbind(a, Attendence = c(80, 90, 70, 75, 85));print(c)
b <- rbind(a, c("Ravi", 85, 75));print(b)

summary(a)

## Class 03 Pratice  