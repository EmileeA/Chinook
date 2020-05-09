-- 9.) total_sales_year.sql: What are the respective total sales for each of those years?

-- The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

--SELECT *
--FROM INVOICE

--SELECT 
--SUM(Total) AS '2009 Total', OR
--SUM(Total) AS '2010 Total', OR
--	SUM(Total) AS '2011 Total'
--FROM Invoice
--WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00.000' AND '2009-12-31 00:00:00.000'
--WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00.000' AND '2011-12-31 00:00:00.000'

SELECT
	DATEPART(year, InvoiceDate) AS [Year],
	SUM(Total) AS TotalSales
FROM Invoice
WHERE InvoiceDate LIKE '%2009%'
OR InvoiceDate LIKE '%2011%'
GROUP BY DATEPART(year, InvoiceDate)