library(quantmod)

getSymbols(c("AAPL","MSFT","GOOG"),from = "2018-01-01",to = "2019-01-01",env = parent.frame())

#df_volume=cbind(Vo(AAPL),Vo(MSFT),Vo(GOOG))
df_close=cbind(Cl(AAPL),Cl(MSFT),Cl(GOOG))

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
