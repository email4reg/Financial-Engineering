# Financial-Analysis  
  
  **Source**: stocks from google finance : https://www.google.com/finance  
  
  **Data**: Historical prices from NASDAQ and NYSE for last 10 years. Which includes variables : *Open,High,Low,Close,Volume*.  
            10 stock sources from NASDAQ - AAPL(Apple), AMD, AMZN(Amazon),ATVI,FB(Facebook),GOOG,GOOGL(Google),INTC(Intel),  
            MSFT(Microsoft),TSLA(Tesla).  
            10 stock sources from NYSE - ABB, AFG, ALK, BAC, C, GCH, GE, IBM, JPM(JP Morgan), LVS, T.  
            
            ![alt text]() //nasdaq_stock_sources
   
  **Methods** :Preprocessing the variables of the datasets. The datasets are stock sources which are loaded into the R enviroment from csv format.  
  * Date: Originally date format in the dataset is *16-Mar-17*,and its data type is factor, which is converted to date type using ```as.date()``` to 2017-03-16. We write a function to transform date column for all the sources.  
  
  ![alt text]() //date_change  
  
  * Columns: Here we are working with 10 stock sources from NASDAQ, each stock source dataset consists of 5 columns *Date,Open,High,Low,Close,Volume*. Below is a descriptive view of the dataframe of one of the sources.  
  
  ![alt text]() //desc_data  
  ![alt text]() // data_tab  
  
Considering sources which has longest historical price range, based on their number of rows we select the sources having 4000 rows. We create a datasets *Open,High,Low,Close* . For instance Open dataset consists of open prices for all the stock sources having 4000 rows, so on for Close, High and Low.
  
  
  
  
            
            
 


