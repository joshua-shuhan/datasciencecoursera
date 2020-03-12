## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y){
    x <<- y
    inv <<- NULL 
  }
  get <- function() x
  setinv <- function(invv) inv <<- invv
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
#本处目的就是设置了一个缓冲区，getting cached data
#1.<-或->可赋值到当前操作的环境里的变量
#2.<<-或->>一般用于函数内部,然后会搜索包括父层级在内的被定义的变量然后赋值.
#<<-只有在编写package时用到吧。想象一下，我在编写一个r script，它是一个package的一部分。此时在我眼前的所有内容都只是某个父环境的子环境
#如果用<<-，寻找变量的value时，会一层层找上去。如果用<-,只是在当前环境中找（即r script里所看到的子环境）
#scopping rule是总原则！无论是<-\<<-，都不会在call的环境找（不过很多情况下就是一个环境）