#5th November#
#Regression#

data(mtcars)
View(mtcars)

plot(mtcars$mpg, mtcars$hp, pch=18, col="purple")
plot(mtcars$mpg ~ mtcars$hp, pch=18, col="purple")
cor(mtcars$hp, mtcars$mpg)
fit <- lm(mtcars$mpg ~ mtcars$hp)
abline(fit, col="pink", lwd=1.5)

print(fit)

# equation of Regression Line #
# mpg = (-0.06823)*hp + 30.09886 #

y2 <- (-0.06823)*mtcars$hp[3] + 30.09886; y2 #estimated value#
mtcars$mpg[3] #observed value#

hist(fit$residuals)

cor(mtcars$disp, mtcars$hp)
plot(mtcars$disp, mtcars$hp, col="skyblue", pch=18)
fit2 <- lm(mtcars$hp~mtcars$disp)
abline(fit2, col="blue", lwd=2)

print(fit2)
mtcars$hp[5]
print(mtcars)
# equation : hp = 0.4376*disp + 45.7345 #

hp1 <- 0.4376*mtcars$disp[1] + 45.7345; hp1
mtcars$hp[1]
res3 <- mtcars$hp[1] - hp1; res3
