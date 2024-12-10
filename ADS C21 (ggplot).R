getwd()
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## Advanced Data Visualization with ggplot


library(ggplot2)

## Building a plot
par(mfrow=c(1,3))
ggplot(mtcars); 
ggplot(mtcars, aes(x=hp));
ggplot(mtcars, aes(x=hp, y=mpg))

ggplot(mtcars, aes(x=hp, y=mpg))+ geom_point()

df <- data.frame(num=c(1:5), value=c(20,30,40,50,60))
p <- ggplot(df, aes(x=num, y= value))
p+geom_col()+geom_text(aes(label = value), vjust = -0.5, color = "red")
## color = add colour to text
## vjust =to adjust position of text on bars

df <- data.frame(num=c(1:5), value=c(20,30,40,50,60))
p <- ggplot(df, aes(x=num, y= value))
p+geom_col(fill="blue", col= "red")

df <- data.frame(num=c(1:5), value=c(20,30,40,50,60))
p <- ggplot(df, aes(x=num, y= value))
p+geom_col(fill="blue", col= "red")+ theme_classic()


df <- data.frame(num=c(1:5), value=c(20,30,40,50,60))
p <- ggplot(df, aes(x=num, y= value))
p+geom_col(fill="blue")+theme_bw()


df <- data.frame(num=c(1:5), value=c(20,30,40,50,60))
p <- ggplot(df, aes(x=num, y= value))
p+geom_col(fill="blue", col= "red")+ theme_light()

##Grouping bars together
library(ggplot2)
library(gcookbook)
data(cabbage_exp)
str(cabbage_exp)
View(cabbage_exp)
?cabbage_exp

ggplot(cabbage_exp, aes(x=Date, y=Weight, fill = Cultivar))+ 
  geom_col(position="dodge") ## dodge to group bars. Geom_col is column
## data in fill must be categorical.

## Making bar plot of counts
ggplot(mtcars, aes(x= factor(cyl)))+ geom_bar(fill="blue")
## cyl data is numeric. We want it to be in factor form. SO using factor before cyl.
## geom_bar is for frequency & for absolute numbers we use geom_col
## This is frequency but not histogram. Hist has range. but this does not have it.

data(mtcars)
View(mtcars)
?mtcars

ggplot(mtcars, aes(x= factor(cyl), y=mpg, fill = factor(gear)))+
  geom_col(position = "fill")
## immediatley above argument transforms the bar heights to a relative scale so 
## that each stacked bar represents the same total height (100%).

## plotting point data
ggplot(mtcars, aes(x= mpg, y= row.names(mtcars)))+geom_point()

## arrange in increasing order
ggplot(mtcars, aes(x= mpg, y= reorder(row.names(mtcars), mpg))) + 
         geom_point()

ggplot(mtcars, aes(x= mpg, y= reorder(row.names(mtcars), -mpg))) + 
  geom_point() 
## Add - sign before the y variable to make it in decreasing order  

## Line plot
ggplot(mtcars, aes (x=mpg, y=disp))+geom_line()

## multiple line plot
ggplot(tg, aes(x=dose, y=length, colour = supp))+geom_line()
       

       
       
       
       
       
       