<<<<<<< HEAD
-- 15.) `playlists_track_count.sql`: Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resultant table.

-- Need to JOIN PlaylistTrack & Playlist

SELECT *
FROM PlaylistTrack

SELECT *
FROM Playlist


SELECT 
	COUNT (pt.TrackId) AS NumberOfTracks,
	p.Name
FROM PlaylistTrack pt
	JOIN Playlist p
		ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name
=======
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
>>>>>>> fc427ce50f12a2920c85458851e9f032a3f54fa7
