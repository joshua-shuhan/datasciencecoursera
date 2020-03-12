# loop-function:lapply
# 就很想mma里的@@ @@@ @
#lapply:loop over a list and evaluate a function on each element
#lapply里的输入x会强制转为list
lapply
x <- list(a=1:5,b=rnorm(10))
a <- lapply(x,mean)
a
# return a list,即(fun(x[1]),fun(x[2]),fun(x[3]))
# 返回时把list的元素分别返回

x <- 1:4
lapply(x,runif,min=0,max=1) #fun后面的都是fun的参数
#runif生成均匀分布样本个体

x <- list(a=matrix(1:4,2,2),b=matrix(1:6,3,2))
x #list显然可以不矩形

lapply(x,function(elt) elt[,1]) #匿名函数，直接写函数
#返回的是a的第一行和b的第一行，list x的元素是单个矩阵


#sapply 返回简化后的lapply结果
#如果返回的list的每个元素长度为1，则自动排成向量返回。同理相同长度的element

#apply
#往往是对array做处理。最常见的是对矩阵的一行一列apply
#速度并不比for快
#apply #查看apply源码
x <- matrix(rnorm(200),20,10)
apply(x,2,mean) #mean of each column
apply(x,1,mean) #mean of each row
#存在colSums、colMeans、rowSums等函数
apply(x,1,quantile,probs=c(0.25,0.5,0.75)) #输出!每一行!的分位数

#average matrix in an array
a <- array(rnorms(2*2*10),c(2,2,10)) #生成三阶张量
apply(a,c(1,2),mean)#消掉第三个维度