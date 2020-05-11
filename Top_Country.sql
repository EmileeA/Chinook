-- 23.) top_country.sql: Which country's customers spent the most?

SELECT TOP(1) i.BillingCountry,
	SUM(i.Total) AS TotalSales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY SUM(i.Total) DESC

