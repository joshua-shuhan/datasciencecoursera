x <- 1 ## complete expression
msg <- "hello"
## when a complete expression is entered at the prompt. it is evaluated and the result
## of the evaluated expression is returned. The result may be auto-printed
y <- 1:20

## data type 
## basic/atomic classes of objects 
attributes() ## find ~ for an object,names、class、length...
## a object can be different classes

## use c to creat vectors 
x <- c(0.5,0.6)
x <- c(TRUE,FALSE)
x <- c(T,F)
X <- c(1+0i,2+4i)
x <- c("a","b")
## c , creat vector with mixing objects
y <- c(1.7,"a")
y <- c(TRUE,2)
as.character(y) # use as to transform type

## list-a special type of vector which can contain elements of different classes
x <- list(1,"a",TRUE,1+4i)
## matrix
m <- matrix(nrow = 2,ncol=3)
m
dim(m)
m <- matrix(1:6, nrow = 2, ncol = 3)## matrix is created column wise一列一列来
n <- 1:10
dim(n) <- c(2,5)
n
## 重组
x <- 1:3
y <- 10:12
cbind(x,y)#按列组合

## R data type -factor 用来分类的，用于lm()\glm()
x <- factor(c("yes","no","yes"),levels=c("yes","no"))
x
table(x) #输出各类的数量

## missing values are denoted by NA OR NAN(little different)

## dataframes used to store tabular data
read.csv()
read.table()
data.matrix()## trans to matrix
#unlike matrix, dataframes can store different classes of objects in each column(just like lists)
# every rows have a name
x <- data.frame(foo=1:4,bar=c(T,T,F,F))
x
# name of objects
m <- matrix(1:4,nrow=2,ncol=2)
dimnames(m) <- list(c("a","b"),c("c","d"))
m
# read.table()


#list 是一种一般的数据结构，而 data.frame 是一种特殊的 list。
#list 的每个分量可以在长度、类型上完全不一样，就像一组指针指向了一堆不同的变量。