-- Create view so that we do not have to query again and again for same information

CREATE VIEW CombinedData 
AS
SELECT d.Year,d.Month,l.Location,c.category,p.Products_Name,d.VALUE,d.Quantity
 FROM dbo.dataset d
 JOIN dbo.category c ON d.category_id=c.category_id  
 JOIN dbo.Locations l ON d.Location_id = l.Location_id
 JOIN dbo.Products p  ON d.Products_id = p.Products_id;


SELECT * FROM CombinedData;

-- There was a need to create new column based on the month number to order by month based on this column.
-- Beacuse month is stored as string  CAST, CONVERT does not work here so there is a need to use case when

-- This column is needed to get mom changes

CREATE  VIEW Datasets
AS
    SELECT *,
        CASE 
    WHEN Month = 'Jan' THEN 01
    WHEN Month = 'Feb' THEN 02
    WHEN Month = 'Mar' THEN 03
    WHEN Month = 'Apr' THEN 04
    WHEN Month = 'May' THEN 05
    WHEN Month = 'Jun' THEN 06
    WHEN Month = 'Jul' THEN 07
    WHEN Month = 'Aug' THEN 08
    WHEN Month = 'Sep' THEN 09
    WHEN Month = 'Oct' THEN 10
    WHEN Month = 'Nov' THEN 11
    ELSE 12
    END AS Month_Number
    FROM CombinedData;
