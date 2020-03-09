# Control structure
# 基本语法 if while for repeat(execute an infinite loop) 
# break next(跳过一次循环) return(exit a funtion) 与其他编程语言一致
if(x>3){
  y <- 10
}else{
  y <- 0
}

# for
for(i in 1:10){
  print(i)
}

x <- c('a','b','c','d')

for (i in 1:4){
  print(x[i])
}

for(i in seq_along(x)) { # 输入一个向量，seq_along生成一个1:len(X)数组
  print(x[i])
}

for(i in 1:4) print(x[i])

x <- matrix(1:6,2,3)
for(i in seq_along(nrow(x))){
  for(j in seq_along(ncol(x))){
    print(x[i,j]) #注意，对矩阵用[],不会返回同型
  }
}

# while
count <- 0
while(count<10){
  print(count)
  count <- count+1
}

# 一个random walk 模拟 在不知道具体循环次数的情况下用while
z <- 5

while(z>=3 && z<=10){
  print(z)
  coin <- rbinom(1,1,0.5)
  
  if(coin==1){
    z <- z+1
  }else{
    z <- z-1
  }
}

# repeat 必须有break(退出循环)，否则一定无限尽量用for，这样知道iteration的次数
# 用repeat，必须知道算法是收敛的（break的条件）

# next 
for(i in 1:100){
  if(i<=10){
    print(i)
    next
  }
  break #注意， return也是退出并返回某个值，更适用于函数
}

# tip:for command-line interactive work, the apply functions are more useful.

