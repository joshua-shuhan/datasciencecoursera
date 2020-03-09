#  function can be treated much like any other R object
# function can be passed as arguments to other funtions
# function can be nested
# function can be passed as arguments to other functions

#argument matching
mydata <- rnorm(100)
sd(mydata)
sd(x=mydata)
sd(x=mydata,na.rm=FALSE) #na.rm似乎都可以加
sd(na.rm=FALSE,x=mydata)
#以上表达式均等价

#argument matching
args(lm)
lm(data=mydata,y-x,model=FALSE,1:100)
lm(y-x,mydata,1:100,model=FALSE)
#以上等价 当你指出lhs的具体变量时，那么就那样，如果unnamed arguments，那么按照
# function definition里的顺序match。意思说，除非你指明，不然一切按照定义里的顺序从头来
# 还是不要unnamed, 尤其是画图时

#lazy evaluation
f <- function(a,b){
  a^2
}
f(2)
#arguments are evaluated only as needed.所以不给b不会报错
#和mma延时赋值有点像

f <- function(a,b){
  print(a)
  print(b)
}
f(45)
# b没被赋值，仅在使用参数时才计算(计算后才会报错啊，不然谁知道错了），所以在打出a之后才报错


# ... argument