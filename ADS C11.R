getwd () ## 15/10/2024
setwd ("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")


library(readxl)
d <- read_excel("Punewarddata.xlsx", header = T)
View(d)

g <- subset(d, d$Level == "WARD")
View(g)
barplot(g$No_HH, names.arg = g$Ward, las = 2, cex.names = 0.5)
maxhh <- subset(g, g$No_HH== max(g$No_HH), select = c("Name","No_HH"))
View(maxhh) ## ward with max household

minhh <- subset(g, g$No_HH== min(g$No_HH), select = c("Name","No_HH"))
View(minhh) ## ward with max household

library(dplyr)
e <- g %>% arrange(No_HH) ## Wardwise data in ascending order
barplot(e$No_HH, names.arg = e$Ward, las = 2, cex.names = 0.5, col = "blue")

hist(e$No_HH)

## How to colour particular bars in barplot? (Explore)






