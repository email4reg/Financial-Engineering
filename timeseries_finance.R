library(quantmod)

getSymbols(c("AAPL","MSFT","GOOG"),from = "2018-01-01",to = "2019-01-01",return.class = 'data.frame',env = parent.frame())

#df_volume=cbind(Vo(AAPL),Vo(MSFT),Vo(GOOG))
df_close=as.data.frame(cbind(Cl(AAPL),Cl(MSFT),Cl(GOOG))) 
colnames(df_close)[1]='AAPL'
colnames(df_close)[2]='MSFT'
colnames(df_close)[3]='GOOG'

df_log=as.data.frame()
j=ncol(df_close)
for(k in 1:j)
{
  x = c()
  loop = 1:nrow(df_close[,k])
  for(i in loop)
  {
    x[i] = (log(df_close[i,k])-log(df_close[i+1,k]))
  }
  df_log=cbind(df_log,x[i])
}

df_log=data.frame()
x = c()
loop = 1:nrow(df_close[,1])
for(i in loop)
{
  x[i] = (log(df_close[i,1])-log(df_close[i+1,1]))
}
df_log=cbind(df_log,x)
