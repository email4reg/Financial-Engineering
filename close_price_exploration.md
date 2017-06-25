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

We perform the same function for other stocks and then create a dataset which consists of log return prices for all stocks.

![alt text](https://github.com/jishu1989/Financial-Analysis/blob/master/screenshots/log_ret_close.JPG)  


**Correlation Log Returns :**

We can calculate correlation between the log return prices.  

```
> correlation_aapl_msft=cor(log_ret_close$aapl_close_return,log_ret_close$msft_close_return)
> print(correlation_aapl_msft)
[1] 0.4340126
```  
## Merging the close price :  

We combine the closing price into a single dataframe.Since the length of the stocks are variable its trivial to put stocks of variable length in a single dataframe.

```
[1] "aapl.csv" "4000"    
[1] "amd.csv" "4000"   
[1] "amzn.csv" "4000"    
[1] "atvi.csv" "4000"    
[1] "fb.csv" "1215"  
[1] "goog.csv" "3165"    
[1] "googl.csv" "3165"     
[1] "intc.csv" "4000"    
[1] "msft.csv" "4000"    
[1] "tsla.csv" "1691"    
```  
For instance sources like facebook,tesla and google have different length, so to fit them in a dataframe we need to merge them by dates. Dates, excluding all dates for which all stocks do not have data. The merge function is a intersect and union join.












