getwd()
setwd("C:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## pie chart
library(RColorBrewer)
x<- c(65,60,80,70,80)
labels <- c("Ramesh", "Nabha", "Sakshi", "Abhi", "Meha")
piepercent <- round(x*100/sum(x),2)
pie(x, labels= piepercent, col = brewer.pal(3, "Set3")) ## first number in pal is number of colors. 
legend ("topright", c("Ramesh", "Nabha", "Sakshi", "Abhi", "Meha"), cex = 0.8,
        fill = brewer.pal(4, "Set3"))
display.brewer.all()
