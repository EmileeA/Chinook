-- 24.) top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

--SELECT *
--FROM Track

--SELECT *
--FROM Invoice

--SELECT *
--FROM InvoiceLine


SELECT TOP(1) WITH ties COUNT(InvoiceLine.InvoiceLineId) AS purchaseCount, Track.[Name]
FROM InvoiceLine
	JOIN Track
		ON InvoiceLine.TrackId = Track.TrackId
	JOIN Invoice
		ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE Invoice.InvoiceDate between '2013-01-01' and '2013-12-31'
GROUP BY Track.[Name]
ORDER BY COUNT(*) DESC