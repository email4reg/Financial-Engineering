library(quantmod)
library(ggplot2)
library(dplyr)


getSymbols("GOOG",from = "2012-01-01",to = Sys.Date(),return.class = 'data.frame',env = parent.frame())

GOOG<- tibble::rownames_to_column(GOOG, "Date")

GOOG$Date=as.Date(as.character(GOOG$Date))

ggplot(data=GOOG,mapping = aes(x = Date, y = GOOG.Close))+geom_line()

#lag.plot(GOOG$GOOG.Close,lags = 5)

cum_close=cumsum(GOOG$GOOG.Close)
GOOG=cbind(GOOG,cum_close)

ggplot(data=GOOG,mapping = aes(x = Date, y = cum_close))+geom_line()
