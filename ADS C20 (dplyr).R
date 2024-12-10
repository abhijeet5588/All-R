getwd() ## 13/11/2024
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## dplyr - Grammar of data manipulation
## mutate() - adds new variables that are functions of existing variables
## filter() - picks cases based on their values.
## summarise() - reduces multiple values down to a single summary.
## select() - picks variables based on their names
## arrange() - changes the ordering of the rows

d <- read.csv("districtscensus.csv", sep = ",")
View(d)

data(d)
s <- select(d, District.name:Female_Literate) ## To extract selected columns from the dataset by using variable names.
View(s)  ## cant use $ sign. write names of variables.

g <- select(d, c(District.name,Female_Literate))
View(g)

## Mutate
m <- select(d, -(District.name:Female_Literate)) ## to remove columns from dataset.
dim(m)
View(m)

m <- select(d, -c(District.name,Female_Literate))
View(m)

k <- select(d, -District.name, -Female_Literate)
View(k)
## Select
j <- select(d, starts_with("L"))
View(j)

u <- select(d, ends_with("C"))
View(u)

## Filter function
r <- filter(d, Population > 100000) ## Filtering out Population values > 100000
View(r)

## Arrange Function
e <- arrange(d, Population)  ## ascending order
View(e)

g <- arrange(d, desc(Population))  ## Descending Order
View(g)

## Rename Function
w <- rename(d, Abhijeet = Population, maleee =Male )
View(w)

## Index Function
q <- mutate(d, index = Population - Male)
View(q)


## Group  & Summarize
m <- group_by(d, State.name)
i <- summarise(m, Pop = sum(Population))
View(i)
print(i)


