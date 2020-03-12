pollutantmean <- function(directory,pollutant,id=1:332){
  directorydir <- directory
  a=list.files(directorydir)
  dir=paste("./",directory,"/",a,sep="") #注意/s前要加上"."，否则识别不出来 
  #paste用来Concatenate Strings
  pollutant_temp <-data.frame() #用data.frame最robust
  
  for (i in id){
    temp <- read.csv(dir[[i]],as.is = T,header = T)
    pollutant_temp <- rbind(pollutant_temp,temp) #允许长度不一的情况
  }
  
  return(mean(pollutant_temp[,pollutant],na.rm = T))
}
#之前生成的pollutant_temp是一个332 obs of 1461 variable的df,求均值
#直接用unlist，会出现补齐的情况，list中元素个数是obs数*最长的obs中元素数，不行。

#保留dataframe格式很关键，在rbind处，如果就只挑选某个污染物，后面计算mean会很麻烦

# 不建议：    pollutant_temp <- rbind(pollutant_temp,temp[[pollutant]]) 这样不再是dataframe了！
