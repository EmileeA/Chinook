-- 19.) `top_2009_agent.sql`: Which sales agent made the most in sales in 2009? 
-- HINT: [TOP](https://docs.microsoft.com/en-us/sql/t-sql/queries/top-transact-sql)
-- Need to join the Invoice, Customer, and Employee table.
-- Use TOP to get the first row. Used where clause to grab the sales only in 2009. Used Group By to display the following items.
-- Used Order By to grab the descending order of the total sales.
-- If I replace 1 with 3 then I can see all SA and their total sales.

SELECT *
FROM Invoice

SELECT *
FROM Customer

SELECT *
FROM Employee

SELECT TOP(1) e.EmployeeId, 
	CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeFullName,
	SUM(i.Total) AS TotalSales
FROM Invoice i
	JOIN Customer c
		ON c.CustomerId = i.CustomerId
	JOIN Employee e
		ON c.SupportRepId = e.EmployeeId
WHERE InvoiceDate between '2009-01-01' and '2009-12-31'
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY SUM(i.Total) DESC
