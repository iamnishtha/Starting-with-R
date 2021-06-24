set.seed(100) 
trainingRowIndex <- sample(1:nrow(cars), 0.8*nrow(cars))  
trainingData <- cars[trainingRowIndex, ] 
testData  <- cars[-trainingRowIndex, ]   
scatter.smooth(x=cars$speed, y=cars$dist, main="Dist ~ Speed")  
lmMod <- lm(dist ~ speed, data=trainingData)  
distPred <- predict(lmMod, testData)  
summary (lmMod)
actuals_preds <- data.frame(cbind(actuals=testData$dist, predicteds=distPred))
actuals_preds
