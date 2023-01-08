#install packages 
remove.packages("readxl")
library(readxl)
#LOAD DATA
whiteHouse <- read_xlsx("C:\\Users\\SDI\\Documents\\Rprogramming\\2010_White_House_Staff.xlsx")
View(whiteHouse)
#MEASURE OF CENTRAL TENDENCY
#MEAN
mean(whiteHouse$Salary)
#MEDIAN
median(whiteHouse$Salary)
#STANDARD DEVIATION 
sd(whiteHouse$Salary)
#MEASURE OF VARIABILITY
#RANGE (MINIMUM AND MAXIMUM)
min(whiteHouse$Salary)
max(whiteHouse$Salary)
range(whiteHouse$Salary)
#PERCENTILES(QUARTILES)
#1/4 Quartiles
quantile(whiteHouse$Salary, c(0.25))
#1/2 Quartiles
quantile(whiteHouse$Salary, c(0.50))
#3/4 Quartiles
quantile(whiteHouse$Salary, c(0.75))
#100% quartile
quantile(whiteHouse$Salary, c(1))
#quartiles
quantile(whiteHouse$Salary)


#SUMMARY (THIS FUNCTION DOES A SUMMARY OF ALL STATISTICAL DESCRIPTION)
summary(whiteHouse$Salary)
#PLOTTING THE GRAPH
boxplot(whiteHouse$Salary)
hist(whiteHouse$Salary)