dir()
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files/R Zip")
getwd()
dir()

library(haven) 
merge34 <- read_dta("merge34.dta") ## to import Stata file
class(merge34)
View(merge34)
fix(merge34)  ## not working
dim(merge34)

pc11 <- read.csv("pc11_td_clean_pc11dist.csv", header = T, sep = ",")
print(pc11)
View(pc11)
fix(pc11)

data <- read.csv("sales.csv", header = T, sep = ",")
View(data)
dim(data)
fix(data)

c <- subset(data, data$Region == "East" & data$Item == "Pencil"); print(c)
sum(c$Units)  ## finding units of pencil sold in East region.

c <- subset(data, data$Rep == "Jones" & data$Item == "Binder"); print(c)
v <- sum((c$Units));print(v)
f <- mean(c$Unit.Cost); print(f)
d <- v*f; print(d) ## this will give cost of binders sold by Jones
    
  
c <- subset(data, data$OrderDate == "" & data$Item == "Binder"); print(c)
  
## Find number of units sold in 2016  
class(data$OrderDate)
data <- read.csv("sales.csv", header = T, sep = ",")
date <- as.Date(data$OrderDate, format = "%m/%d/%y")
class(date)  
View(date)


sales <- cbind(date,data);print(sales)
class(sales)
View(sales)
f <- subset(sales, sales$date< "2017-01-01")
print(f)

## above task is incomplete

##Importing data from internet
my_data <- read.delim("http://sthda.com/upload/boxplot_format.txt"); print(my_data)

library(data.table)
mydat <- fread("https://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat")
print(mydat)
class(mydat);dim(mydat)

mydat1 <- fread("http://www.stats.ox.ac.ukxpub/datasets/csb/ch2.dat") 
print(mydat1)  

mydat2 <- fread("http://www.stats.ox.ac.uk/pub/datasets/csb/ch17.dat"); print(mydat2)

## Exporting in R
data("mtcars")
write.table(mtcars, "mtcars.txt", sep = ",", row.names = F)

getwd()

##incomplete