dt <- read.csv('quiz1_data/hw1_data.csv')
class(dt)
ozonenalog <- is.na(dt[,1])
sum(ozonenalog, na.rm = TRUE)#计算ozonelog中有多少个TRUE，即多少个为NA

ozone <- dt[,1]
meanozone=mean(ozone[!ozonenalog]) #the mean of the Ozone column in this dataset

#Extract the subset of rows of the data frame where Ozone values are above 31
#and Temp values are above 90. What is the mean of Solar.R in this subset?
temp <- dt[,4]
dt1 <- dt[temp>90&ozone>31,]
solorrnalog <- is.na(dt1[,2])
solorr <- dt1[,2]
meansolorr=mean(solorr[!solorrnalog])
# 巧妙方法
sub = subset(dt, Ozone > 31 & Temp > 90, select = Solar.R)
apply(sub, 2, mean)

#What is the mean of "Temp" when "Month" is equal to 6?
sub = subset(dt, Month == 6, select = Temp)
apply(sub, 2, mean)