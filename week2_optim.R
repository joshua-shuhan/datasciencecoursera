# optimization
# 一般来说，要给定最优化的目标函数和其他一系列参数
# 但问题是，在统计中的最优化必定和数据有关。R语言lexical scoping的好处
# 就在于方便，把所有需要的打包在defined的environment里

#以下以最大似然函数为例
make.NegLogLik <- function(data,fixed=c(FALSE,FALSE)){
  params <- fixed
  function(p){
    params[!fixed] <- p
    mu <- params[1]
    sigma <- params[2]
    a <- -0.5*length(data)*log(2*pi*sigma^2)
    b <- -0.5*sum((data-mu)^2)/(sigma^2)
    -(a+b)
  }
}

set.seed(1);normals <- rnorm(100,1,2)
nLL <- make.NegLogLik(normals)
nLL
#注意 nLL的输出是一个函数，输出包含一个environment的地址。如果环境是global，就不会有这个地址
ls(environment(nLL)) #输出data、fixed、params即定义函数所在环境中的变量

optim(c(mu=0,sigma=1),nLL)$par #两个都false，表示均值和std都不给顶。
# 注意，目标函数作为输入。输出是1.2和1.7，离真实值1和2还有差别
#为什么要这样定义函数？估计是optim要求的，比方说，params，这压根就是要最优化求出来的。真实的是data

nLL <- make.NegLogLik(normals,c(FALSE,2)) #表示std给定，来求最优化的mean。
optimize(nLL,c(-1,3))$minimum

# plot
nLL <- make.NegLogLik(normals,c(1,FALSE))
x <- seq(1.7,1.9,len=100)
y <- sapply(x,nLL)
plot(x,exp(-(y-min(y))),type='l')