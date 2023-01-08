install.packages("caTools")
install.packages("ROCR")
library("caTools")
library("ROCR")
BoxOfficeData <- read.csv("C:\\Users\\SDI\\Documents\\Rprogramming\\boxOffice.csv", header = TRUE)
names(BoxOfficeData)
names(BoxOfficeData)[names(BoxOfficeData) == 'Oscar'] <- 'Oscar'
BoxOfficeData
summary(data) # sataset summary 
nrow(BoxOfficeData) #Number of observations in dataset
set.seed(1)
sample <- sample(c(TRUE, FALSE), nrow(BoxOfficeData), replace = TRUE, prob = c(0.7,0.3))
train <- BoxOfficeData[sample,]
test <- BoxOfficeData[!sample,]
model <- glm(Oscar~ Budget,BoxOfficeData=train, family = "binomial")
#options(scipen = 999)
summary(BoxOfficeData)