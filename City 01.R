setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")
getwd()
dir()

## Pie chart of Literate & Illiterate in Pune
library(RColorBrewer)
l <- c("Literate", "Illiterate")
k <- c(2496324, 628134)
percentages <- round(k / sum(k) * 100,2)
g <- paste(percentages, "%", sep = " ")
j <- pie(k, labels = g,col = c("#ADD8E6", "#2E8B57" ), 
         main = "Literate and Illiterate population in PMC", lwd = 2)
legend("topleft", c("Literate", "Illiterate"), cex = 0.8,
       fill =c("#ADD8E6", "#2E8B57"))


## Male & Female Literacy & Illiteracy
h <- c("Male", "Female")
m <- c(1317345, 1178979)
percentages <- round(m / sum(m) * 100,2)
f <- paste(percentages, "%", sep = " ")
j <- pie(m, labels = f,col = c("#ADD8E6", "#2E8B57"), 
         main = "Literacy of Male and Female in PMC")
legend("topleft", c("Male", "Female"), cex = 0.8,
       fill =c("#ADD8E6", "#2E8B57"))


h <- c("Male", "Female")
m <- c(286330, 341804)
percentages <- round(m / sum(m) * 100,2)
f <- paste(percentages, "%", sep = " ")
j <- pie(m, labels = f,col = c("#ADD8E6", "#2E8B57"), 
         main = "Illiteracy of Male and Female in PMC")
legend("topleft", c("Male", "Female"), cex = 0.8,
       fill =c("#ADD8E6", "#2E8B57"))

## G01 Literacy & Illiteracy plot
yr <- c("1981", "1991", "2001", "2011")
lit <- c(810366, 1086147, 1930063, 2501436)
illt <- c(392985, 480504, 608410, 630707)
sd <- barplot(rbind(lit, illt), beside = T,names.arg = yr, 
        xlab = "Year", ylab = "Population", col = c("#ADD8E6", "#2E8B57"),
        main = "Decadal Literacy and Illiteracy in PMC")
legend("topleft", c("Literacy", "Illiteracy"), cex = 0.8, 
       fill = c("#ADD8E6", "#2E8B57"))
## Done

## G02 Population Decadal Growth Rate
yr <- c("1951", "1961", "1971", "1981", "1991", "2001", "2011")
gr <- c(448419, 606777, 856105, 1203363, 1691430, 2538473, 3124458)
hd <- barplot(gr, names.arg = yr, xlab = "Year", 
              ylab = "Population Growth Rate", col ="#ADD8E6",
        main = "Decadal Population Growth Rate in PMC", ylim = c(0,3500000))
text(x = hd, y = gr, label = gr, pos = 3, cex = 1.2, col = "#2E8B57")
## Done

library(readxl)
Pune <- read_excel("Punewarddata.xlsx")
View(Pune)
## =====================================================================
## G03 Wards with highest and lowest Househlods.

library(dplyr)
library(RColorBrewer)
hh <- Pune %>% arrange(TOT_P) ## Wardwise data in ascending order
bar_colors <- rep("#ADD8E6", nrow(hh)) 
bar_colors[1:10] <- "#2E8B57"
bar_colors[1:10] <- "#2E8B57" # First 10 bars in blue
bar_colors[(nrow(hh)-9):nrow(hh)] <- "#2E8B57"
barplot(hh$No_HH, names.arg = hh$Ward, las = 2, cex.names = 0.4,xlab = "Ward Number", 
        main = "Wards with highest and lowest Population", ylab = "Number of Households", 
        ylim=c(0,12000), col = bar_colors)
## Done


## G04 Maximum Unemployment (A)
d <- Pune[order(Pune$NON_WORK_P, decreasing = TRUE), ][1:10, ] ; print(d)
non <- d$NON_WORK_P
r <- barplot(d$NON_WORK_P, names.arg = d$Ward, 
             ylim = c(0,35000), main = "Top ten wards with Maximum Non Working Population",
             col = "#ADD8E6", xlab = "Ward Number", ylab = "Maximum Non Working Population")
text(x = r, y = non, label = non, pos = 3, cex = 1.2, col = "#2E8B57")
## Done


### G05 Total male & female lit ppln and respective working ppln in top 10 wards

######## Decide abt meanline & Add two plots to profile ppt
## For male (Top 10 wards)
mtp <- Pune[order(Pune$M_LIT, decreasing = TRUE), ][1:10, ]
mt <- barplot(rbind(mtp$M_LIT, mtp$TOT_WORK_M), names.arg = mtp$Ward, xlab = "Ward Number",
        ylab = "Population", main = "Working Male in wards with Highest Male Literacy (Top 10)",
        beside = T,col = c("#ADD8E6", "#2E8B57"), ylim = c(0,25000))
