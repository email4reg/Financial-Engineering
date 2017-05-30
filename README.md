# Financial-Analysis  
  
  **Source**: stocks from google finance : https://www.google.com/finance  
  
  **Data**: Historical prices from NASDAQ and NYSE for last 10 years. Which includes variables : *Open,High,Low,Close,Volume*.  
            10 stock sources from NASDAQ - AAPL(Apple), AMD, AMZN(Amazon),ATVI,FB(Facebook),GOOG,GOOGL(Google),INTC(Intel),  
            MSFT(Microsoft),TSLA(Tesla).  
            10 stock sources from NYSE - ABB, AFG, ALK, BAC, C, GCH, GE, IBM, JPM(JP Morgan), LVS, T.  
            
   
  **Methods** :Preprocessing the variables of the datasets. The datasets are stock sources which are loaded into the R enviroment from csv format.  
  * Date: Originally date format in the dataset is *16-Mar-17*,and its data type is factor, which is converted to date type using ```as.date()``` to 2017-03-16.
  
            
            
 


