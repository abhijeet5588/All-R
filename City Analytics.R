getwd()
setwd("D:/Abhijeet/CNG/Sem 001/R Prog/R Files")

## Importing libraries
library(dplyr)
library(ggplot2)
library(gridExtra)
## Importing the data
library(readxl)
## PMC Data
Pune <- read_excel("Punewarddata.xlsx")
pune <- select(Pune, -c(State:TRU))
View(Pune)
## PCMC Data
PCMC <- read_excel("PCMC.xlsx")
pcmc <- select(PCMC, -c(State:TRU))
View(pcmc)

## PMC Decreasing
pmct10 <- pune[order(pune$M_LIT, decreasing = TRUE), ]
pmct10 <- pune[order(pune$M_LIT, decreasing = TRUE), ][1:10, ]
pmcb10 <- pune[order(pune$M_LIT, decreasing = TRUE), ][135:144, ]
## PCMC Decreasing
pcmct10 <- pcmc[order(pcmc$M_LIT, decreasing = TRUE), ]
pcmct10 <- pcmc[order(pcmc$M_LIT, decreasing = TRUE), ][1:10, ]
pcmcb10 <- pcmc[order(pcmc$M_LIT, decreasing = TRUE), ][135:144, ]


#01# PMC - Lit & Illiteracy (Pie Chart)
## Total Literate Population
lit <- summarise(pune, Total_Literate = sum(P_LIT))  # Summing literate population
## Total Illiterate Population
ill <- summarise(pune, Total_Illiterate = sum(P_ILL))  # Summing illiterate population
# Combine the two values into a single dataset
data <- data.frame(Category = c("Literate", "Illiterate"),
  Count = c(lit$Total_Literate, ill$Total_Illiterate))
# Calculate percentages
data$Percentage <- round(data$Count / sum(data$Count) * 100, 2)
# Step 2: Creating the Pie Chart
p1 <- ggplot(data, aes(x = "", y = Count, fill = Category)) +
  geom_bar(stat = "identity", width = 1) +              # Create the bar chart
  coord_polar(theta = "y") +                            # Convert it into a pie chart
  theme_void() +                                        # Remove axes and background
  labs(title = "Literacy and Illiteracy in PMC") +       # Add a title
  geom_text(aes(label = paste0(Percentage, "%")),       # Add percentage labels
            position = position_stack(vjust = 0.5))     # Position the labels inside the slices

## PCMC - Lit & Illiteracy (Pie Chart)
## Total Literate Population
lit <- summarise(pcmc, Total_Literate = sum(P_LIT))  # Summing literate population
## Total Illiterate Population
ill <- summarise(pcmc, Total_Illiterate = sum(P_ILL))  # Summing illiterate population
# Combine the two values into a single dataset
data <- data.frame(Category = c("Literate", "Illiterate"),
                   Count = c(lit$Total_Literate, ill$Total_Illiterate))
# Calculate percentages
data$Percentage <- round(data$Count / sum(data$Count) * 100, 2)
# Step 2: Creating the Pie Chart
p2 <- ggplot(data, aes(x = "", y = Count, fill = Category)) +
  geom_bar(stat = "identity", width = 1) +              # Create the bar chart
  coord_polar(theta = "y") +                            # Convert it into a pie chart
  theme_void() +                                        # Remove axes and background
  labs(title = "Literacy and Illiteracy in PCMC") +       # Add a title
  geom_text(aes(label = paste0(Percentage, "%")),       # Add percentage labels
            position = position_stack(vjust = 0.5))     # Position the labels inside the slices
# Arrange both pie charts in a column layout
grid.arrange(p1, p2, ncol = 1)  # 'ncol = 1' for a column-wise layout
## Done

##2## 
## Linear Regression for PMC (Female Lit & Working Female)
## Done for both male and female. 
#Data
pune
# Step 1: Fit a Linear Regression Model
var(Pune$F_LIT , Pune$TOT_WORK_F)
cor(Pune$F_LIT , Pune$TOT_WORK_F)
pmclm <- lm_model <- lm(F_LIT ~ TOT_WORK_F, data = pune)  # Linear regression: mpg vs hp
summary(pmclm)

# Step 2: Visualize the Linear Regression Line with ggplot
ggplot(pune, aes(x = F_LIT, y =TOT_WORK_F)) +
  geom_point(color = "blue", alpha = 0.7) +  # Scatter plot
  geom_smooth(method = "lm", color = "red", se = TRUE) +  # Linear regression line with confidence interval
  labs(title = "PMC Linear Regression: Female Literacy Vs Total Working Female",
    x = "Female Literacy",y = "Total Working Female") + theme_minimal()

## Linear Regression for PCMC (Female Lit & Working Female)
## Done for both male and female. 
#Data
pcmc
# Step 1: Fit a Linear Regression Model
cor(pcmc$F_LIT , pcmc$TOT_WORK_F)
pcmclm <- lm_model <- lm(F_LIT ~ TOT_WORK_F, data = pcmc)  # Linear regression: mpg vs hp
summary(pcmclm)
# Step 2: Visualize the Linear Regression Line with ggplot
ggplot(pcmc, aes(x = F_LIT, y =TOT_WORK_F)) +
  geom_point(color = "blue", alpha = 0.7) +  # Scatter plot
  geom_smooth(method = "lm", color = "red", se = TRUE) +  # Linear regression line with confidence interval
  labs(title = "PCMC Linear Regression: Female Literacy Vs Total Working Female",
    x = "Female Literacy",y = "Total Working Female") + theme_minimal()
## Done

##3##
## k means clustering (PMC Female literacy and Total Working Female)

## Elbow method to know optimum number of clusters.
# Install and load necessary packages
library(ggplot2)
library(tidyverse)
library(factoextra)
# Load the dataset
Pune <- read_excel('Punewarddata.xlsx')

