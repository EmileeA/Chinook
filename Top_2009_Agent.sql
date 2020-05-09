-- 20.) top_agent.sql: Which sales agent made the most in sales over all?
-- Same code as exercise 19, just took out where clause.

SELECT TOP(1) e.EmployeeId, 
	CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeFullName,
	SUM(i.Total) AS TotalSales
FROM Invoice i
	JOIN Customer c
		ON c.CustomerId = i.CustomerId
	JOIN Employee e
		ON c.SupportRepId = e.EmployeeId
--WHERE InvoiceDate between '2009-01-01' and '2009-12-31'
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY SUM(i.Total) DESC
