library("caTools")
#library("ROCR")
BoxOfficeData <- read.csv("C:\\Users\\SDI\\Documents\\Rprogramming\\boxOffice.csv", header = TRUE)
names(BoxOfficeData)
x <- BoxOfficeData$Budget
y <- BoxOfficeData$Oscar
#split the data
set.seed(50)
splitted <- sample.split(BoxOfficeData, SplitRatio = 0.7)
splitted
train <- subset(BoxOfficeData, splitted== "TRUE")
test <- subset(BoxOfficeData, splitted== "FALSE")
model <- glm(Oscar ~ Budget, data = train, family = "binomial")
summary(model)
#test model
x_tested <- seq(min(x), max(x), length.out=1000)
y_tested <- predict(model,test,type = "response")
y_tested
ggplot(BoxOfficeData, aes(x=x, y=y)) +
  geom_point(color='blue') +
  geom_line(aes(x=x_pred, y=y_pred), color='orange') +
  xlab('x') +
  ylab('y')





























