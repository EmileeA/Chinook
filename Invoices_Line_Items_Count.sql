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