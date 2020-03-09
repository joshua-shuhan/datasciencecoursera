# function
# 所有R函数都会自动返回最后一个表达式的值
above10 <- function(x, n) {
  use <- x > n #将逻辑数组赋给use
  x[use]
}

above10 <- function(x, n = 10) {
  #default value，若用户并不太需要自己给顶
  use <- x > n #将逻辑数组赋给use
  x[use]
}
y <- matrix(1:4,2,2)
columnmean <- function(y) {
  nc <- ncol(y)
  means <- numeric(nc) # initialize,生成一个1*nc维
  for (i in 1:nc) {
    means[i] <- mean(y[, i])
  }
  means
}
columnmean(y)

#有时出现NA怎么办？想要不显示NA值
columnmean <- function(y,removedNA=TRUE) {
  nc <- ncol(y)
  means <- numeric(nc) # initialize,生成一个1*nc维
  for (i in 1:nc) {
    means[i] <- mean(y[, i],na.rm=removedNA) #mean的一个argument，计算列均值时 默认 移除NA
  }
  means
}