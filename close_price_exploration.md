# Close Price  

Exploring the closing price,according to investopedia - closing price is the final price at which a stock is traded on a given trading day. The closing price represents the most up-to-date valuation of a stock until trading commences again on the next trading day.  

Lets load close data for data frame length 4000.  

```
setwd("C:\\Users\\Jishu\\Desktop\\financial analysis\\nasdaq_4000")
load("close.Rdata")
```  

![alt text](https://github.com/jishu1989/Financial-Analysis/blob/master/screenshots/close.JPG)  

Below plots shows fluctuation of closing prices for individual stocks.  

![alt text](https://github.com/jishu1989/Financial-Analysis/blob/master/screenshots/close_price_AAPL.JPG)  

![alt text](https://github.com/jishu1989/Financial-Analysis/blob/master/screenshots/close_price_AMD.JPG)  

![alt text](https://github.com/jishu1989/Financial-Analysis/blob/master/screenshots/close_price_AMZN.JPG)  

![alt text](https://github.com/jishu1989/Financial-Analysis/blob/master/screenshots/close_price_ATVI.JPG)  

![alt text](https://github.com/jishu1989/Financial-Analysis/blob/master/screenshots/close_price_INTC.JPG)  

![alt text](https://github.com/jishu1989/Financial-Analysis/blob/master/screenshots/close_price_MSFT.JPG)  

## Calculating Log-Returns :  

We calculate the log returns firstly taking the log of the close price and then finding the  difference of row 2 and row1 , and output the return price in the adjacent field,*close return*.  

```
x[i] = (log(df_aapl_close$aapl[i])-log(df_aapl_close$aapl[i+1]))
```

Now we have new dataframe that consists of *date,close_price,close_return_price* .  

![alt text](https://github.com/jishu1989/Financial-Analysis/blob/master/screenshots/aapl_close_ret.JPG)  