legend("topleft", c("Total Literate Male and Female", "Total Working Male and Female"), fill = c("#ADD8E6", "#2E8B57"))
abline(h=mean(mtp$M_LIT), col = "#6CA6CD", lwd = 2)
abline(h=mean(mtp$TOT_WORK_M), col = "#236B43", lwd = 2)
g<- mean(mtp$M_LIT);print(g)
f <- mean(mtp$TOT_WORK_M); print(f)

## for female  (Top 10 wards)
ftp <- Pune[order(Pune$F_LIT, decreasing = TRUE), ][1:10, ]
barplot(rbind(ftp$F_LIT, ftp$TOT_WORK_F), names.arg = ftp$Ward, xlab = "Ward Number",
        ylab = "Population", col = c("#ADD8E6", "#2E8B57"),
        main = "Working Female in wards with Highest Female Literacy (Top 10)", 
        beside = T, ylim = c(0,25000))
abline(h=mean(ftp$F_LIT), col = "#6CA6CD", lwd = 2)
abline(h=mean(ftp$TOT_WORK_F), col = "#236B43", lwd = 2)
par(mfcol=c(1,2))
l<- mean(ftp$F_LIT);print(l)
m <- mean(ftp$TOT_WORK_F); print(m)

## For male (Bottom 10 wards)
mbtp <- Pune[order(Pune$M_LIT, decreasing = TRUE), ][135:144, ]
mb <- barplot(rbind(mbtp$M_LIT, mbtp$TOT_WORK_M), names.arg = mbtp$Ward, xlab = "Ward Number",
              ylab = "Population", main = "Working Male in wards with Highest Male Literacy (Bottom 10)",
              beside = T,col = c("#ADD8E6", "#2E8B57"), ylim = c(0,7000))
legend("topleft", c("Total Literate Male and Female", "Total Working Male and Female"), 
       fill = c("#ADD8E6", "#2E8B57"))
abline(h=mean(mbtp$M_LIT), col = "#6CA6CD", lwd = 2)
abline(h=mean(mbtp$TOT_WORK_M), col = "#236B43", lwd = 2)
s<- mean(mbtp$M_LIT);print(s)
d <- mean(mbtp$TOT_WORK_M); print(d)

## For Female  (Bottom 10 wards)
fbtp <- Pune[order(Pune$F_LIT, decreasing = TRUE), ][135:144, ] #;View(fbtp)
barplot(rbind(fbtp$F_LIT, fbtp$TOT_WORK_F), names.arg = fbtp$Ward, xlab = "Ward Number",
        ylab = "Population", col = c("#ADD8E6", "#2E8B57"),
        main = "Working Female in wards with Highest Female Literacy (Bottom 10)", 
        beside = T, ylim = c(0,7000))
abline(h=mean(fbtp$F_LIT), col = "#6CA6CD", lwd = 2)
abline(h=mean(fbtp$TOT_WORK_F), col = "#236B43", lwd = 2)
par(mfcol=c(1,2))
k<- mean(fbtp$F_LIT);print(k)
p <- mean(fbtp$TOT_WORK_F); print(p)
## Done


## G06 Top 10 Wards with Highest Employment and their Female Working Population
ep <- Pune[order(Pune$TOT_WORK_P, decreasing = TRUE), ][1:10, ] ; print(ep)
barplot(rbind(ep$TOT_WORK_P, ep$TOT_WORK_F), beside = T,las = 2, cex.names = 1,
        names.arg = ep$Ward, 
       main = "Top 10 Wards with Highest Employment and their Female Working Population",
       col = c("#ADD8E6", "#2E8B57"), ylim = c(0,25000), xlab = "Ward Number", ylab = "Population")
abline(h=mean(ep$TOT_WORK_P), lwd=2,lty=2, col = "blue")

legend ("topleft", c("Total Working Population", "Total Female Working Population"),
                     fill = c("#ADD8E6", "#2E8B57"))
## Done

### G07 Top 10 Literate Wards and Their Female Illiteracy.
lt <- Pune[order(Pune$P_LIT, decreasing = F), ][1:10, ] ; print(lt)
barplot(rbind(lt$P_LIT, lt$F_LIT), names.arg = lt$Ward, beside = T, col = c("#ADD8E6", "#2E8B57"), ylim = c(0,14000),
        xlab = "Ward Number", ylab = "Population", main = "Top 10 Literate Wards and Total Illiterate Female")
