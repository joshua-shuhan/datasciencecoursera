printmessage <- function(x){
  if(is.na(x)){
    print("x is na")
  }else if(x>0)
    print("x is greater than zero")
  else
    print("x is less than zero")
  invisible(x)
}
# invisible(x) 仍然会返回x，但不会print（在直接以x结尾的情况）
dd <- printmessage(3)
dd
#dd被赋值为3
#思考错误的过程
#我期望输出什么，我的输入正确吗？
#哪里报错
#我看到的输出是什么，和我expect的区别在哪？
#我的期望合理吗？
#问题能复现吗

# debug tool
# 常用函数：traceback debug browser trace recover

#traceback
mean(z)
traceback() #give most recent error

lm(z)
traceback()

#debug
debug(lm) #进去后一次次按n就知道在哪出错了。就相当于matlab里进入函数一步步走
lm(z)

