-- 12.) `line_item_track.sql`: 
-- Provide a query that includes the purchased track name with each invoice line item.
-- The InvoiceLine table has InvoiceId and TrackId
-- The Track table has TrackId
-- Use JOIN to connect 

--SELECT *
--FROM InvoiceLine

--SELECT *
--FROM Track


SELECT
t.Name AS PurchasedTrackName, 
il.*
FROM InvoiceLine il
	JOIN Track t
		ON il.TrackId = t.TrackId
ORDER BY (t.Name)