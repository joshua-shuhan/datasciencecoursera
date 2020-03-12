# rnorm rpois 前两者生成rv 
# d for density, r for random number generation, p for cumulative dist, q for quantile function
# 这里是伪随机数 可以让随机生产的固定

set.seed(1)
rnorm(5)
set.seed(1)
rnorm(5)
#所有人设的seed(1)好像生成的都一样

# simulate a linear model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- 0.5+2*x+e
summary(y)
plot(x,y)

#suppose we want to simulate from a possion model
#where y~possion(mu)
#log\mu=\beta0+\beta1*x 广义线性模型
set.seed(1)
x <- rnorm(100) 
log.mu <- 0.5+0.3*x
y <- rpois(100,exp(log.mu))# 这里泊松分布的lambda实际上有100个值
plot(x,y)