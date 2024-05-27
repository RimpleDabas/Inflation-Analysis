USE [Inflation ]
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

--We can also do this by stored procedures



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





-- we can  now get mom changes for the products
SELECT Year, Month, Month_Number,

    FORMAT((AVG(VALUE)-LAG(AVG(VALUE)) OVER (Order By YEAR,Month_Number))/LAG(AVG(VALUE)) OVER (Order By YEAR,Month_Number),'P') AS MOM_PercentChange

FROM Datasets

WHERE Products_Name = 'Salmon' AND Year = 2023

GROUP BY Year,Month,Month_Number,Products_Name
ORDER BY Month_Number;


-- Query to retreive the most expensive products province and yearwise
SELECT TOP 10 Year,Location,Products_Name ,ROUND(AVG(VALUE),2) AS Average_price

FROM CombinedData

WHERE Location = 'Ontario' AND Year = 2023 

GROUP BY Year, Location,Products_Name

ORDER BY Average_price DESC

--Query to retrieve least expensive

SELECT TOP 10 Year,Location,Products_Name ,ROUND(AVG(VALUE),2) AS Average_price

FROM CombinedData

WHERE Location = 'Ontario' AND Year = 2023 

GROUP BY Year, Location,Products_Name

ORDER BY Average_price


--Using roll up to get average sacross different combinations

SELECT Year,Location,Category, Products_Name, ROUND(AVG(VALUE),2) AS Price 
FROM CombinedData
Group BY ROLLUP(Year,Location,Category,Products_Name)
HAVING Year = 2020;

-- Using Rank window function to get deeeper insights without partition by Results are based on all rows

SELECT Location,Month,Products_Name, VALUE,
RANK() OVER ( ORDER BY VALUE DESC) AS Rank
FROM
CombinedData
WHERE Year = 2023 ;


WITH  Expensive AS
    (
    SELECT Location,Month,Products_Name, AVG(VALUE) AS Price,
    RANK() OVER ( PARTITION BY LOCATION ORDER BY AVG(VALUE) DESC) AS Rank
    FROM
    CombinedData
    WHERE Year = 2023 
    GROUP BY Location,Month,Products_Name
    )
SELECT*
FROM Expensive
WHERE Rank = 1;