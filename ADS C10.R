getwd () ## 11/10/2024
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")
getwd()

## Class Assignment
## Dustrict Census file 

g <- read.csv("districtscensus.csv",header = T, sep = ",")
View(g)
str(g)

k <- subset(g,g$State.name=="HIMACHAL PRADESH"); print(k)
View(k)

#5# Make barplot for showing districtwise population
barplot(k$Population, names.arg = k$District.name, las=2, cex.names = 0.8)

#6# Show dist with highest & lowest population
max(g$Population)
which(g$Population==max(g$Population))

min(g$Population)
which(g$Population==min(g$Population))

#7# Analyse & Visualise literacy rate among male & female population.
j<- subset(g,g$State.name=="HIMACHAL PRADESH"); print(k)  ## This is subsetting the state
View(j)
Male <- (j$Male_Literate/j$Male)*100; print(x) ## THis is Literacy rate
Female <- (j$Female_Literate/j$Female)*100; print(x)
z <- rbind(Male, Female); print(z) ## making row-wise data
a <- j$District.name ## to name dist on x axis.
barplot(z, beside=T, names.arg = a, las = 2, col = c("red","blue"), ylim = c(0,100))
legend("topleft", c("Male Literacy", "Female Literacy"), fill = c("red", "blue"))

#8# Compute & compare percentage of SC & ST population in the selected state.
j<- subset(g,g$State.name=="HIMACHAL PRADESH"); print(k)  ## This is subsetting the state
View(j)
fix(g)
SC <- (j$SC/j$Population)*100 ; print(SC)
ST <-(j$ST/j$Population)*100 ; print(ST)

e <- rbind(SC, ST); print(e)
a <- j$District.name
barplot(e, beside = T, names.arg = a, las = 2, cex.names = 1, 
        col = c("red", "blue"),ylim = c(0,100), 
        main = "Percentage Population of SC & ST in Himachal Pradesh")
legend ("topright", c("% SC Population", "% ST Population"), fill = c("red", "blue"))


#9# Take any two variable of your choice & try to understand its data distribution.
boxplot(g$Population/100000, ylim = c(0,250), main = "Population Histogram", 
     xlab = "Population")
hist(g$Population/100000, ylim = c(0,250), main = "Population Histogram", 
     xlab = "Population")

hist(g$Literate/100000, ylim = c(0,400), main = "Literate Population Histogram", 
     xlim= c(0,120), xlab = "Literate Population")

boxplot(g$Hindus/100000, ylim = c(0,250), main = "Population Histogram", 
     xlab = "Population")

hist(g$Male_SC/100000, ylim = c(0,250), main = "Population Histogram", 
     xlab = "Population")















