# This function accepts a data.frame and a model (y ~ xx + xx) and 
# returns a matrix containing: the intercept, model coeffecient(s) (constructed 
# from train sets), predicted (using test sets), observed, and r square values. 

LeaveOneOut = function(data, model) {
  matrixCoef = matrix(NA, nrow=nrow(data), ncol=length(coef(model)))
  colnames(matrixCoef) = names(coef(model))
  predicted = NULL
  rSquared = NULL
  for(i in 1:nrow(data)) {
    trainSet = data[-i,]
    testSet = data[i,]
    trainMod = update(model, data=trainSet)
    matrixCoef[i, ] = coef(trainMod)
    predicted[i] = predict(trainMod, newdata = testSet)
    rSquared[i] = summary(trainMod)$r.squared
  }
  observed = residuals(mod) + predict(mod)
  finalMatrix = data.frame(matrixCoef, predicted, observed, rSquared)
  names(finalMatrix)[1] = 'intercept'
  return(finalMatrix)
}