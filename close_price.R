setwd("C:\\Users\\Jishu\\Desktop\\financial analysis\\nasdaq_4000")
load("close.Rdata")

date=as.Date(close_price$date)
#x=factor(format(date,'%Y'))
#close_price$date=x
#close prices
aapl=close_price$aapl_close
amd=close_price$amd_close
amzn=close_price$amzn_close
atvi=close_price$atvi_close
intc=close_price$intc_close
msft=close_price$msft_close

#close plottings
plot(date,aapl,type="l",col="red",xlab="year",ylab="price",main="close_price_AAPL")
plot(date,amd,type="l",col="blue",xlab="year",ylab="price",main="close_price_AMD")
plot(date,amzn,type="l",col="green",xlab="year",ylab="price",main="close_price_AMZN")
plot(date,atvi,type="l",col="yellow",xlab="year",ylab="price",main="close_price_ATVI")
plot(date,intc,type="l",col="black",xlab="year",ylab="price",main="close_price_INTC")
plot(date,msft,type="l",col="orange",xlab="year",ylab="price",main="close_price_MSFT")


####log returns of the closing prices###
date=as.Date(close_price$date)

aapl=close_price$aapl_close
amd=close_price$amd_close
amzn=close_price$amzn_close
atvi=close_price$atvi_close
intc=close_price$intc_close
msft=close_price$msft_close


######aapl#####

df_aapl_close= cbind.data.frame(date,aapl)

x = c()
loop = 1:nrow(df_aapl_close)
for(i in loop)
{
  x[i] = (log(df_aapl_close$aapl[i])-log(df_aapl_close$aapl[i+1]))
}

df_aapl_close = cbind(df_aapl_close,x)
df_aapl_close[is.na(df_aapl_close)]=0

names(df_aapl_close)[3]= "aapl_close_return"

####amd####
df_amd_close= cbind.data.frame(date,amd)

x = c()
loop = 1:nrow(df_amd_close)
for(i in loop)
{
  x[i] = (log(df_amd_close$amd[i])-log(df_amd_close$amd[i+1]))
}

df_amd_close = cbind(df_amd_close,x)
df_amd_close[is.na(df_amd_close)]=0

names(df_amd_close)[3]= "amd_close_return"


#####amzn######
df_amzn_close= cbind.data.frame(date,amzn)

x = c()
loop = 1:nrow(df_amzn_close)
for(i in loop)
{
  x[i] = (log(df_amzn_close$amzn[i])-log(df_amzn_close$amzn[i+1]))
}

df_amzn_close = cbind(df_amzn_close,x)
df_amzn_close[is.na(df_amzn_close)]=0

names(df_amzn_close)[3]= "amzn_close_return"


#####atvi#####
df_atvi_close= cbind.data.frame(date,atvi)

x = c()
loop = 1:nrow(df_atvi_close)
for(i in loop)
{
  x[i] = (log(df_atvi_close$atvi[i])-log(df_atvi_close$atvi[i+1]))
}

df_atvi_close = cbind(df_atvi_close,x)
df_atvi_close[is.na(df_atvi_close)]=0

names(df_atvi_close)[3]= "atvi_close_return"


########## intc ######

df_intc_close= cbind.data.frame(date,intc)

x = c()
loop = 1:nrow(df_intc_close)
for(i in loop)
{
  x[i] = (log(df_intc_close$intc[i])-log(df_intc_close$intc[i+1]))
}

df_intc_close = cbind(df_intc_close,x)
df_intc_close[is.na(df_intc_close)]=0

names(df_intc_close)[3]= "intc_close_return"

#####msft####
df_msft_close= cbind.data.frame(date,msft)

x = c()
loop = 1:nrow(df_msft_close)
for(i in loop)
{
  x[i] = (log(df_msft_close$msft[i])-log(df_msft_close$msft[i+1]))
}

df_msft_close = cbind(df_msft_close,x)
df_msft_close[is.na(df_msft_close)]=0

names(df_msft_close)[3]= "msft_close_return"


######## data frame containing the log return prices for all stocks ####

log_ret_close=cbind.data.frame(df_aapl_close$date,df_aapl_close$aapl_close_return,
                               df_amd_close$amd_close_return,df_amzn_close$amzn_close_return,
                               df_atvi_close$atvi_close_return,df_intc_close$intc_close_return,
                               df_msft_close$msft_close_return)


names(log_ret_close)[1]="dates"
names(log_ret_close)[2]="aapl_close_return"
names(log_ret_close)[3]="amd_close_return"
names(log_ret_close)[4]="amzn_close_return"
names(log_ret_close)[5]="atvi_close_return"
names(log_ret_close)[6]="intc_close_return"
names(log_ret_close)[7]="msft_close_return"


save(log_ret_close,file="C:\\Users\\Jishu\\Desktop\\financial analysis\\log_ret_close.RData")
#####correlation test####
correlation_aapl_msft=cor(log_ret_close$aapl_close_return,log_ret_close$msft_close_return)
print(correlation_aapl_msft)
