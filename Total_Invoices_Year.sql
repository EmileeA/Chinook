--#8 total_invoices_year.sql: How many Invoices were there in 2009 and 2011?
-- The COUNT() function returns the number of rows that matches a specified criteria.
-- Use Union to comine the result of two select statements 
	
--SELECT *
--FROM Invoice


SELECT COUNT(InvoiceId) as 'Invoices', YEAR(InvoiceDate) as 'Year'
FROM Invoice
WHERE YEAR(InvoiceDate) = '2009'
GROUP By YEAR(InvoiceDate) 
UNION ALL
SELECT COUNT(InvoiceId), YEAR(InvoiceDate) 
FROM Invoice
WHERE YEAR(InvoiceDate) = '2011'
GROUP By YEAR(InvoiceDate) 