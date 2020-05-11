-- 16. `tracks_no_id.sql`: Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.


--SELECT *
--FROM Track 

--SELECT *
--FROM MediaType

--SELECT * 
--FROM Genre

--SELECT *
--FROM Album

SELECT 
	t.Name AS NameOfTrack,
	a.Title AS AlbumName,
	m.Name AS MediaType,
	g.Name AS Genre
FROM Track t
	JOIN MediaType m
		ON t.MediaTypeId = m.MediaTypeId
	JOIN GENRE g
		ON t.GenreId = g.GenreId
	JOIN Album a
		ON t.AlbumId = a.AlbumId
ORDER BY a.Title