# Select relevant features for clustering
data <- Pune %>% select(No_HH, F_LIT)

# Compute k-means clustering and store inertia for different k values
set.seed(123)  # For reproducibility
inertia <- vector()
for (k in 1:10) {kmeans_result <- kmeans(data, centers = k, nstart = 25)
inertia[k] <- kmeans_result$tot.withinss}

# Create a data frame for plotting
inertia_df <- data.frame(k = 1:10, inertia = inertia)

# Plot the Elbow Method graph
ggplot(inertia_df, aes(x = k, y = inertia)) +
  geom_point() +
  geom_line() +
  ggtitle('Elbow Method for Optimal Number of Clusters') +
  xlab('Number of clusters (k)') +
  ylab('Inertia (Total Within-Cluster Sum of Squares)') +
  theme_minimal()
## From graph its understood that Optimum number of clusters = 3 

## Now we will make clustering
df <- data.frame(Pune$F_LIT, Pune$TOT_WORK_F)
km <- kmeans(df, centers = 3)
names(km) ; km$cluster

## Visualisation
df <- data.frame(Pune$F_LIT, Pune$TOT_WORK_F)
plot(Pune$F_LIT, Pune$TOT_WORK_F, col = km$cluster, pch = 16, 
     main = "PMC K Means Clustering Plot",
     xlab = "Female Literacy", ylab = "Total Working Females")
points(km$centers, col = 5, pch = 10, cex = 2.25)


#### Number of Wards in each clusters
fact <- factor(km$cluster) ## 
print(fact)
table(fact) ## To know number of districts in each cluster

## Now find the number of Wards in each cluster
cb <- data.frame( Pune$Ward, Pune$WardN,Pune$F_LIT, Pune$TOT_WORK_F,km$cluster)
View(cb) ## dataframe of cluster and state, dist, sc pop & graduates.
library(dplyr)
f <- arrange(cb, km.cluster);
View(f)

## Plotting cb
ggplot(cb, aes(x = factor(Pune.F_LIT), y = Pune.TOT_WORK_F, color = factor(km.cluster), 
               group = factor(km.cluster))) +
  geom_line() +
  geom_point() +  # Add points if you want to highlight the data points
  labs(x = 'Female Literacy', y = 'Total Working Females', color = 'Cluster') +
  theme_minimal() +
  ggtitle('PMC Line Graph of Total Working Females by Female Literacy and Cluster') +
  geom_text(aes(label = Pune.Ward), vjust = -0.5, size = 2) 
  #theme(axis.text.x = element_blank())  # Remove x-axis labels

# Save the plot with high resolution suitable for digital boards
#ggsave("line_graphPMC.jpeg", width = 10, height = 5.63, units = "in", dpi = 300)


##4## k means clustering (PCMC Female literacy and Total Working Female)
## Elbow method
##Load the dataset
Pune <- read_excel('Punewarddata.xlsx')

# Select relevant features for clustering
data <- PCMC %>% select(No_HH, F_LIT)

# Compute k-means clustering and store inertia for different k values
set.seed(123)  # For reproducibility
inertia <- vector()
for (k in 1:10) {kmeans_result <- kmeans(data, centers = k, nstart = 25)
inertia[k] <- kmeans_result$tot.withinss}

# Create a data frame for plotting
inertia_df <- data.frame(k = 1:10, inertia = inertia)

# Plot the Elbow Method graph
ggplot(inertia_df, aes(x = k, y = inertia)) +
  geom_point() +
  geom_line() +
  ggtitle('Elbow Method for Optimal Number of Clusters') +
  xlab('Number of clusters (k)') +
  ylab('Inertia (Total Within-Cluster Sum of Squares)') +
  theme_minimal()
## From graph its understood that Optimum number of clusters = 3 

## Now we will make clustering
df <- data.frame(PCMC$F_LIT, PCMC$TOT_WORK_F)
km <- kmeans(df, centers = 3)
names(km) ; km$cluster
km$size

## Visualisation
df <- data.frame(PCMC$F_LIT, PCMC$TOT_WORK_F)
plot(PCMC$F_LIT, PCMC$TOT_WORK_F, col = km$cluster, pch = 16, 
     main = "PCMC K Means Cluster Plot", xlab = "Female Literacy", 
     ylab = "Total Working Females")
points(km$centers, col = 4, pch = 3, cex = 2.25)

#### Number of states in each clusters
fact <- factor(km$cluster) ## 
print(fact)
table(fact) ## To know number of districts in each cluster

## Now find the number of Wards in each cluster
cbd <- data.frame( PCMC$Ward,PCMC$F_LIT, PCMC$TOT_WORK_F,km$cluster)
View(cbd) ## dataframe of cluster and state, dist, sc pop & graduates.
library(dplyr)
f <- arrange(cbd, km.cluster);
View(f)

## Plotting cb
ggplot(cbd, aes(x = factor(PCMC.F_LIT), y = PCMC.TOT_WORK_F, color = factor(km.cluster), group = factor(km.cluster))) +
  geom_line() +
  geom_point() +  # Add points if you want to highlight the data points
  labs(x = 'Female Literacy', y = 'Total Working Females', color = 'Cluster') +
  theme_minimal() +
  ggtitle('PCMC Line Graph of Total Working Females by Female Literacy and Cluster') +
  geom_text(aes(label = PCMC.Ward), vjust = -0.5, size = 2) +
  theme(axis.text.x = element_blank())  # Remove x-axis labels

# Save the plot with high resolution suitable for digital boards
ggsave("line_graphPCMC.jpeg", width = 10, height = 5.63, units = "in", dpi = 300)
## Done










##(km$size km$centers km$totss km$withinss km$betweenss km$size)






