#In this example we introduce the <<- operator which can be used to assign 
#a value to an object in an environment that is different from the current environment. 
#Below are two functions that are used to create a special object that stores a numeric vector and cache's its mean.
#用cache计算减少内存消耗
#函数套函数叫啥来着？

#<<-就是把变量存在global里，防止lexical scoping,每次都得回去找变量
makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}