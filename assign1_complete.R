complete <- function(directory, id = 1:332) {
  directorydir <- directory
  a=list.files(directorydir)
  dir=paste("./",directory,"/",a,sep="") #注意/s前要加上"."，否则识别不出来 
  #paste用来Concatenate Strings
  data <-data.frame() #用data.frame最robust
  for (i in id) {
    dat <- read.csv(dir[[i]],as.is = T, 
                     header = T)
    nobs <- sum(complete.cases(dat)) #complete case的个数,即一个dat中非NA单元的总数
    data9 <- data.frame(id, nobs)  #！生成一个两列的dataframe！#
    data <- rbind(data,data9)      #按行把data9这个frame一个一个绑起来
    }
  return(data) 
  }

#使用> source("assignme2_complete.R") 即可导入该程序到global environment中