# subsetting
# [] always return an object of the same class as original 矩阵例外\逻辑索引除外
# [[]] extract element of a list or dataframe. the element may not be list or dataframe
# $ extract elements of a list or dataframe by name
# 逻辑索引同样适用于R! x[x>4]==3

x <- c('a','a','b','c','c')
b <- x>'a'
b

# subsetting lists
x <- list(foo=1:4,bar=0.6)
# 以下返回的对象与original同型
x[1] #总是返回与x的same class,x[1]也是list $foo 是对象的名字
x[2]
x['bar']
# 以下方法均只给数字:双方和美元号
x[[1]] #最干净，只给数字
x$foo #通过名字索引,返回的不一定和orginal same class

#一般讲，双括号优于美元号，双括号可以使用需要计算的索引
#美元号后跟的必须是orginal里有的名字
x <- list(foo=1:4,bar=0.6,acid=0.4)
name <- 'foo'
x[[name]]

# nesting list
x <- list(a <- list(1,2,3),4,5) # 显然list不用是一个矩阵，可以是任意形状
x[[1]][[1]]
x[[c(1,1)]]#直接用向量做索引

# matrix
x <- matrix(1:6,2,3) #2*3矩阵，竖着排
x[2,1]#这是[]用法的例外，返回的class不是矩阵，而是1*1vector
x[1,2,drop=FALSE] #该命令则返回1*1矩阵
x[1,] #drop=False 同样适用

# partial matching
x <- list(aaa=1:5)
x$a
x[['a',exact=FALSE]] #允许模糊

# removing NA vales
x <- c(1,2,NA,4,NA,5)
bad <- is.na(x)
x[!bad]

y <- c('a','b',NA,'d',3,5)
good <- complete.cases(x,y) #good 是逻辑数组
x[good]
y[good]

# 向量化操作 计算并行
x <- matrix(1:4,2,2)
y <- matrix(rep(10,4),2,2)
x*y # element-wise multiplication
x/y # 同样element-wise
x %*% y #真正的矩阵乘法

