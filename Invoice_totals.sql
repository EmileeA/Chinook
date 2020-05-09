-- 7.) `invoice_totals.sql`: Provide a query that shows the Invoice Total, Customer name, 
-- Country and Sale Agent name for all invoices and customers.

--SELECT *
--FROM Invoice

--SELECT *
--FROM Customer

--SELECT *
--FROM Employee

SELECT 
	i.Total AS InvoiceTotal,
	CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
	i.BillingCountry,
	CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName
FROM Invoice i
	JOIN Customer c
		ON c.CustomerId = i.CustomerId
	JOIN Employee e
		ON e.EmployeeId = c.CustomerId
WHERE Title = 'Sales Support Agent'
ORDER BY CustomerName