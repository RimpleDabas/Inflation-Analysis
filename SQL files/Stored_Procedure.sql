

-- Create stores procedure
CREATE PROCEDURE GetTopRankedProducts
    @Year INT,
    @ProductName NVARCHAR(100)
AS
BEGIN
    WITH New AS (
        SELECT 
            Location,
            Month,
            Products_Name,
            ROUND(VALUE, 2) AS Price,
            RANK() OVER (PARTITION BY Products_Name ORDER BY VALUE DESC) AS Rank
        FROM
            CombinedData
        WHERE 
            Year = @Year
    )
    SELECT 
        Location,
        Month,
        Products_Name
    FROM 
        New
    WHERE 
        Rank BETWEEN 1 AND 3 
        AND Products_Name = @ProductName
    GROUP BY 
        Location, Month, Products_Name;
END;
GO