legend ("topleft", c("Total Literate Population", "Total Female Illiterate Population"),
        fill = c("#ADD8E6", "#2E8B57"))


## G08 Occupational Structure 
## Pie chart of Occupational structure in Pune
library(RColorBrewer)
l <- c("Primary", "Secondary", "Tertiary")
k <- c(10971, 35001, 1083416)
percentages <- round(k / sum(k) * 100,2)
g <- paste(percentages, "%", sep = " ")
j <- pie(k, labels = g,col = brewer.pal(5, "Set3"), 
         main = "Occupational Structure of PMC", lwd = 2)
legend("topleft", c("Primary Sector", "Secondary Sector", "Tertiary Sector"), cex = 0.8,
       fill =brewer.pal(5, "Set3"))


## G09 Total Population and Literate Population - correlation
plot(Pune$TOT_P, Pune$P_LIT, pch=20, col="#2E8B57", main="Correlation Between Total Population and Literate Population",
     xlab="Total Population", ylab="Total Literate Population")
abline(lm(Pune$P_LIT~Pune$TOT_P), col="blue", lwd=2)
g <- cor(Pune$TOT_P, Pune$P_LIT) ; print(g)

model <- lm(Pune$TOT_P~Pune$P_LIT, data = Pune)
summary_model <- summary(model)
r_squared <- summary_model$r.squared
print(r_squared)


## G10 Percentage of SC & ST in Total Population
library(RColorBrewer)
l <- c("Total Population", "Scheduled Casts", "Scheduled Tribes")
k <- c(3124458, 419396, 34025)
percentages <- round(k / sum(k) * 100,2)
g <- paste(percentages, "%", sep = " ")
j <- pie(k, labels = g,col = brewer.pal(5, "Set3"), 
         main = "Percentage of SC & ST in Total Population of PMC", lwd = 2)
legend("topleft", c("Total Population", "Scheduled Casts", "Scheduled Tribes"), cex = 0.8,
       fill =brewer.pal(5, "Set3"))

## G11 Total Population and Growth of SC population
plot(Pune$TOT_P, Pune$P_SC, pch=20, col="#2E8B57", main="Correlation of Total Population and Scheduled Caste Population",
     xlab="Total Population", ylab="Total Scheduled Castes Population")

## G12 Total Population and Growth of ST population
plot(Pune$TOT_P, Pune$P_ST, pch=20, col="#2E8B57", main="Correlation of Total Population and Schedules Tribes Population",
     xlab="Total Population", ylab="Total Scheduled Tribes Population")
abline(lm(Pune$P_ST~Pune$TOT_P), col="blue", lwd=2)




plot(Pune$TOT_F, Pune$TOT_WORK_F, pch=20, col="#2E8B57", 
     main="Correlation - Total Female Population and Working Female Population",
     xlab="Total Female Population", ylab="Total Working Female Population")
abline(lm(Pune$TOT_WORK_F~Pune$TOT_F), col="blue", lwd=2)

g <- cor(Pune$TOT_F, Pune$TOT_WORK_F) ; print(g)

model <- lm(Pune$TOT_F~Pune$TOT_WORK_F, data = Pune)
summary_model <- summary(model)
r_squared <- summary_model$r.squared
print(r_squared)


## Not part of city profile
## Arrange lowest and highest 10 wards with highest population. 


library(readxl)
Pune <- read_excel("Punewarddata.xlsx")
View(Pune)

library(dplyr)
g <- arrange(Pune, desc(TOT_P))  ## Descending Order
View(g)

r <- filter(g, TOT_P > 38900) ## Filtering out Populatioin values > 100000
View(r)


## Done


## Arrange lowest and highest 10 wards with highest population. 
library(dplyr)
g <- arrange(Pune, desc(TOT_P))  ## Descending Order
View(g)

h <- filter(g, TOT_P < 13201) 
View(h)



a <- barplot(r$TOT_P, main = "Wards with Highest Population", names.arg = r$`Ward Name`, 
             cex.names = 0.78, cex.axis = 0.78, ylim = c(0,60000), col = "#ADD8E6", 
             xlab = "Ward Name", ylab = "Population")
text(x = a, y = r$TOT_P, label = r$TOT_P, pos = 3, cex = 1.2, col = "#2E8B57")

b <- barplot(h$TOT_P, main = "Wards with Lowest Population", names.arg = h$`Ward Name`,  
             cex.names = 0.7, cex.axis = 0.7, ylim = c(0,15000), col = "#ADD8E6", 
             xlab = "Ward Name", ylab = "Population")
text(x = b, y = h$TOT_P, label = h$TOT_P, pos = 3, cex = 1.2, col = "#2E8B57")

## Done








