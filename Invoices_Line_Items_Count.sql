<<<<<<< HEAD
-- 17.) `invoices_line_item_count.sql`: 
-- Provide a query that shows all Invoices but includes the # of invoice line items.
-- Relationship is between both tables and InvoiceId


SELECT *
FROM Invoice i

SELECT *
FROM InvoiceLine


SELECT
	i.InvoiceId,
	COUNT(il.InvoiceId) AS NumberOfLineItems
FROM Invoice i
	JOIN InvoiceLine il
		ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId
=======
-- 22.) sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

SELECT *
FROM Customer

SELECT *
FROM Employee


SELECT
	e.EmployeeId, 
	e.Title,
	Count(c.CustomerId) AS NumberOfCustomers
FROM Customer c
	JOIN Employee e
		ON e.EmployeeId = c.SupportRepId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId, E.Title
>>>>>>> fc427ce50f12a2920c85458851e9f032a3f54fa7
