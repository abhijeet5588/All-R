## Date 01/10/2024
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files/R Zip")
getwd()
dir()


## Export in R
data(mtcars)
write.table(mtcars,"mtcars.txt", sep = "\t")

## Writing a csv file
write.table(mtcars, "mtcars01.txt", sep = ",", row.names=F)

write.csv(mtcars, "mtcars02.csv")
write.csv(mtcars, "mtcars05.txt")
library(writexl)
write_xlsx(mtcars,"mtcars12.xlsx")

## Importing Data files in varius formats

## CSV file fo Linkedin Connections
getwd()
data <- read.csv("Connections.csv", header = T, sep = ",")
View(data)  ## this is csv file

data <- read.csv("Connections.txt", header = T, sep = "")
View(data) ## This is text file

library(readxl)
data <- read_excel("Connections001.xlsx")
View(data)


### Net CDF file. try to import it and learn abt it.
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files/R Zip")
getwd()
library(ncdf4)
f <- nc_open("NetCDF.nc"); print(f)
View(f)
fix(f)
names(f$var) ## To know variables in the data
names(f$dim)
var01 <- ncvar_get(f, "hybi"); print(var) ## To read data from a specific variable, 
summary(var01)
time01 <- ncvar_get(f, "date"); print(time01)  ## Extract Dimension Information


## To analyse data. Know the problem statement first.

## NEW TOPIC

## Exploratory Data Analysis (EDA)

data("airquality")
c <- (mean(airquality$Ozone, na.rm = T)) ## to remove the NA value
round(c, 2) ## round is to round off the value

## create matrix of 5*5 and calculate mean for row and column

d <- matrix(1:25,5,5); print(d)

mean(d[1,])
mean(d[2,])
mean(d[3,])
mean(d[4,])
mean(d[5,])

mean(d[,1:5])
rowMeans(d, 1:5) ## fucntion to calculate mean of all rows 
colMeans(d, 1:5) ## fucntion to calculate mean of all columns 

## calculate mean of 1 to 4 column means
data("mtcars")
colMeans(mtcars[,1:5])

