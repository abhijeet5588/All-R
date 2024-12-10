getwd ()
setwd ("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## Subsetting
x <- c("a","b","c","d","e","f","g");print(x)

x[1];x[2]       #extracting single element, numeric index

x[1:4]          #extracting sequence of element

x[c(1,4,5)]     #extracting multiple elements

x[x >"a"]        #using relational operator. This is extraction/subsetting

u <- x > "a" ;print(u) #using relational operator. This is testing the condition

v <- x == "a" ; x != "c" ; print(v)  #using relational operator. This is testing the condition

t <- x != "f" ; x < "g" ; print(t) #using relational operator. This is testing the condition

x <- c(10:21); class (x); length(x); print(x)
x [1:2]; x[c(1,2)]   #  numeric index

x[c(1:3,5,8:10)]     # numeric index

# extracting even & odd numbers

x[x%%2 == 0]  ## Extracting even numbers. Modulus will give reminder from division

x[x%%2 != 0]  ## extracting odd numbers. Modulus reminder from division

## Subsetting (Remove)

x <- c(10:21) ; print(x)
x[-1]  ## using negative symbol; removing first number
x[-2]  ## using negative symbol; removing second number
e <- x[-c(1,2,3)]; x[-c(5:8)] ;print(e) # remove a sequence of numbers

## Add & Replace

x <- c(10:21);print(x)
y <- c(90,x);print(y) ## Adding at first
z <- c(x,90);print(z)
w <- c(x,65,85,65);print(w)

##How to add a number in between the series????
f <- c(x,65,85,65,x);print(f)

## Replacing the value at 4th, 8th & 9th position
x[c(4,8,9)]<- c(86,6,9) ;print(x)
x[6]<- "a" ;print(x)
x[7] <- 5+6i ;print(x)

## Why all the three commands are running simultaneously

## Subsetting (getting index)

x <- c(10:21);print(x)
which(11==x)  ## finding index position
which(c(10,15,17),x)  ## We need to use logical function for "Which" command i.e. ==
match(c(10,15,17),x)  ## Finding index position of first occurance


y <- c(5,6,8,9,94,5,4);print(y)
which(5==y) ##


## Creating a sequence of Number

x <- seq(0,100, length=9);print(x)  
## In sequence the difference is always same 
## btw any two elements.

x <- seq(1,20,by=2);print(x)  ## by command is providing the interval as 2
x <- seq(-2,2,by=0.5);print(x) ## by command directly provides the interval
x <- seq(1,10,by=2);print(x)

x <- seq(1,10,length=7);print(x)

x <- seq(1,9,by=pi);print(x)

## If we provide interval it will divide the sequence with that interval irrespective of the length.
## if we provide length, R will divide seq with equal interval within that length.

x <- rep(2,10);print(x)  ## Repeating the sequence

x <- rep(1:3,each=20);print(x)   ## Repeating each position twice

x <- rep(1:3,time=3); print(x)  ## repeating all elements 3 times

x <- c(8,54, rep(2,10));print(x) ## we can use repeat in a vector

x <- c(5,85,95,rep(1:3,time=3));print(x)

class(rep)
class(seq)

## Vectorised operations (Arithmetic)

x <- 1:5; print(x);class(x);length(x)
y <- 6:10; print(y); class(y);length(y)

z <- x+y ;print(z) ## this will add vector to vector.

s <- x*y ;print(s) ## Multiplication of vectors

d <- y-x ;print(d) ## Subtraction of vectors

f <- x/y ;print(f);print(round(f,2));class(f) ##division of vectors

g <- x^2 ; print(g) ## exponential
l <- x^5 ; print(l)
h <- y**x ; print(h)  ## Exponential  (y^x) 

##How to find percentage????????????

s <- 100
t <- 5
x <- (4/100)*100; print(x)

i <- y%%x; print(i) ## modulus

j <- sqrt(y);print(j); class(j) ## Square root

k <- log10(x) ;print(k)

## Vectorised Operations (Relational)

x <- 1:5; print(x);class(x);length(x)
y <- 6:10; print(y); class(y);length(y)

l <- x>y ;print(l) ## Greater than

m <- x <y ;print(m) ## Less than

n <- x >= y ; print(n)

o <- x <= y ; print(o)

p <- x ==y ;print(p)

q <- x!= y; print(q)


## End of the Class