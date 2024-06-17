# Retail Analysis across Canada
The aim of this project is do analysis of retail prices on selected products from dataset  published by https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1810024501

# Steps and tools used
- Extraction and Transformation - Python
- Loading and Analysis - SQL Server  (SSMS)
- Reporting and Visualization SSRS,DAX and PowerBI

The dataset contains average monthly prices for products across Canadian provinces over the span of 7 years. 

### Extraction and transformation

- Python libraries numpy and pandas were utilized for this purpose.
- Unnecessary columns were removed,
-  changed datatypes,
-  removed duplicates,
- checked for nulls and finally created required tables.
 Related files can be referred [here](https://github.com/RimpleDabas/RetailsAnalysis/tree/main/Jupyter%20notebooks)

### Loading and Analysis
- Created database and tables
- Created view to join tables 
~~~ 
CREATE VIEW CombinedData 
AS
SELECT d.Year,d.Month,l.Location,c.category,p.Products_Name,d.VALUE,d.Quantity
 FROM dbo.dataset d
 JOIN dbo.category c ON d.category_id=c.category_id  
 JOIN dbo.Locations l ON d.Location_id = l.Location_id
 JOIN dbo.Products p  ON d.Products_id = p.Products_id;

SELECT * FROM CombinedData;
~~~
- Queried database to get insights. Here are few of them 
  - Get Average prices across all provinces and years
  - Most expensive category, products based on the province and year
  - When was particular product the most expensive
  - YoY and MoM changes for the category and product
  - Cheapest and the most expensive products yearwise
  - Summarised information using pivot 
  ~~~
   SELECT Location,category,[2019],[2020],[2021],[2022],[2023]
    FROM (SELECT Location,category,VALUE ,Year FROM CombinedData) AS D
    PIVOT(AVG(VALUE)  FOR Year IN ([2019],[2020],[2021],[2022],[2023])) AS pvt; 
    ~~~


 ## Visualization 
 - Used DAX to create measures and required columns
 - Created visualzations
 - Created dashboard
 ![image](https://github.com/RimpleDabas/RetailsAnalysis/blob/main/SQL%20files/Results%20from%20SQL/Dashboard.png)

## Few Insights
- Overall infant formula is the most expensive product in all regions.
- Over the last in Canada, Infant formula saw the largest percent increse of around 18%
- For the last year in Ontario, Olive oil saw the largets increase in prices at 5.75 per litre and overall increse of 58%
- Limes, lemons are amongst the cheapest products in all provinces
- Amongst categories fruits and vegetables is the most affordable option as it is the cheapest
- Although infant formula saw the most yearly increase, New Brunswick has the exception with Beef top cut siloin the largest increase of 37% .

## Recommendations
Some measures that the Government can take are 
-  **Implement Price Controls**: Establish temporary price ceilings on essential goods, such as infant formula and staple food items, to prevent excessive price hikes
- **Subsidies and Incentives**: Provide subsidies or tax incentives for local producers of essential goods to reduce production costs and stabilize prices
- **Investment in Agriculture**: Invest in agricultural infrastructure and technology to boost productivity and reduce dependence on imports, which can be susceptible to global price fluctuations
- **Regular Monitoring**: Increase monitoring of price changes and market conditions to quickly identify and address instances of price gouging
- **Price Transparency**: Increase price transparency through public awareness campaigns and online platforms that allow consumers to compare prices across retailers.
- **Enhance Logistics**: Improve supply chain logistics to reduce transportation costs and inefficiencies that contribute to higher prices.



