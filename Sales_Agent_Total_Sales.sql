-- 21.) sales_agent_customer_count.sql: Provide a query that 
-- shows the count of customers assigned to each sales agent.


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