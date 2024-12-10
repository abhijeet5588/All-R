getwd() ## 12/11/2024
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

pnorm(1) ## area under graph for z score 1
g <- pnorm(-1)
pnorm(1300, 1100, 200) ##Value, Mean, std Deviation.
1- pnorm(1300, 1100, 200)  ## person scoring 1300 or more is given by

0.5- pnorm(1) ## 0.5 is 50% probability & pnrom(1) is 1 std deviation. So we are vetting value for area of 
## 50% to mean + 1SD

qnorm(0.85, 1100, 200) ## qnorm is for percentile. we need to write area under the value. or the percentile value 
## we need to find.

pnorm(c(1200, 1300), 1100, 200)

pnorm(1300, 1100, 200)
pnorm(24, 21, 6)

pnorm(1.0)
