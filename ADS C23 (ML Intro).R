getwd() ## (20 & 21/11/2024)
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## Machine Learning Intro

## random data generation and visualization
set.seed(1234)
x <- rnorm(12, mean = rep(1:3, each= 4), sd = 0.2)
y <- rnorm(12, mean = rep(c(1,2,3), each = 4),sd =0.2)
plot(x,y, col = "blue", pch = 19, cex = 2)
text(x+ 0.05, y + 0.05, labels = as.character(1:12))

## K means Clustering
## Applying the algorithm
dataframe<- data.frame(x,y)
km_clu <- kmeans(dataframe, centers = 3)
names(km_clu); km_clu$cluster
km_clu$size

## Visualising 
dataframe <- data.frame(x,y)
plot(x,y, col = km_clu$cluster, pch = 19)
points(km_clu$cluster, col = 4, pch = 3, cex = 1.25)

## Census data

## Package - Scatterplot 3D

cen <- read.csv("districtscensus.csv")
View(cen)
ss <- subset(cen, cen$State.name=="MAHARASHTRA")
View(ss) ## Subset is not used.
## Calling the variables from data
SC_Pop <- cen$SC
Gr_Edu<- cen$Graduate_Education
plot(SC_Pop,Gr_Edu)

## Creating k Means Clustering
df <- data.frame(SC_Pop,Gr_Edu)
km <- kmeans(df, centers = 6)
names(km) ; km$cluster
km$size
km$

## Visualising
df <- data.frame(SC_Pop,Gr_Edu)
plot(SC_Pop,Gr_Edu, col = km$cluster, pch = 16)
points(km$centers, col = 4, pch = 3, cex = 2.25)

#### Number of states in each clusters
fact <- factor(km$cluster) ## 
print(fact)
table(fact) ## To know number of districts in each cluster

## Now find the number of states in each cluster
cb <- data.frame(cen$State.name, cen$District.name,cen$SC, cen$Graduate_Education, km$cluster)
View(cb) ## dataframe of cluster and state, dist, sc pop & graduates.


sub <- subset(cb, cb$km.cluster==1) ##to know states in one cluster
View(sub)
g <- factor(sub$cen.State.name) ## to know number of districts in states.
t <- table(g)
View(t)

## Hierarchical clustering technique

q()





