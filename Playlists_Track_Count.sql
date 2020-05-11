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