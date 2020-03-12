# split
# split takes a vector and splits it into group determined by a factor
x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
split(x,f)
# split alwaaaaaay return a list back

lapply(split(x,f),mean)#same as tapply

# split a data frame
library(datasets)
head(airquality)#这个数据集里就只有5个月
s <- split(airquality,airquality$Month)#注意这里用month作为level
lapply(s, function(x) colMeans(x[,c("Ozone","Solar.R","Wind")]))

sapply(s, function(x) colMeans(x[,c("Ozone","Solar.R","Wind")],na.rm = T))#sapply看起来更舒服

