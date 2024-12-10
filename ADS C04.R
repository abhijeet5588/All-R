## Import & Export of Data

dir()
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files/R Zip")
getwd()
dir()

data <- read.csv("data_csv.csv", header = F, sep = ",")
class(data); dim(data);head(data,3); str(data)
fix(data)  ## To view data in different window
View(data) ## To view data in Same window

## importing Excel file directly into R
library(readxl)
mydata <- read_excel("data_excel.xlsx",1)  ## 1 is to import 1st worksheet
class(mydata);dim(mydata);str(mydata)

library(readxl)
mydata <- read_excel("data_excel.xlsx",2)  ## 1 is to import 1st worksheet
class(mydata);dim(mydata);str(mydata)

## Text file
tab <- read.csv("data_tab.txt", sep = "\t", header = T)
class(tab); dim(tab);str(tab);print(tab)

a <- read.csv("sales.csv",sep = ",", header = T)
class(a); dim(a);str(a);
print(a)

## Swim Location file
a <- read.csv("swim_location.txt",sep = ",", header = T) 
class(a); dim(a);str(a);print(a);View(a)
## read.csv can read txt, dat & csv files and not excel files.

## Temperature file
a <- read.csv("temp.txt",sep = ",", header = T) 
class(a); dim(a);str(a);head(a,5);View(a)
fix(a)
plot(a$X19800101)
lines((a$X19800101.1), col= "red")  ## max

## Dat file

a <- read.csv("test_dat.dat",sep = "", header = F) 
class(a); dim(a);str(a);head(a,5);View(a)

## database file

library(foreign)
dbf <- read.dbf("mcgm_corporation.dbf");class(dbf);dim(dbf);head(dbf,2)
fix(dbf)

