Introdution
==============
In the paper, [*Spatial leave-one-out cross-validation for variable selection in the presence of spatial autocorrelation*] (http://onlinelibrary.wiley.com/doi/10.1111/geb.12161/pdf), Le Rest and others showed that the Spatial leave-on-out (SLOO) method was effetive for selecting the correct model coeffficents with a certain spatial dependence. However, this paper did not discuss how the coeffcients change as unexplained variation and spatial dependence change.

Purpose
--------------
The purpose of the code is to investigate the affect unexplained variation and spatial dependence has on the accuracy and precisions of a models beta coeffcients. In order to acomplish this, ...

how increasing unexplained variation in a model affects the accuracy and precisions of its coeffcients. In order to acomplish this, two cross-valdation methods with be utilized: leave-one-out (LOO) and spatial leave-one-out (SLOO). 

evaluate the effectiveness of the leave one out method for determining the predictive power of each model given. In order to acomplish this, the model given will be trained with data that has been reduced by one sample. The sample that is left out will then be used as a new data point to be predicted by the given model. By looking at the differences in the predicted value by the model and the actual value recorded, a greater insight will be gained as to how well the model preforms when predicting new data. Let's first start by generating a popluation, which we will sample from.




for spatial and non-spatial leave-one-out cross-validation 
Class project: Evaluating Cross-validation methods for spatial data.