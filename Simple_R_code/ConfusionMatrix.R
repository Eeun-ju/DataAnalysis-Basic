predicted = as.factor(c(1,0,0,1,1,1,0,0,0,1,1,1))
actual = as.factor(c(1,0,0,1,1,0,1,1,0,1,1,1))
library(caret)
confusionMatrix(predicted, actual)
