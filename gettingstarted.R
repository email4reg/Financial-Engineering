setwd("C:\\Users\\Jishu\\Desktop\\financial analysis\\may_17\\manual_NASDAQ\\")
temp = list.files(pattern="*.csv")
for (i in 1:length(temp)) assign(temp[i], read.csv(temp[i]))

#function for converting date#

date_conv=function(date)
{
  mydate = date
  mydate = as.Date(mydate, format = "%d-%B-%Y") #changes format 16-Mar-17 to 0017-03-16
  new_date=format(mydate, "20%y-%m-%d") #0017-03-16 to 2017-03-16
  #return(new_date)
}

####date conversion for all csv files####
for (i in ls(pattern = '.csv') ) 
{
  df <- get(i)
  #dfNam <- paste('df', i, sep = '_')
  df[,1]=date_conv(df[,1])
  assign(i,df)
}


####open price for dataset with 4000 obs ####

open = data.frame(1:4000)
for (i in ls(pattern = '.csv') ) 
{
  df= get(i)
  
  if(nrow(df)==4000)
  {
    temp3=df[,2]
    open=cbind(open,temp3)
  }
}


open[,1]= aapl.csv$ï..Date

head_open=head(open)
save(head_open,file="C:\\Users\\Jishu\\Desktop\\financial analysis\\heade_open.RData")





