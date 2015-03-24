# This function accepts a data.frame and a model (y ~ xx + xx) and 
# returns a matrix containing model coeffecients (constructed 
# from train sets), predicted values (using test sets), and actual 
# values 

# Assumptions:
#
#   All data in data.frame will be used
#
#   The value to be predicted from the 
#   data.frame will be the first column
#   in the data set

LeaveOneOut = function(data, model) {
  actual = data[,1]
  matrixCoef = matrix(, nrow=0, ncol=ncol(data))
  predicted = NULL
  for(i in 1:nrow(data)) {
    trainSet = data[-i,]
    testSet = data[i,]
    trainMod = update(lm(model, data=trainSet), data=trainSet)
    modelCoef = coef(trainMod)
    matrixCoef = rbind(modelCoef, matrixCoef)
    predicted[i] = predict(trainMod, newdata = testSet)
  }
  finalMatrix = cbind(matrixCoef, predicted, actual)
  return(finalMatrix)
}