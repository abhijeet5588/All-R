## Class 03
x <- c(1,2,5);print(x);class(x)

x <- c()

y <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
class(y)

z <- c("Abhijeet", "Pawar")
class(z)
length(z)

a <- c(5L, 6L, 8L)
class(a)
length(a)

d <- c(5+6i,8+9i, 4+5i);print(d);class(d)

## Conversion of vectors
b <- as.numeric(y);print(b);class(b)

c <- as.integer(x);print(c);class(c)

e <- as.character(d);print(e);class(e)

## Mixed data types

f <- c(5L, "Abhijeet", "TISS", 5+6i, 9);print(f);class(f)

## Factor with levels (3 levels as Abhi, No, Yes)

g <- factor(c("No", "Yes", "Abhi","No", "Yes", "Abhi","No", "Yes", 
              "Abhi","No", "Yes", "Abhi" ));print(g);class(g);table(g)

h <- factor(c("TISS", "Non TISS", "TISS", 
              "Non TISS"));print(h);class(h);table(h)

i <- c("Bliss", 5L, 6);print(i);class(i)

## Create a Matric

j <- matrix(c(1:9),nrow = 3,ncol = 3);print(j)

k <- matrix(c(1:8), nrow = 2, ncol = 4);print(k)

l <- matrix(c(1:1), nrow = 1, ncol = 1);print(l)
class(l)
str(l)

## Matrix with all first row as 1

m <- matrix(c(1:5),nrow = 10,ncol = 10,byrow = m);print(m)

#Matrix with same elements

n <- matrix(1,nrow = 5,ncol = 5);print(n)

## Last row with same elements

o <- matrix(c(5:2),nrow = 6,ncol = 6);print(o)

##Same element in diagonal

p <- matrix(c(5,4,3,2,1,5,4,3,2,1,5,4,3,2,1,5,4,3,2,1),nrow= 4,ncol= 4);print(p)

## Array  (byrow is designed for Matrix only & not for Array)

q <- array(c(1:3), dim = c(3:2,2));print(q)

r <- array(c(1:50), dim = c(2:3,5));print(r)

## List

s <- list(Name= "Rajesh", Age = 30);print(s)

t <- list(Name = "Ravi", "Isha", Sex = "M", "F", Age = 21,32); print(t)

u <- list(Name = c("Mahesh", "Amruta", "Ram"), Age = c(12,42,35,51));print(u)
length(u)

##DataFrame

v <- data.frame(Name = c("Rajesh", "Ramesh", "Ishita", "Anshuman", "Sourav",
                         "Abhijeet"), 
                Marks = c(65,55,95,85,65,35),
                Age = c(25,24,23,25,23,21),
                Attendence = c("P","A","P","A","P","P"));print(v)
factor(v$Age)                
pq<-factor(v$Age)

# Dataframe with one integer, one factor, one logical & check column name

ab <- integer (c(5L,6L))
bc <- factor (c("Y", "N"))
vc <- logical (T, F, T)
w <- data.frame(integer(ab),factor(bc),logical(vc));print(w)
