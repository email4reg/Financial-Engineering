#read data
data = read.csv("C:\\Users\\Jishu\\Desktop\\financial analysis\\may_17\\manual_NASDAQ\\goog.csv",header=T)
#dimension of the data
n = dim(data)[1]
data= data[n:1,]# reverses the sequence of data

#install.packages("quantmod")
#library(quantmod)

#getSymbols(c("YHOO","AAPL","CSCO","IBM"))
#getSymbols('MSFT')

setwd("C:\\Users\\Jishu\\Desktop\\financial analysis\\may_17\\manual_NASDAQ\\")
temp = list.files(pattern="*.csv")
for (i in 1:length(temp)) assign(temp[i], read.csv(temp[i]))


mydate = aapl.csv$ï..Date
mydate = as.Date(mydate, format = "%d-%B-%Y") #changes format 16-Mar-17 to 0017-03-16
mydate=format(mydate, "20%y-%m-%d") #0017-03-16 to 2017-03-16
aapl.csv$ï..Date=mydate

date_conv=function(date)
{
  mydate = date
  mydate = as.Date(mydate, format = "%d-%B-%Y") #changes format 16-Mar-17 to 0017-03-16
  new_date=format(mydate, "20%y-%m-%d") #0017-03-16 to 2017-03-16
  return(new_date)
}

date_conv(amd.csv$ï..Date)

temp2 = c(aapl.csv,amd.csv,)



#closing price for first 100
aapl= as.matrix(aapl.csv[1:100,c(1,5)])
amd= as.matrix(amd.csv[1:100,c(1,5)])
amzn= as.matrix(amzn.csv[1:100,c(1,5)])
atvi=as.matrix(atvi.csv[1:100,c(1,5)])
fb= as.matrix(fb.csv[1:100,c(1,5)])
goog= as.matrix(goog.csv[1:100,c(1,5)])
googl= as.matrix(googl.csv[1:100,c(1,5)])
intc= as.matrix(intc.csv[1:100,c(1,5)])
msft= as.matrix(msft.csv[1:100,c(1,5)])
tsla= as.matrix(tsla.csv[1:100,c(1,5)])

stkdata = cbind(aapl,amd,amzn,atvi,fb,goog,googl,intc,msft,tsla)
dim(stkdata)
