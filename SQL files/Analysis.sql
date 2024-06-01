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



SELECT Year, Location, category, ROUND(AVG(VALUE), 2) AS Average_price
FROM   CombinedData
GROUP BY Year, Location, category
ORDER BY Average_price DESC


-- Narrow down the above result  based on category and Year



SELECT Year, Location, category, ROUND(AVG(VALUE), 2) AS Average_price
FROM   CombinedData
WHERE (category = 'Meat & Seafood') AND (Year = 2023)
GROUP BY Year, Location, category
ORDER BY Average_price DESC






-- We can do the same to get the most expensive categories in Provinces

SELECT Year, Location, category, ROUND(AVG(VALUE), 2) AS Average_price
FROM   CombinedData
WHERE (Location = 'Ontario') AND (Year = 2023)
GROUP BY Year, Location, category
ORDER BY Average_price DESC


-- when waas this category the most expensive one duringf whole year

SELECT Year, Month, Location, category, ROUND(AVG(VALUE), 2) AS Average_price
FROM   CombinedData
WHERE (Location = 'Ontario') AND (Year = 2023) AND (category = 'Meat & Seafood')
GROUP BY Year, Month, Location, category
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
SELECT TOP (10) Year, Location, Products_Name, ROUND(AVG(VALUE), 2) AS Average_price
FROM   CombinedData
WHERE (Location = 'Ontario') AND (Year = 2023)
GROUP BY Year, Location, Products_Name
ORDER BY Average_price DESC


--Query to retrieve least expensive

SELECT TOP (10) Year, Location, Products_Name, ROUND(AVG(VALUE), 2) AS Average_price
FROM   CombinedData
WHERE (Location = 'Ontario') AND (Year = 2023)
GROUP BY Year, Location, Products_Name
ORDER BY Average_price

--Using roll up to get average sacross different combinations

SELECT Year,Location,Category, Products_Name, ROUND(AVG(VALUE),2) AS Price 
FROM CombinedData
Group BY ROLLUP(Year,Location,Category,Products_Name)
HAVING Year = 2020;

-- Using Rank window function to get deeeper insights without partition by Results are based on all rows

SELECT Location,Month,Products_Name, ROUND(VALUE,2) AS Price,
RANK() OVER ( ORDER BY VALUE DESC) AS Rank
FROM
CombinedData
WHERE Year = 2023 ;


WITH  Expensive AS
    (
    SELECT Location,Products_Name, ROUND(AVG(VALUE),2) AS Price,
    RANK() OVER ( PARTITION BY LOCATION ORDER BY AVG(VALUE) DESC) AS Rank
    FROM
    CombinedData
    WHERE Year = 2023 
    GROUP BY Location,Products_Name
    )
SELECT*
FROM Expensive
WHERE Rank = 3;





-- Geting Provinces where particular product is expensive 
WITH New AS
    (
    SELECT Location,Month,Products_Name, ROUND(VALUE,2) AS Price,
	RANK() OVER ( PARTITION BY Products_Name ORDER BY VALUE DESC) AS Rank
	FROM
	CombinedData
	WHERE Year = 2021
	)

SELECT Location,Month,Products_Name
FROM New
WHERE Rank Between 1 AND 3 AND Products_Name = 'Canned pear'
GROUP BY Location,Month,Products_Name;

-- Getting same information from stored procedure
EXEC GetTopRankedProducts @Year = 2023, @ProductName = 'Apples';


--Pivot 
SELECT Location,category,[2019],[2020],[2021],[2022],[2023]
FROM (SELECT Location,category,VALUE ,Year FROM CombinedData) AS D
PIVOT(AVG(VALUE)  FOR Year IN ([2019],[2020],[2021],[2022],[2023])) AS pvt;


SELECT Year, Products_Name, ROUND(AVG(VALUE),2)AS Present

FROM CombinedData

WHERE Products_Name = 'Salmon'

GROUP BY Year,Products_Name
