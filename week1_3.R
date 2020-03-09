# read large tables
initial <- read.table("datatable.txt",nrows=100) #read 100 rows
classes <- sapply#sapply()遍历每一列，调用class函数告诉你每一列的数据类型，
#然后将这些信息储存在classes中，
tabAll <- read.table("datatable.txt",colClasses = classes)
#读取整个数据时，使用classes中的信息来指定colClasses）

## Create a data frame
y <- data.frame(a = 1, b = "a")
## Print 'dput' output to console
dput(y) #read out写出，dump也一样。
dput(y,file = "y.R")
new.y <- dget("y.R")#dget：读取R代码（读取的是以逆句法分析后以文本文件储存的R对象）
new.y

##Interfaces to the outside world
str(file)
str(gzfile)
str(bzfile)
str(url)

con <- file("foo.txt","r")
data <- read.csv(con)
close(con)
# in the same as
dt <- read.csv("foo.txt")

con <- gzfile("words.gz")
x <- readLines(con,10)#指定读取10行
#当我们不希望读取一个file中所有内容时，建立con才有意义

con <- url("http://jhsph.edu","r")
x <- readLines(con)
head(x)
close(con)
