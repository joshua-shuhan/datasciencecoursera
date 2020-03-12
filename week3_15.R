#mapply
#means more argus
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)
#以上两行等价

#显然，直接用rnorm不能达到理想效果，但mapply下可以
mapply(rnorm,1:5,1:5,2)
rnorm(1:5,1:5,2)#只是以5为均值，2为std生成了5个随机数

#tapply 作用于subsets of a vector
#一个例子就是数据里有男女，我们想分别算
x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)#生成10个1，10个2，10个3
f #用来分组的
tapply(x,f,mean)
tapply(x,f,range)