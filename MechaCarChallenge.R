library(tidyverse)
library(jsonlite)
library(dplyr)
MechaTable <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

#Generating multiple regression statement
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaTable)

#Generate summary of multiple regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaTable))

lm(mpg ~ vehicle_length, MechaTable)
summary(lm(mpg ~ vehicle_length, MechaTable))

#Import data into ggplot
plt <- ggplot(MechaTable, aes(x=vehicle_length, y=mpg))
#create scatterplot
plt + geom_point()
#Calculate correlation coefficient
cor(MechaTable$vehicle_length, MechaTable$mpg)

lm(mpg ~ ground_clearance, MechaTable)
summary(lm(mpg ~ ground_clearance, MechaTable))

#Import data into ggplot
plt <- ggplot(MechaTable, aes(x=ground_clearance, y=mpg))
#create scatterplot
plt + geom_point()
#Calculate correlation coefficient
cor(MechaTable$ground_clearance, MechaTable$mpg)

#Creating correlation matrix
used_matrix <- as.matrix(MechaTable[,c("mpg", "vehicle_length", "vehicle_weight", "spoiler_angle", "AWD", "ground_clearance")])
cor(used_matrix)

#Read in Suspension Coil Table
CoilTable <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

#Finding the mean, median, variance, and standard deviation of Coil table
total_summary <- CoilTable %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Grouping the stats into which lot the coils came from
lot_summary <- CoilTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#import dataset into ggplot2
plt <- ggplot(CoilTable, aes(x=Manufacturing_Lot, y=PSI))
#Adding boxplot
plt + geom_boxplot()

#Performing a t.test on the entire population to determine statistical significance
CoilSample <- CoilTable %>% sample_n(50)
t.test(CoilSample$PSI, mu=mean(CoilTable$PSI))

#Preparing and performing each t.test to compare the lots to the mean of entire population
Lot1 <- subset(CoilTable, Manufacturing_Lot=="Lot1")
t.test(Lot1$PSI, mu=mean(CoilTable$PSI))

Lot2 <- subset(CoilTable, Manufacturing_Lot=="Lot2")
t.test(Lot2$PSI, mu=mean(CoilTable$PSI))

Lot3 <- subset(CoilTable, Manufacturing_Lot=="Lot3")
t.test(Lot3$PSI, mu=mean(CoilTable$PSI))
