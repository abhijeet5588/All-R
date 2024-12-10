## Class 2.1 - Data types and Data Structure ## 


## A Number is considered numeric by default in R. 
## Need to specify to make is integer by writing a number with L. Ex- 5L ###
## When written in double quotation its treated as character ##
## When written w/o double quotation i.e. True,  False, T, F or anything 
## then its treated as logical ## 


X <- 5; print (X); class (X)
T <- 5.5; print (T); class (T)
Z <- -6.5; print (Z); class (Z)
P <- 8L; print (P); class (P)
Q <- "Abijeet"; print (Q); class (Q)
J <- TRUE; print (J); class (J) 
E <- "1"; print (E); class (E) 
L <- TRUE; print (L); class (L) 

## To convert numeric to integer use as.integer or as.numberic function ##
x <- 5.5; print(x); class(x)
y <- as.integer(x);class(y);print(y)
z <- as.numeric(y);class(z);print(z)
u <- TRUE; print(u);class(u)
w <- as.numeric(u);print(w);class(w)
a <- 1; class(a)
b <- as.logical(a);print(b); class(b)
c <- as.numeric(b);print(c);class(c)
d <- 10; class(d)
e <- as.character(d); class(e);print(e)
z <- as.numeric(e);class(z);print(z)
g <- TRUE; class(g)
h <- as.numeric(g); class(h)print(h)  ## R is not able to interpret character as numeric## 
 
## Data Structure ##
## Vector hold data of same character.##
## Factor is categorical data## 


##Class 03 - 27 Aug2024 ##

x <- c(0.1,0.3,4); print(x); class(x) ## numeric vector ##
length(x)

y <- c(TRUE, FALSE); print(y);class(y)
length(y)

z <- c("a", "b", "c");print(z); class(z)
length(z)

u <- c(1:15);print(u);class(u)  ##exception for the integer rule.
length(u)

i <- c(1,5,8,9,40);print(i);class(i)
length(i)

l <- c(5:50);print(l);class(l)
length(l)

k <- c(2.5:20);print(k);class(k)  ## its numeric class
length(k)


## mixing of elements ##


n <- c(1, TRUE, 4+3i);print(n);class(n) ## it will convert all elements in one class#
length(n)

m <- c("DON", 5L, TRUE, 4+6i);print(m);class(m)
length(m)

j <- c(6L, FALSE, TRUE, 3+5i);print(j);class(j) ## error bcz of capital c##
length(j)

o <- c(8,9,5111,"TISS",TRUE);print(o);class(0);length(o)


## MATRIX ##

m <- matrix(nrow = 2,ncol = 3); print(m)
D <- dim(m); class(D) #Class of dimension is INTEGER ###
attributes(m)  ##attributes gives dimensions of matrix##

g <- matrix(c(1:9), nrow = 3, ncol = 3); print(g) #Here default is column wise

g <- matrix(c(1:9), nrow = 3, ncol = 3, byrow = TRUE); print(g) 
dim(g)

n <- matrix(c(1:100), nrow = 10, ncol = 10, byrow = TRUE); print(n)
dim(n)

r <- matrix(c("a","b","c","d","e","f","g","h","i","j"),nrow = 5,ncol = 10);print(r)
 #So this is for matrix of character##
dim(r)

q <- matrix(c(6+4i, 8+7i, 9+8i), nrow = 2,ncol = 2);print(q)


## ARRAYS

z <- array(c(1:12), dim = c(2,3,2));print(z)


s <- array(c("a","b","c","d","e","f","g","h","i","j"), dim = c(5,5,2)) ; print(s)
#you cant arrange horizontally in arrays.


d <- array(c(1:150), dim = c(5,5,6));print(d);dim(d); class(f)
str(d)


##LIST

x <- list(2, TRUE, "a", 4+8i); print(x); class(x)
str(x)

x <- list (name="Fred", wife="Merry", children = 3, ages = c(4,28,26)); print(x); class(x)
str(x)
length(x)


## FACTOR

x <- factor(c("yes","no","True","Flase", "yes","no","True","Flase"));print(x)
table(x)
class(x)

## DATA FRAME

x <- data.frame(name = c("John", "Harry", "Ramesh", "Isha"), 
                marks = c(59,60,80,90));print(x)
class(x);nrow(x);ncol(x);names(x)
str(x)



data(mtcars);class(mtcars);dim(mtcars)
colnames(mtcars)
rownames(mtcars)
plot(mtcars)
str(mtcars)



