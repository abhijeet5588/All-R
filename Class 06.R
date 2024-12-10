getwd ()
setwd ("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## Subsetting the Matrix

x <- matrix(1:6,2,3); print(x)
y <- x[1,2];  print(y)   ## Using numeric indices, one element
f <- x[2,1]; print(f)
x[,2]  ## extracting 2nd column
class(y)
diag(x) 
# Doubt

x[1,2,drop=FALSE]  ## to get the subset in matrix form.

x[1,,drop=FALSE] ## extracting only first row

x[,1 , drop=FALSE] ## making matrix subset as matrix

## Matrix transpose function

x <- matrix(1:15,5,3);print(x);diag(x)

y<- t(x);print(y);diag(y)

## In transpose and original matrix the diagonal remain same.

d <- matrix(1:16,4,4);print(d);diag(d)

s <- t(d);print(s);diag(s) 

## So when we transpose the matrix and use byrow command in matrix, 
## the dimension of matrix does not remain same.


## Array

x <- array(1:8, dim = c(2,2,2)) ;print(x)
x[,,1] ## first matrix of array
x[,,2]  ## second matrix of the array
x[1,1,2]
x[1,1,1]
 
x[1,,1,drop = F]  ## first row of first matrix

x[,2,2, drop = F] ## Second column of second matrix
class(x)

## subsetting the List

x <- list(abc=c(1:4), bar=c(0.6,5.8,5.6)) ;print(x);str(x)
y <- x[1];print(y);class(y)  ## this will give us list of first variable
z <- x[[1]]; print(z);class(z) ## this will give elements of 1st variable
x$bar; x[["bar"]] ## both will give same results
d <- x[[2]];print(d); class(d)

x <- list(abc=c(T,F,T,F), bar=c("s","d","d")) ;print(x);str(x);class(x)
y <- x[1];print(y);class(y)
z <- x[[1]] ; print(z);class(z)
f <- x[2] ;print(f);class(f)
g <- x[[2]];print(g);class(g)


x <- list(abc=c(T,F,T,F), bar=c("s","d","d"), bex=c(1,5,8,9,6))
g <- x[c(1,3)];print(g);class(g) ## list of 1st & 3rd variable

h <- x[[c(1,3)]];print(h) ;class(h)  ## 3rd element of 1st variable
j <- x[[c(2,3)]];print(j);class(j)

## Nested list

x <- list(abc=c(1,5,8,2), a = list(cars=c("Toyota","Suzuki","Hundai"), c(1,5,2)), 
          Logical=c(T,F,T,F,T));print(x)
x[[1]]
x[[2]]
x[[3]]
x[[c(3,3)]]
x[["2"]][["cars"]]
k <- x[[c(1,3)]];print(k);class(k) ## Not working???????????????



data(mtcars)
dim(mtcars)
class(mtcars)
str(mtcars)
attributes(mtcars) ## attribute gives us rownmes, column names & class.
print(mtcars)
head(mtcars)  ## first 6 observations/rows
head(mtcars,2) ## first 2 observations/rows
tail(mtcars,5)

## Subsetting the column

x <- mtcars[1];print(x);class(x) ## Extracting column with numeric index

d <- mtcars["hp"];print(d);class(d) ## Extracting column with name

f <- mtcars$wt;print(f); class(f)  ## using $ symbol. 

mtcars[[2,3]][[3,5]]
## how to do this?

## Subsetting column
data(mtcars)
x <- mtcars[c(1,2,3)];head(x,2); class(x) ## by default R knows they columns
y <- mtcars[c(1:3,6,7,8:9)];head(y,3);class(y)

x<- mtcars[c("mpg","hp","wt")];head(x,3);class(x)

y <- mtcars [,c(1,3)];head(y,3);class(y)  ## no rows. extracting only 1 & 3rd column.


## Subsetting rows

data(mtcars)
head(mtcars[1,])  ### First row
head(mtcars[1:3,])  ## first 3 rows
head(mtcars[1:3,1:5]) ## 3 rows and 5 column
head(mtcars[c(1,5,7,10),]) ## selected rows

## subsetting dataframe using conditions

t <- subset(mtcars,gear>3);print(t);dim(t)

u <- subset(mtcars,gear>3 & cyl>=6);print(u);dim(u)

v <- subset(mtcars,disp > 100 & cyl < 5 & gear == 4);head(v);dim(v) ## multiple conditions
## whenever you are using subset function, check dimensions.

rownames(mtcars) ##Extracting all rownames.

## New inbuilt dataset

data("airquality")
print(airquality)
dim(airquality)

v <- subset(airquality,Wind > 8 & Solar.R < 200);print(v); dim(v)


## cbind() & rowbind() functions take sequence of vector, matrix or data frame arguments & combine 
## by columns and rows resp.

p <- c(1:5);q <- c("a","b","c","d","e")
d <- cbind(p,q);k <- rbind(p,q);d ;class(d)

## Relational operators

a <- 7.5; b <- 5; print(a); print(b)
print(a<b)
print(a>b)
print(a==b)
## try other relational commands

y <- 6:10 ;print(y)
y==8; y != 8; y >10; y == 8.0000001


## Arithmetic operations on matrix







