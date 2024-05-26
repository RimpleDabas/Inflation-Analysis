-- Create view so that we do not have to query again and again for same information

CREATE VIEW CombinedData 
AS
SELECT d.Year,d.Month,l.Location,c.category,p.Products_Name,d.VALUE,d.Quantity
 FROM dbo.dataset d
 JOIN dbo.category c ON d.category_id=c.category_id  
 JOIN dbo.Locations l ON d.Location_id = l.Location_id
 JOIN dbo.Products p  ON d.Products_id = p.Products_id;


SELECT * FROM CombinedData;