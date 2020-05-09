-- 27.) top_media_type.sqlSELECT *

FROM MediaType

SELECT *
FROM InvoiceLine



SELECT TOP(1) mt.Name,
	SUM(il.UnitPrice) AS TotalSales,
	COUNT(mt.Name) AS AmountOfPurchases
FROM InvoiceLine il
	JOIN Track t
		ON il.TrackId = t.TrackId
	JOIN MediaType mt
		ON t.MediaTypeId = mt.MediaTypeId	
GROUP BY mt.Name
ORDER BY COUNT(mt.Name) DESC: Provide a query that shows the most purchased Media Type.