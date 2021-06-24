install.packages('mlbench')
install.packages('lattice')
install.packages('ggplot2')
library(mlbench)
data(BreastCancer, package="mlbench")
bc <- BreastCancer[complete.cases(BreastCancer), ]  
bc
bc$Class <- ifelse(bc$Class == "malignant", 1, 0)
install.packages('caret')
library(caret)
set.seed(100)
trainDataIndex <- createDataPartition(bc$Class, p=0.7, list = F)
trainData <- bc[trainDataIndex, ]
testData <- bc[-trainDataIndex, ]
table(trainData$Class)
logitmod <- glm(Class ~ Cl.thickness + Cell.size + Cell.shape, family = "binomial", data=trainData)
summary(logitmod)
pred <- predict(logitmod, newdata = testData, type = "response")
pred
y_pred_num <- ifelse(pred > 0.5, 1, 0)
y_pred <- factor(y_pred_num, levels=c(0, 1))
y_act <- testData$Class
mean(y_pred == y_act)
