install.packages("caret")
library(caret)
library("caTools")
library("ROCR")
BoxOfficeData <- read.csv("C:https://github.com/dumebiokoh/statistics-using-R/blob/main/boxOffice.csv", header = TRUE)
#names(BoxOfficeData)
BoxOfficeData
#split the data
set.seed(50)
splitted <- sample.split(BoxOfficeData, SplitRatio = 0.7)
splitted
train <- subset(BoxOfficeData, splitted== "TRUE")
test <- subset(BoxOfficeData, splitted== "FALSE")
model <- glm(Oscar ~ Budget, data = train, family = "binomial")
summary(model)
tested <- predict(model,test,type = "response")
tested
