set.seed(1)
sample(1:10,4) #sample 4, without replacement不放回
sample(letters,10,replace = T)
#设置seed挺重要的，这样可以复现


# R profiler R分析器 
#测定程序运行时间，提高代码效率

#第一种方法 system.time()

#Elapsed Time is the time charged to the CPU(s) for the expression. User Time is the wall clock time. 
#The time that you as a user experienced. Usually both times are relatively close.
system.time(readline("http://www.jhsph.edu"))
#以上elapsed>user, user是cpu时间，elapsed是墙上的时间,即我感受到的
hilbert <- function(n){
  i <- 1:n
  1/outer(i-1,i,"+")
}
x <- hilbert(1000)
system.time(svd(x))

#Rprof()
#summaryRprof()会得到Rproj的结果
#Rporj keeps track of the function call stack and time of each function
#default sampling period is 0.02,每行输出相隔0.02s

#by.self()减去了底层函数运行的时间，意思是关心我们设计的.建议使用
