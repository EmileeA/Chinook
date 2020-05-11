-- 18.) `sales_agent_total_sales.sql`: 
-- Provide a query that shows total sales made by each sales agent.

SELECT *
FROM Employee

SELECT *
FROM Invoice

SELECT *
FROM InvoiceLine

SELECT *
FROM Customer



SELECT 
	SUM(i.Total) AS 'TotalSales',
	e.EmployeeId,
	e.Title,
	e.LastName,
	e.FirstName
FROM Employee e
	JOIN Customer c
		ON c.SupportRepId = e.EmployeeId
	JOIN Invoice i
		ON i.CustomerId = c.CustomerId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId, e.Title, e.LastName, e.FirstName