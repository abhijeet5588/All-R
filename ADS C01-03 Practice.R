getwd ()
setwd ("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")

##1 Numeric vector and place number on top of each bar

x <- c(1:6); print(x)
barplot(x,ylim=c(0,10));text(x,y=x,labels=x,pos=3,offset = 0.5)

x <- c(1:6); print(x)
barplot(x,ylim=c(0,10));
text(x, label = x, pos = 3, cex = 1, col = "black")

##2 mtcars select variable and make barplot with x axis tick label & adjust y axis limit

rowname(mtcars)
data(mtcars)
print(mtcars
barplot(mtcars$disp,ylim = c(0,500),names.arg = row.names(mtcars),
        las=2,cex.names = 0.5)
abline(h=mean(mtcars$disp),lty=2,lwd=2)
max(mtcars$disp)

##3 using mtcars data plot any 2 variables add mean line for x and y
plot(mtcars$mpg~mtcars$disp,ylab = "MPG",xlab="DISP",main="MT CARS")
abline(h=mean(mtcars$mpg),col="green",lwd=2)
abline(v=mean(mtcars$disp),col="red",lwd=2)
legend("topright",c("Mean MPG","Mean DISP"),
       col = c("green","red"), lty=c(1,1),cex=1)

