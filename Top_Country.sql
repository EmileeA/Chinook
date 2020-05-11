<<<<<<< HEAD
-- 23.) top_country.sql: Which country's customers spent the most?

SELECT TOP(1) i.BillingCountry,
	SUM(i.Total) AS TotalSales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY SUM(i.Total) DESC

=======
--12:30pm
CREATE LOGIN [MicrosoftAccount\{Account Name Goes Here}] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [MicrosoftAccount\{Account Name Goes Here}]
GO
>>>>>>> fc427ce50f12a2920c85458851e9f032a3f54fa7
