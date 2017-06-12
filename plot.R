setwd("C:\\Users\\Jishu\\Desktop\\financial analysis\\nasdaq_4000")
load("open.Rdata")
load("close.Rdata")
load("low.Rdata")
load("high.Rdata")


#####close#####
date=as.Date(close_price$date)
#x=factor(format(date,'%Y'))
#close_price$date=x
aapl=close_price$aapl_close
amd=close_price$amd_close
amzn=close_price$amzn_close
atvi=close_price$atvi_close
intc=close_price$intc_close
msft=close_price$msft_close

plot(date,aapl,type="l",col="red",xlab="year",ylab="price",main="close_price")
lines(date,amd,col="blue",xlab="year",ylab="price")
lines(date,amzn,col="green",xlab="year",ylab="price")
lines(date,atvi,col="yellow",xlab="year",ylab="price")
lines(date,intc,col="black",xlab="year",ylab="price")
lines(date,msft,col="orange",xlab="year",ylab="price")

legend("topleft", inset=.005, title="List of Stocks",
       legend = c("AAPL","AMD","AMZN","ATVI","INTC","MSFT"),
       lwd(2.5,2.5),
       c("red","blue","green","yellow","black","orange")
       , horiz =FALSE,cex = 0.75)


#####open#####
date=as.Date(open_price$date)
#x=factor(format(date,'%Y'))
#open_price$date=x
aapl=open_price$aapl_open
amd=open_price$amd_open
amzn=open_price$amzn_open
atvi=open_price$atvi_open
intc=open_price$intc_open
msft=open_price$msft_open

plot(date,aapl,type="l",col="red",xlab="year",ylab="price",main="open_price")
lines(date,amd,col="blue",xlab="year",ylab="price")
lines(date,amzn,col="green",xlab="year",ylab="price")
lines(date,atvi,col="yellow",xlab="year",ylab="price")
lines(date,intc,col="black",xlab="year",ylab="price")
lines(date,msft,col="orange",xlab="year",ylab="price")

legend("topleft", inset=.005, title="List of Stocks",
       legend = c("AAPL","AMD","AMZN","ATVI","INTC","MSFT"),
       lwd(2.5,2.5),
       c("red","blue","green","yellow","black","orange")
       , horiz =FALSE,cex = 0.75)

#######low#######
date=as.Date(low_price$date)
#x=factor(format(date,'%Y'))
#low_price$date=x
aapl=low_price$aapl_low
amd=low_price$amd_low
amzn=low_price$amzn_low
atvi=low_price$atvi_low
intc=low_price$intc_low
msft=low_price$msft_low

plot(date,aapl,type="l",col="red",xlab="year",ylab="price",main="low_price")
lines(date,amd,col="blue",xlab="year",ylab="price")
lines(date,amzn,col="green",xlab="year",ylab="price")
lines(date,atvi,col="yellow",xlab="year",ylab="price")
lines(date,intc,col="black",xlab="year",ylab="price")
lines(date,msft,col="orange",xlab="year",ylab="price")

legend("topleft", inset=.005, title="List of Stocks",
       legend = c("AAPL","AMD","AMZN","ATVI","INTC","MSFT"),
       lwd(2.5,2.5),
       c("red","blue","green","yellow","black","orange")
       , horiz =FALSE,cex = 0.75)

#######high##########
date=as.Date(high_price$date)
#x=factor(format(date,'%Y'))
#high_price$date=x
aapl=high_price$aapl_high
amd=high_price$amd_high
amzn=high_price$amzn_high
atvi=high_price$atvi_high
intc=high_price$intc_high
msft=high_price$msft_high

plot(date,aapl,type="l",col="red",xlab="year",ylab="price",main="high_price")
lines(date,amd,col="blue",xlab="year",ylab="price")
lines(date,amzn,col="green",xlab="year",ylab="price")
lines(date,atvi,col="yellow",xlab="year",ylab="price")
lines(date,intc,col="black",xlab="year",ylab="price")
lines(date,msft,col="orange",xlab="year",ylab="price")

legend("topleft", inset=.005, title="List of Stocks",
       legend = c("AAPL","AMD","AMZN","ATVI","INTC","MSFT"),
       lwd(2.5,2.5),
       c("red","blue","green","yellow","black","orange")
       , horiz =FALSE,cex = 0.75)


