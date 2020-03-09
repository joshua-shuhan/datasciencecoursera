# coding standard
# indent 最右侧限制
# 分步处理，一个函数，一页，一个步骤 一个程序别太长
# 写程序时一定要考虑到是否利于debug。

# times in R
x <- Sys.time()
x
class(x)
unclass(x)# x unclass后得到的是从1970年至今的秒数
p <- as.POSIXlt(x) #取x为posixlt格式
names(unclass(p))

#date in R 仅表示日期

#总结一下
# dates and times have special classes in R that allow for numerical
# and statistical calculations
# dates use the Date class
# Times use the POSIXct and POSIXlt class
# Character strings can be coerced(强制转化) to Date/Time classes using the
# "strptime" funtion。