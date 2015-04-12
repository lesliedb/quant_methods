Hitting the bullseye: Investigating the relationship between unexplained variation and model coeffcients with spatial autocorrelation.
==============
The purpose of the code is to investigate how increasing unexplained variation in a model affects the accuracy and precisions of its coeffcients. In order to acomplish this, two cross-valdation methods with be utilized: leave-one-out (LOO) and spatial leave-one-out (SLOO). 





evaluate the effectiveness of the leave one out method for determining the predictive power of each model given. In order to acomplish this, the model given will be trained with data that has been reduced by one sample. The sample that is left out will then be used as a new data point to be predicted by the given model. By looking at the differences in the predicted value by the model and the actual value recorded, a greater insight will be gained as to how well the model preforms when predicting new data. Let's first start by generating a popluation, which we will sample from.




for spatial and non-spatial leave-one-out cross-validation 
Class project: Evaluating Cross-validation methods for spatial data.