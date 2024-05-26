SELECT * FROM CombinedData;

-- Getting YOY change for particular product across Canada



SELECT Year, Products_Name, ROUND(AVG(VALUE),2)AS Present,

    LAG(ROUND(AVG(VALUE),2)) OVER (Order By YEAR) AS Previous,

    FORMAT((AVG(VALUE)-LAG(AVG(VALUE)) OVER (Order By YEAR))/LAG(AVG(VALUE)) OVER (Order By YEAR),'P') AS YOY_PercentChange

FROM CombinedData

WHERE Products_Name = 'Salmon'

GROUP BY Year,Products_Name

-- Get Average prices across all provinces and years



SELECT Year, Location ,Category,ROUND(AVG(VALUE),2) AS Average_price

FROM CombinedData

GROUP BY Year, Location,category

ORDER BY Average_price DESC



-- Narrow down the above result  based on category and Year



SELECT Year, Location ,Category,ROUND(AVG(VALUE),2) AS Average_price

FROM CombinedData

WHERE Category = 'Meat & Seafood' AND Year = 2023

GROUP BY Year, Location,category

ORDER BY Average_price DESC







-- We can do the same to get the most expensive categories in Provinces

SELECT Year, Location ,Category,ROUND(AVG(VALUE),2) AS Average_price

FROM CombinedData

WHERE Location = 'Ontario' AND Year = 2023

GROUP BY Year, Location,category

ORDER BY Average_price DESC

-- 

SELECT Year, Month,Location,Category ,ROUND(AVG(VALUE),2) AS Average_price

FROM CombinedData

WHERE Location = 'Ontario' AND Year = 2023 AND category = 'Meat & Seafood'

GROUP BY Year,MONTH, Location,category

ORDER BY Average_price DESC



--Declaring variables to make it dyanamic and filter values based on the inputs

--We can aslos do this by stored procedures



DECLARE @Location NVARCHAR(50) = 'Ontario';

DECLARE @Year INT = 2023;

DECLARE @Category NVARCHAR(50) = 'Meat & Seafood';



SELECT

    Year,

    Month,

    Location,

    Category,

    ROUND(AVG(VALUE), 2) AS Average_price

FROM

    CombinedData

WHERE

    Location = @Location

    AND Year = @Year

    AND category = @Category

GROUP BY

    Year,

    MONTH,

    Location,

    category

ORDER BY

    Average_price DESC;



