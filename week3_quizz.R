# week3 quiz
# find the Sepal.Length mean of Species:VERSICOLOR
library(datasets)
data(iris)
#使用split函数
groupsepallength <- split(iris$Sepal.Length,iris$Species)
mean(groupsepallength$virginica)

#what R code returns a vector of the means of the variables 
#'Sepal.Length', 'Sepal.Width', 'Petal.Length',and 'Petal.Width'?
apply(iris[,1:4],2,mean)



library(datasets)
data(mtcars)
mtcars
